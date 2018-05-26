using Emlak.Database;
using KitapDegerlendirmeSistemi.data.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class ProfilDetayActivity
    {
        private DbBaglanti db = new DbBaglanti();

        public DataTable getOkunanKitaplar(string _kullanici_adi)
        {
            return db.DataTableGetir("SELECT DISTINCT KT.ADI AS KITAP_ADI,KP.PUAN,KI.INCELEME,KA.CUMLE AS ALINTI "+
            "FROM KITAP_OKUNMA AS KO, KITAP AS KT, KULLANICI AS KU, KITAP_PUAN AS KP,"+
            "KITAP_INCELEME AS KI, KITAP_ALINTI AS KA,KISI "+
           "WHERE KO.KITAP_ID = KT.ID AND KU.ID = KO.KULLANICI_ID AND KP.KITAP_ID = KO.KITAP_ID AND KT.ID = KI.KITAP_ID AND KT.ID = KA.KITAP_ID "+
            "AND KISI.ID=KU.KISI_ID AND KISI.ADI+' '+KISI.SOYADI = '" + _kullanici_adi+ "'");
        }
    }
}