using Emlak.Database;
using KitapDegerlendirmeSistemi.data.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class KitapTanimActivity
    {
        private DbBaglanti dbKT = new DbBaglanti();

        public void insertKitap(string _yayin_evi,string _yayin_evi_adres,string _yazar_adi,string _yazar_soyadi,string _kitap_adi
            ,string _isbn,string _sayfa_sayisi,string _yayin_tarihi,string _kitap_tanitim)
        {
            dbKT.DataTableGetir("SP_INSERT_KITAP '"+_yayin_evi+"','"+_yayin_evi_adres + "','" +_yazar_adi
                + "','" +_yazar_soyadi + "','" +_kitap_adi + "','" +_isbn + "','" +_sayfa_sayisi + "','" +_yayin_tarihi+"','"+_kitap_tanitim+"'");
        }
    }
}