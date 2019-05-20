using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ProyFacturas.Models
{
    public class FactModFacturas
    {
        public class ce_facturas
        {
            [DatabaseGenerated(DatabaseGeneratedOption.None)]
            public short IdFactura { get; set; }
            public short IdVenta { get; set; }
            public ce_ventas ce_ventas { get; set; }
            [StringLength(20)]
            public string FolioFactura { get; set; }
            public short IdEmisor { get; set; }
            public rh_cat_personas rh_cat_personas { get; set; }
            public short IdDomicilioEmisor { get; set; }
            public rh_cat_domicilios rh_cat_domicilios { get; set; }
            public short IdReceptor { get; set; }
          //  public rh_cat_personas rh_cat_personas { get; set; }
            public short IdDomicilioReceptor { get; set; }
          //  public rh_cat_domicilios rh_cat_domicilios { get; set; }
            public double SubTotal { get; set; }
            public double IVA { get; set; }
            public double Total { get; set; }
            [StringLength(1)]
            public string Activo { get; set; }
            [StringLength(1)]
            public string Borrado { get; set; }
            public DateTime FechaReg { get; set; }
            [StringLength(20)]
            public string UsuarioReg { get; set; }
            public Nullable<DateTime> FechaUltMod { get; set; }
            [StringLength(20)]
            public string UsuarioMod { get; set; }
       
        } // ce_facturas

        public class ce_facturas_estatus
        {
            [DatabaseGenerated(DatabaseGeneratedOption.None)]
            public short IdFactura { get; set; }
            public ce_facturas ce_facturas { get; set; }
            public short IdEstatusDet { get; set; }
            public int IdEstatus { get; set; }
            //---------------------------------------------------
            [StringLength(1)]
            public string Actual { get; set; }
            [StringLength(255)]
            public string Observacion { get; set; }
            public DateTime FechaReg { get; set; }
            [StringLength(20)]
            public string UsuarioReg { get; set; }
            public Nullable<DateTime> FechaUltMod { get; set; }
            [StringLength(20)]
            public string UsuarioMod { get; set; }
        }// ce_facturas_estatus


        public class ce_ventas
        {
            [DatabaseGenerated(DatabaseGeneratedOption.None)]
            public Int16 IdVenta { get; set; }

        }// ce_ventas

        //Domicilio de Receptor y Emisor
        public class rh_cat_domicilios
        {
            [DatabaseGenerated(DatabaseGeneratedOption.None)]
            public Int16 IdDomicilio { get; set; }
            [StringLength(50)]
            public string Domicilio{ get; set; }

        }// rh_cat_domicilios

        //Id de Receptor y Emisor
        public class rh_cat_personas
        {
            [DatabaseGenerated(DatabaseGeneratedOption.None)]
            public Int16 IdPersona { get; set; }
            [StringLength(20)]
            public string Nombre { get; set; }
        }// rh_cat_personas

    }
   
}
