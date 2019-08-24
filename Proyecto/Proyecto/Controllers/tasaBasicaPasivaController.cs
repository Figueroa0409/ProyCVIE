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
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            apiIndicadores.gee.wsindicadoreseconomicos api = new apiIndicadores.gee.wsindicadoreseconomicos();
            ds = api.ObtenerIndicadoresEconomicos("423", "01/08/2017", "01/08/2019", "Indicadores", "s", "smal11929@gmail.com", "AM9SAML30N");
            var arrayFecha = new string[731];
            var arrayValor = new string[731];
            try
            {
                dt = ds.Tables[0];               
                for (int i = 0; i < 731; i++)
                {
                    arrayFecha[i] = ("" + dt.Rows[i][1].ToString());
                    arrayValor[i] = ("" + dt.Rows[i][2].ToString().Replace(",","."));                   
                }
            }
            catch (Exception)
            {

            }
            ViewBag.FechaInicio =  arrayFecha;
            ViewBag.Valor = arrayValor;
            ViewBag.Num = dt.Rows.Count;
            return View();
        }



    }
}