using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proyecto.Models;

namespace Proyecto.Controllers
{
    public class consultaController : Controller
    {
        // GET: consulta
        public ActionResult Index()
        {          
                return View();
        }

        public ActionResult consulta()
        {
            try
            {
                using (var db = new indicadoresDBEntities()) {
                    var data = from c in db.consulta
                               join r in db.respuesta on c.id equals r.consultaId
                               into result from finalResult in result.DefaultIfEmpty()
                               select new ConsultaViewModel()
                               {
                                   Id = c.id,
                                   Consulta = c.consulta1,
                                   Nombre = c.nombre,
                                   respuesta = finalResult.respuesta1,
                                   nombre = finalResult.nombre
                               };
                    return View(data.ToList());
                }
            }
            catch (Exception)
            {

                throw;
            }

            /*List<ConsultaViewModel> list;
            using (indicadoresDBEntities db = new indicadoresDBEntities())
            {
                
                list = (from d in db.consulta
                        select new ConsultaViewModel
                        {
                            Id = d.id,
                            Nombre = d.nombre,
                            Consulta = d.consulta1
                        }).ToList();
            }*/
            return View();
        }

        [HttpPost]
        public ActionResult responder(FormCollection form)
        {
            String nombre = form["nombre"];
            String id = form["id"];
            String respuesta = form["Comentario"];

            try
            {
                if (ModelState.IsValid)
                {
                    using (indicadoresDBEntities db = new indicadoresDBEntities())
                    {
                        var list = new respuesta();
                        list.nombre = nombre;
                        list.consultaId = Int32.Parse(id);
                        list.respuesta1 = respuesta;

                        db.respuesta.Add(list);
                        db.SaveChanges();
                    }
                }
                return Redirect("consulta/");
            }
            catch (Exception ex)
            {

                throw;
            }

            return View();
        }
        
        public ActionResult comentar(int? id) {

            return View();
        }
        public ActionResult publicar(FormCollection form)
        {
            String nombre = form["nombre"];
            String consulta = form["Comentario"];

            try
            {
                if (ModelState.IsValid)
                {
                    using (indicadoresDBEntities db = new indicadoresDBEntities())
                    {
                        var list = new consulta();
                        list.nombre = nombre;
                        list.consulta1 = consulta;

                        db.consulta.Add(list);
                        db.SaveChanges();
                    }
                }

                return Redirect("consulta/");
            }
            catch (Exception ex)
            {

                throw;
            }
            return View();
        }
    }
}