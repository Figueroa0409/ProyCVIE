using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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