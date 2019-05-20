using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace ProyFacturas.Controllers
{
    public class FactIndexController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}