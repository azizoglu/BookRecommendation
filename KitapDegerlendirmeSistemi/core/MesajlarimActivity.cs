
using Emlak.Database;
using KitapDegerlendirmeSistemi.data.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class MesajlarimActivity
    {
        private DbBaglanti dbPK = new DbBaglanti();
        public DataTable getMesajlar()
        {
            KullaniciModel kullaniciModel = new KullaniciModel();
            return dbPK.DataTableGetir("SELECT KI.ADI,M.BASLIK,M.MESAJ,M.TARIH FROM MESAJ AS M,KISI AS KI,KULLANICI AS KU "+
            "WHERE M.GIDEN_ID = KI.ID AND KU.KISI_ID = KI.ID AND KU.ADI = '"+kullaniciModel.KullaniciAdi+"'");
        }
    }
}