using Proyecto.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net.Mail;

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
            List<provincia> provincias = db.provincia.ToList();
            ViewBag.provincia = new SelectList(provincias, "idProvincia", "provincias");
        }

        public JsonResult getCanton(int idProvincia)
        {
            db.Configuration.ProxyCreationEnabled = false;
            List<canton> cantones = db.canton.Where(x => x.idCantonProvincia == idProvincia).ToList();
            return Json(cantones, JsonRequestBehavior.AllowGet);
        }

        public JsonResult getDistrito(int idCanton)
        {
            db.Configuration.ProxyCreationEnabled = false;
            List<distrito> distritos = db.distrito.Where(x => x.idDistritoCanton == idCanton).ToList();
            return Json(distritos, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult notificaciones(FormCollection form)
        {
            String email = form["Correo"];
            String nombre = form["nombre"];
            String apellido1 = form["apellido1"];
            String apellido2 = form["apellido2"];
            String cedula = form["Cedula"];
            String edad = form["Edad"];
            String profesion = form["Profesion"];
            String provincia = form["idProvincia"];
            String canton = form["idCantonProvincia"];
            String distrito = form["idDistritoCanton"];
            try
            {
                MailMessage correo = new MailMessage();
                correo.From = new MailAddress("saelprogreso@gmail.com");
                correo.To.Add(email);
                correo.Body = "Bienvendio " + nombre + " " + apellido1 + " " + apellido2 + "<br/>" +
                    "Gracias por inscribirse con nosotros<br/>" +
                    "Esta es su información:<br/>" +
                    "Cédula: " + cedula + "<br/>" +
                    "Edad: " + edad + "<br/>" +
                    "Profesion: " + profesion + "<br/>" +
                    "Residencia: " + provincia + " " + canton + " " + distrito + "<br/>" +
                    "Pronto estará recibiendo la información diaria de los indicadores financieros" + "<br/>" +
                    "Gracias";
                correo.Subject = "Bienvenido";
                correo.IsBodyHtml = true;
                correo.Priority = MailPriority.Normal;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                string sCuentaCorreo = "saelprogreso@gmail.com";
                string sPasswordCorreo = "saelprogreso2010";        
                smtp.Credentials = new System.Net.NetworkCredential(sCuentaCorreo, sPasswordCorreo);

                smtp.Send(correo);
                ViewBag.Mensaje = "Mensaje se envió correctamente";
            }
            catch (Exception ex) {
                ViewBag.Mensaje = ex;
            }
            return View();
        }

        
    }
}