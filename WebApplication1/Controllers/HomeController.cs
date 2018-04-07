using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Oracle.ManagedDataAccess.Client;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            
            return View();
        }
        public ActionResult Movie()
        {
            return View();
        }
        public ActionResult About()
        {
            return View();
        }

        [HttpPost]
        public int ID_GET(int i)
        {
            return i;
        }

      
        [HttpPost]
        public ActionResult FilmSearch(string name)
        {
            using (Entities data = new Entities())
            {
                var allfilms = data.MOVIES.Where(a => a.MOVIE_NAME.Contains(name)).ToList();
                if (allfilms.Count <= 0)
                {
                    return View("SearchResult");
                }
                return PartialView(allfilms);
            }
        }
public ActionResult SearchResult()
        {
            return View();
            
        }
        public ActionResult _LoginPartial()
        {

            return View();
        }


    }
    }
