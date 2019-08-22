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
            List<ConsultaViewModel> list;
            using (indicadoresDBEntities db = new indicadoresDBEntities()) {

                list = (from d in db.consulta
                        select new ConsultaViewModel
                        {
                            Id = d.id,
                            Nombre = d.nombre,
                            Conslta = d.consulta1
                        }).ToList(); 
            }
                return View(list);
        }

        public ActionResult consulta()
        {
            return View();
        }

        public ActionResult comentar(FormCollection form)
        {
            return View();
        }
        public ActionResult publicar(FormCollection form)
        {
            return View();
        }

    }
}