using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proyecto;

namespace Proyecto.Controllers
{
    public class ventaDolarController : Controller
    {
        // GET: ventaDolar
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ventaDolar()
        {
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            apiIndicadores.gee.wsindicadoreseconomicos api = new apiIndicadores.gee.wsindicadoreseconomicos();
            ds = api.ObtenerIndicadoresEconomicos("318", "01/08/2017", "01/08/2019", "Indicadores", "s", "smal11929@gmail.com", "AM9SAML30N");
            var arrayFecha = new string[731];//731
            var arrayValor = new string[731];//731
            try
            {
                dt = ds.Tables[0];
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    DateTime fecha = Convert.ToDateTime(dt.Rows[i][1]);
                    int año = fecha.Year;
                    String mes = getMonth(fecha.Month);

                    arrayFecha[i] = mes + " " + año;
                    arrayValor[i] = dt.Rows[i][2].ToString().Replace(",", ".");

                }
            }
            catch (Exception)
            {

            }
            ViewBag.FechaInicio = arrayFecha;
            ViewBag.Valor = arrayValor;
            return View();
        }

        public String getMonth(int num)
        {
            String cadena = "";
            try
            {
                switch (num)
                {
                    case 1:
                        cadena = "Enero";
                        break;
                    case 2:
                        cadena = "Febrero";
                        break;
                    case 3:
                        cadena = "Marzo";
                        break;
                    case 4:
                        cadena = "Abril";
                        break;
                    case 5:
                        cadena = "Mayo";
                        break;
                    case 6:
                        cadena = "Junio";
                        break;
                    case 7:
                        cadena = "Julio";
                        break;
                    case 8:
                        cadena = "Agosto";
                        break;
                    case 9:
                        cadena = "Septiembre";
                        break;
                    case 10:
                        cadena = "Octubre";
                        break;
                    case 11:
                        cadena = "Noviembre";
                        break;
                    case 12:
                        cadena = "Diciembre";
                        break;
                }
            }
            catch (Exception)
            {

            }

            return cadena;

        }

    }
}