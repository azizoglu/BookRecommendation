using Emlak.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class YazarAramaActivity
    {
        private DbBaglanti db = new DbBaglanti();

        public DataTable getYazarlar(string _yazar)
        {
            return db.DataTableGetir("SELECT ID,ADI+' '+SOYADI AS YAZAR_ADI FROM YAZAR WHERE ADI+' '+SOYADI LIKE '%"+_yazar+"%' ");
        }
    }
}