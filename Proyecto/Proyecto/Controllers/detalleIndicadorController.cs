using Proyecto.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Proyecto.Controllers
{
    public class detalleIndicadorController : Controller
    {
        indicadoresDBEntities db = new indicadoresDBEntities();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult detalleIndicador(FormCollection form)
        {
            getProvincia();
            
            return View();
        }

        public void getProvincia()
        {
            List<provincias> provincia = db.provincias.ToList();
            ViewBag.provincia = new SelectList(provincia, "id", "provincia");
        }

        public JsonResult getCanton(int id)
        {
            db.Configuration.ProxyCreationEnabled = false;
            List<cantones> canton = db.cantones.Where(x => x.id == x.idProvincia).ToList();
            return Json(canton, JsonRequestBehavior.AllowGet);
        }

        /*public JsonResult getDstrito(int idCanton)
        {
            db.Configuration.ProxyCreationEnabled = false;
            List<distritos> distritos = db.distritos.Where(x => x.idCanton == x.id).ToList();
            return Json(distritos, JsonRequestBehavior.AllowGet);
        }*/

        public ActionResult notificaciones(FormCollection form)
        {
            return View();
        }


    }
}