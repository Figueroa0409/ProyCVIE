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
        indicadoresDataBaseEntities db = new indicadoresDataBaseEntities();
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
            List<provincia> provincias = db.provincia.ToList();
            ViewBag.provincia = new SelectList(provincias, "idProvincia", "provincias");
        }

        public JsonResult getCanton(int idProvincia)
        {
            db.Configuration.ProxyCreationEnabled = false;
            List<canton> cantones = db.canton.Where(x => x.idCantonProvincia == x.idCantonProvincia).ToList();
            return Json(cantones, JsonRequestBehavior.AllowGet);
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