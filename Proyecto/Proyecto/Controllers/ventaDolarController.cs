﻿using System;
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
            apiIndicadores.gee.wsindicadoreseconomicos api = new apiIndicadores.gee.wsindicadoreseconomicos();
            ds = api.ObtenerIndicadoresEconomicos("318", "01/08/2017", "01/08/2019", "Indicadores", "s", "smal11929@gmail.com", "AM9SAML30N");

            try
            {
                ViewBag.FechaInicio = ("" + ds.Tables[0].Rows[0].ItemArray[1].ToString());
                ViewBag.Valor = ("" + ds.Tables[0].Rows[0].ItemArray[2].ToString());
            }
            catch (Exception)
            {

            }
            return View(); 
        }

    }
}