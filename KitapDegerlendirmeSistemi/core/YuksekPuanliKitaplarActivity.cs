using Emlak.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class YuksekPuanliKitaplarActivity
    {
        private DbBaglanti db = new DbBaglanti();
        public DataTable getYuksekPuanliKitaplar()
        {
            return db.DataTableGetir("SELECT KT.ADI AS KITAP_ADI,AVG(PUAN) AS ORTALAMA_PUAN " +
                "FROM KITAP_PUAN AS KP,KITAP AS KT WHERE KT.ID=KP.KITAP_ID GROUP BY KT.ADI,PUAN ORDER BY PUAN DESC");
        }
    }
}