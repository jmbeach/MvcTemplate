using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NLog;

//TODO:rename this
public class TemplateController : Controller
{
    private static Logger _logger = LogManager.GetCurrentClassLogger();
    public ActionResult Index()
    {
        return View();
    }
}