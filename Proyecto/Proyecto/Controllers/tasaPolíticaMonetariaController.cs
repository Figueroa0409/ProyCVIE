using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Proyecto.Controllers
{
    public class tasaPolíticaMonetariaController : Controller
    {
        // GET: tasaPolíticaMonetaria
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult tasaPolíticaMonetaria()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            apiIndicadores.gee.wsindicadoreseconomicos api = new apiIndicadores.gee.wsindicadoreseconomicos();
            ds = api.ObtenerIndicadoresEconomicos("3541", "01/08/2017", "01/08/2019", "Indicadores", "s", "smal11929@gmail.com", "AM9SAML30N");

            try
            {
                dt = ds.Tables[0];

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ViewBag.FechaInicio = ("" + dt.Rows[i][1].ToString());
                    ViewBag.Valor = ("" + dt.Rows[i][2].ToString());
                }
                    
            }
            catch (Exception)
            {

            }
            return View();
        }


    }
}