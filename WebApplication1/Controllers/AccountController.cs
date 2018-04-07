using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Text;
using System.Web.Mvc;
using WebApplication1.Models;
using System.Security.Cryptography;

namespace WebApplication1.Controllers
{
    public class AccountController : Controller
    {
        public ActionResult Login()
        {

            return View();
        }
         public static string GetMd5Hash(MD5 md5Hash, string input)
        {
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));
            StringBuilder sBuilder = new StringBuilder();
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }
            return sBuilder.ToString();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                MD5 md5Hash = MD5.Create();
                string pass = GetMd5Hash(md5Hash,model.Password);
                USERS user = null;
                using (Entities db = new Entities())
                {
                    
                    user = db.USERS.FirstOrDefault(u => u.USER_EMAIL == model.Email && u.USER_PASSWORD == pass);

                }
                if (user != null)
                {
                    FormsAuthentication.SetAuthCookie(model.Email, true);
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "Пользователя с таким логином и паролем нет");
                }
            }

            return View(model);

        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Register(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                USERS user = null;

                using (Entities db = new Entities())
                {
                    user = db.USERS.FirstOrDefault(u => u.USER_EMAIL == model.Email);
                }
                if (user == null)
                {
                    using (Entities db = new Entities())
                    {
                        MD5 md5Hash = MD5.Create();
                        string pass = GetMd5Hash(md5Hash, model.Password);
                        db.INSERTUSER(model.Name, model.Lastname, model.Email, pass);
                        db.SaveChanges();

                        user = db.USERS.Where(u => u.USER_EMAIL == model.Email && u.USER_PASSWORD == pass).FirstOrDefault();
                    }
                    if (user != null)
                    {
                        FormsAuthentication.SetAuthCookie(model.Email, true);
                        return RedirectToAction("Index", "Home");
                    }
                }
                else
                {
                    ModelState.AddModelError("", "Пользователь с таким логином уже существует");
                }
            }

            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Logoff()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Index", "Home");
        }
        [Authorize]
        public ActionResult MyProfile()
        {
            
            return View();
        }
    }
}
