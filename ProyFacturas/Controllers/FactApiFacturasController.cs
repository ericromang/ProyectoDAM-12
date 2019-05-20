using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProyFacturas.Data;
using static ProyFacturas.Models.FactModFacturas;

namespace ProyFacturas.Controllers
{
    [Produces("application/json")]
    //[Route("api/[controller]")]
    //[ApiController]
    public class FactApiFacturasController : Controller
    {
        private readonly FactDBContext FactLoDBContext;
        public FactApiFacturasController(FactDBContext FactPaBDContext)
        {
            FactLoDBContext = FactPaBDContext;
        }
        // ESTA CONSULTA MUESTRA UNA SOLA FACTURA 
        [HttpGet]
        [Route("/api/facturas/detalle")]
        public async Task<IActionResult>FactApiGetListDetalle([FromQuery]int idF)
        {

            var ce_facturas = (from data_inv in FactLoDBContext.ce_facturas where data_inv.IdFactura == idF select data_inv).ToList();
            if (ce_facturas.Count()>0)
            {
                ce_facturas = ce_facturas.ToList();
                return Ok(ce_facturas);
            }
            else
            {
                ce_facturas = ce_facturas.ToList();
                return Ok(ce_facturas);
            }
        }
        // ESTA CONSULTA MUESTRA TODA LA LISTA DE FACTURAS
        [HttpGet]
        [Route("/api/facturas/lista")]
        public async Task<IActionResult> FactApiGetListFacturas()
        {
            var ce_facturas = (from data_inv in FactLoDBContext.ce_facturas select data_inv).ToList();
            if (ce_facturas.Count() > 0)
            {
                ce_facturas = ce_facturas.ToList();
                return Ok(ce_facturas);
            }
            else
            {
                ce_facturas = ce_facturas.ToList();
                return Ok(ce_facturas);
            }
        }

        [HttpPost]
        [Route("/api/facturas/publicar")]
        public async Task<IActionResult> FactApiPostFacturas([FromForm]short idF,[FromForm] short idV,
         [FromForm]string folio, [FromForm] short idE, [FromForm] short idD,
         [FromForm]short IdRec, [FromForm] short IdDom, [FromForm] float SubT,
         [FromForm]float Iv, [FromForm] float Tot,
         [FromForm]DateTime Fecha, [FromForm] string UsuarioR, [FromForm] DateTime FechaU, 
         [FromForm]string UsuarioM)
        {
            Console.WriteLine(idF);
            ce_facturas facturas = new ce_facturas();
            facturas.IdFactura = idF;
            facturas.IdVenta = idV;
            facturas.FolioFactura = folio;
            facturas.IdEmisor = idE;
            facturas.IdDomicilioEmisor = idD;
            facturas.IdReceptor = IdRec;
            facturas.IdDomicilioReceptor = IdDom;
            facturas.SubTotal = SubT;
            facturas.IVA = Iv;
            facturas.Total = Tot;
            facturas.Activo = "S";
            facturas.Borrado = "N";
            facturas.FechaReg = Fecha;
            facturas.UsuarioReg = UsuarioR;
            facturas.FechaUltMod = FechaU;
            facturas.UsuarioMod = UsuarioM;

            FactLoDBContext.ce_facturas.Add(facturas);
            FactLoDBContext.SaveChanges();
            return Ok(facturas);
            
        }
        [HttpDelete]
        [Route("/api/facturas/eliminar")]
        public async Task<IActionResult> FacApiDeleteFacturas([FromQuery] short idF)
        {
            ce_facturas facturas = new ce_facturas();
            facturas.IdFactura = idF;
            try
            {
                FactLoDBContext.ce_facturas.Remove(facturas);
                FactLoDBContext.SaveChanges();
                return Ok(facturas);
            }
            catch(Microsoft.EntityFrameworkCore.DbUpdateException e)
            {
                Dictionary<String, String> err = new Dictionary<string, string>();
                err.Add("err","No se encontraron registros");
                return Ok(err);
            }  
        }
        [HttpPut]
        [Route("/api/facturas/actualizar")]
        public async Task<IActionResult> FacApiUpdateFacturas([FromForm]short idF,[FromForm] string activo,
         [FromForm] string borrado, [FromForm] DateTime FechaU, 
         [FromForm] string UsuarioM)
        {
            try
            {
                var facturas = FactLoDBContext.ce_facturas.First(a => a.IdFactura == idF);
                facturas.Activo = activo;
                facturas.Borrado = borrado;
                facturas.FechaUltMod = FechaU;
                facturas.UsuarioMod = UsuarioM;

                FactLoDBContext.SaveChanges();
                return Ok(facturas);
            }
            catch(Exception e)
            {
                Dictionary<String, String> err = new Dictionary<string, string>();
                err.Add("err", "No se encontraron registros");
                return Ok(err);
            }
            
        }

        //*******************************************************************           ESTATUS        ************************************************************************************************************************
        [HttpGet]
        [Route("/api/estatus/detalle")]
        public async Task<IActionResult> EstApiGetListDetalle([FromQuery]int idE)
        {

            var ce_facturas = (from data_inv in FactLoDBContext.ce_facturas_estatus where data_inv.IdEstatusDet == idE select data_inv).ToList();
            if (ce_facturas.Count() > 0)
            {
                ce_facturas = ce_facturas.ToList();
                return Ok(ce_facturas);
            }
            else
            {
                ce_facturas = ce_facturas.ToList();
                return Ok(ce_facturas);
            }
        }

        [HttpPost]
        [Route("/api/estatus/publicar")]
        public async Task<IActionResult> EstApiPostFacturas([FromForm]short idE, [FromForm] short idF,
         [FromForm] short idED,[FromForm]string Act, [FromForm] string Obs,[FromForm]DateTime Fecha,
         [FromForm] string UsuarioR,[FromForm] DateTime FechaU,[FromForm]string UsuarioM)
        {
            Console.WriteLine(idF);
            ce_facturas_estatus estatus = new ce_facturas_estatus();
            estatus.IdEstatus = idE;
            estatus.IdFactura = idF;
            estatus.IdEstatusDet = idED;
            estatus.Actual = Act;
            estatus.Observacion = Obs;
            estatus.FechaReg = Fecha;
            estatus.UsuarioReg = UsuarioR;
            estatus.FechaUltMod = FechaU;
            estatus.UsuarioMod = UsuarioM;

            FactLoDBContext.ce_facturas_estatus.Add(estatus);
            FactLoDBContext.SaveChanges();
            return Ok(estatus);

        }


    }
   
}
