using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ProyFacturas.Models;
using Microsoft.EntityFrameworkCore;
using static ProyFacturas.Models.FactModFacturas;

namespace ProyFacturas.Data
{
    public class FactDBContext : DbContext
    {
        public FactDBContext(DbContextOptions<FactDBContext> options) : base(options)
        {
        }//constructor

        protected async override void OnConfiguring(DbContextOptionsBuilder FactPaOptionsBuilder)
        {
            try
            {
            }
            catch (Exception e) { }
        }//config conection

        //clases-tablas

        public DbSet<ce_facturas> ce_facturas { get; set; }
        public DbSet<ce_facturas_estatus> ce_facturas_estatus { get; set; }
        public DbSet<ce_ventas> ce_ventas { get; set; }
        public DbSet<rh_cat_domicilios> rh_cat_domicilios { get; set; }
        public DbSet<rh_cat_personas> rh_cat_personas { get; set; }


        protected async override void OnModelCreating(ModelBuilder modelBuilder)
        {

            //----------Llaves Primarias----------

            modelBuilder.Entity<ce_facturas>().HasKey(c => new { c.IdFactura });
            modelBuilder.Entity<ce_facturas_estatus>().HasKey(a => new { a.IdEstatus});
            modelBuilder.Entity<ce_ventas>().HasKey(c => new { c.IdVenta });
            modelBuilder.Entity<rh_cat_domicilios>().HasKey(c => new { c.IdDomicilio });
            modelBuilder.Entity<rh_cat_personas>().HasKey(c => new { c.IdPersona });

            //----------Llaves Foraneas------------

                // ce_facturas
            modelBuilder.Entity<ce_facturas>().HasOne(b => b.rh_cat_personas).WithMany().HasForeignKey(
              d => new { d.IdEmisor });

            modelBuilder.Entity<ce_facturas>().HasOne(b => b.rh_cat_domicilios).WithMany().HasForeignKey(
               d => new { d.IdDomicilioEmisor });

            modelBuilder.Entity<ce_facturas>().HasOne(b => b.rh_cat_personas).WithMany().HasForeignKey(
              d => new { d.IdReceptor });

            modelBuilder.Entity<ce_facturas>().HasOne(b => b.rh_cat_domicilios).WithMany().HasForeignKey(
               d => new { d.IdDomicilioReceptor });

                // ce_facturas_estatus
            modelBuilder.Entity<ce_facturas_estatus>().HasOne(b => b.ce_facturas).WithMany().HasForeignKey(
                b => new { b.IdFactura });
            modelBuilder.Entity<ce_facturas_estatus>().HasOne(b => b.ce_facturas).WithMany().HasForeignKey(
                b => new { b.IdEstatusDet });





        } //ModelBuilder


    }
}
