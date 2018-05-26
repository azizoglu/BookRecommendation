using Emlak.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class KullaniciAramaActivity
    {
        private DbBaglanti db = new DbBaglanti();

        public DataTable getKullanicilar(string _kullanici)
        {
            return db.DataTableGetir("SELECT ID,ADI +' '+SOYADI AS KULLANICI_ADI FROM KISI WHERE ADI +' '+SOYADI LIKE '%"+_kullanici+"%'");
        }
    }
}