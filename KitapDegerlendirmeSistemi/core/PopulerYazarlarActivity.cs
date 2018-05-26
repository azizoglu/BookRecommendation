
using Emlak.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class PopulerYazarlarActivity
    {
        private DbBaglanti dbPY = new DbBaglanti();
        public DataTable getPopulerYazarlar()
        {
            return dbPY.DataTableGetir("SELECT KY.YAZAR_ID,Y.ADI AS YAZAR_ADI,COUNT(KO.KITAP_ID) AS OKUNMA_SAYISI " +
                "FROM KITAP_YAZAR AS KY, KITAP_OKUNMA AS KO, YAZAR AS Y " +
                "WHERE KO.KITAP_ID = KY.KITAP_ID AND Y.ID = KY.YAZAR_ID " +
                "GROUP BY KY.YAZAR_ID, Y.ADI ORDER BY COUNT(KO.KITAP_ID) DESC");
        }

        public DataTable getYazarKitap(string _yazar_id)
        {
            return dbPY.DataTableGetir("SELECT KT.ADI AS KITAP_ADI FROM KITAP AS KT,KITAP_YAZAR AS KY WHERE KT.ID=KY.KITAP_ID AND KY.YAZAR_ID="+ _yazar_id);
        }
    }
}