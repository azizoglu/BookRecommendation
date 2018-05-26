using Emlak.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class KitapDetayActivity
    {
        DbBaglanti db = new DbBaglanti();

        public DataTable getKitaplar(string _kitap)
        {
            return db.DataTableGetir("SELECT KT.ADI AS KITAP_ADI,Y.ADI AS YAZAR,YE.ADI AS YAYIN_EVI,KT.TANITIM,COUNT(KO.KITAP_ID) AS OKUNMA_SAYISI, AVG(KP.PUAN) AS ORTALAMA_PUAN " +
            "FROM KITAP AS KT, YAZAR AS Y, KITAP_YAZAR AS KY, YAYIN_EVI AS YE, KITAP_OKUNMA AS KO, KITAP_PUAN AS KP " +
            "WHERE KT.ID = KY.KITAP_ID AND KY.YAZAR_ID = Y.ID AND KT.YAYIN_EVI_ID = Y.ID AND KT.ID = KO.KITAP_ID AND KT.ID = KP.KITAP_ID AND KT.ADI='"+_kitap+"' " +
            "GROUP BY KT.ADI, Y.ADI, KT.TANITIM,YE.ADI");
        }

        public DataTable getIncelemeler(string _kitap)
        {
            return db.DataTableGetir("SELECT KT.ADI AS KITAP_ADI,KI.INCELEME "+
            "FROM KITAP_INCELEME AS KI, KITAP AS KT WHERE KI.KITAP_ID = KT.ID AND KT.ADI='"+ _kitap + "'");
        }

        public DataTable getAlintilar(string _kitap)
        {
            return db.DataTableGetir("SELECT KT.ADI AS KITAP_ADI,KI.CUMLE AS ALINTI " +
            "FROM KITAP_ALINTI AS KI, KITAP AS KT WHERE KI.KITAP_ID = KT.ID AND KT.ADI='" + _kitap + "'");
        }
    }
}