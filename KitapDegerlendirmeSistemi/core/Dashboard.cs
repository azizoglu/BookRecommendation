using Emlak.Database;
using KitapDegerlendirmeSistemi.data.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class Dashboard
    {
        private DbBaglanti db = new DbBaglanti();

        public DataTable getOrtakKitapOneri()
        {
            KullaniciModel kullanici = KullaniciModel.getKullanici();
            return db.DataTableGetir("SP_GET_ORTAK_KITAP_ONERI '"+kullanici.KullaniciAdi+"'");
        }

        public DataTable getOrtakPaunOneri()
        {
            KullaniciModel kullanici = KullaniciModel.getKullanici();
            return db.DataTableGetir("SP_GET_ORTAK_PUAN_ONERI '" + kullanici.KullaniciAdi + "'");
        }

        public DataTable getOkunmayanKitaplar()
        {
            KullaniciModel kullanici = KullaniciModel.getKullanici();
            return db.DataTableGetir("SP_GET_ORTAK_ONERI '" + kullanici.KullaniciAdi + "'");
        }
    }
}