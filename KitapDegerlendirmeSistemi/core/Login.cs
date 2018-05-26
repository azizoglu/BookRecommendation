using Emlak.Database;
using KitapDegerlendirmeSistemi.data.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class Login
    {
        private DbBaglanti dbLogin = new DbBaglanti();
        public bool checkKullanici(string _kullanici_adi, string _sifre)
        {
            try
            {
                DataTable dt = dbLogin.DataTableGetir("SP_KULLANICI_GIRIS '" + _kullanici_adi + "','" + _sifre + "'");
                if (dt.Rows.Count > 0)
                {
                    KullaniciModel kullaniciModel = KullaniciModel.getKullanici();
                    kullaniciModel.KullaniciAdi = _kullanici_adi;
                    kullaniciModel.Resim = dt.Rows[0]["RESIM"].ToString();
                    kullaniciModel.Ad = dt.Rows[0]["ADI"].ToString();
                    kullaniciModel.Soyad = dt.Rows[0]["SOYADI"].ToString();
                    kullaniciModel.Cinsiyet = dt.Rows[0]["CINSIYET"].ToString();
                    kullaniciModel.Email = dt.Rows[0]["EMAIL"].ToString();
                    kullaniciModel.Telefon = dt.Rows[0]["TELEFON"].ToString();
                    kullaniciModel.Adres = dt.Rows[0]["ADRES"].ToString();
                    kullaniciModel.Sehir = dt.Rows[0]["SEHIR"].ToString();
                    kullaniciModel.YetkiID = Convert.ToInt32(dt.Rows[0]["YETKI_ID"].ToString());
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception)
            {
                return false;
            }
        }

        public string kullaniciKayit(string _resim,string _kullanici_adi,string _sifre,string _ad,string _soyad,string _dogum_tarihi,
            string _cinsiyet,string _email,string _telefon,string _adres,int _sehir_id)
        {
            try
            {
                DataTable dt = dbLogin.DataTableGetir("SP_KULLANICI_KAYIT '"+ _resim + "','" + _kullanici_adi + "','" + _sifre + "','" +
                               _ad + "','" + _soyad + "','"+_dogum_tarihi+"','" + _cinsiyet + "','" + _email + "','" + 
                               _telefon + "','" +_adres + "'," + _sehir_id);
                return dt.Rows[0]["RESULT"].ToString();
            }
            catch (Exception)
            {
                return "BASARISIZ";
            }
        }

        public DataTable getSehirler()
        {
            return dbLogin.DataTableGetir("SELECT ID,ADI FROM SEHIR");
        }
    }
}