using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Proyecto.Controllers
{
    public class IndicesController : Controller
    {
        // GET: Indices
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult tasaPolíticaMonetaria()
        {
            return View();
        }

        public ActionResult tasaBasicaPasiva()
        {
            return View();
        }

        public ActionResult ventaDolar()
        {
            return View();
        }

        public ActionResult compraDolar()
        {
            return View();
        }
    }
}