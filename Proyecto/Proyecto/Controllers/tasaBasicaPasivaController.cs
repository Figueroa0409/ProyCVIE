using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Proyecto.Controllers
{
    public class tasaBasicaPasivaController : Controller
    {
        // GET: tasaBasicaPasiva
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult tasaBasicaPasiva()
        {
            return View();
        }

        public String tasaBasicaPasivaApi()
        {
            String cadena = "";
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            apiIndicadores.gee.wsindicadoreseconomicos api = new apiIndicadores.gee.wsindicadoreseconomicos();
            ds = api.ObtenerIndicadoresEconomicos("423", "01/08/2017", "01/08/2019", "Indicadores", "s", "smal11929@gmail.com", "AM9SAML30N");

            try
            {
                dt = ds.Tables[0];
            }
            catch (Exception)
            {

            }
            return cadena;
        }

    }
}