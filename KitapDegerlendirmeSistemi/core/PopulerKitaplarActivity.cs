
using Emlak.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class PopulerKitaplarActivity
    {
        private DbBaglanti dbPK = new DbBaglanti();
        public DataTable getPopulerKitaplar()
        {
            return dbPK.DataTableGetir("SELECT KT.ADI AS KITAP_ADI,COUNT(KITAP_ID) AS OKUNMA_SAYISI " +
                "FROM KITAP_OKUNMA AS KO,KITAP AS KT WHERE KT.ID=KO.KITAP_ID GROUP BY KT.ADI ORDER BY OKUNMA_SAYISI DESC");
        }
    }
}