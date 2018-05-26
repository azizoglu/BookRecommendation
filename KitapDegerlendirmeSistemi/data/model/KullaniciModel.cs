using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.data.model
{
    public class KullaniciModel
    {
        private static KullaniciModel kullanici=null;

        public static KullaniciModel getKullanici()
        {
            if (kullanici == null)
            {
                kullanici = new KullaniciModel();
            }
            return kullanici;
        }

        public String KullaniciAdi { get; set; }
        public String Resim  { get;set; }
        public String Ad { get; set; }
        public String Soyad { get; set; }
        public String Cinsiyet { get; set; }
        public String Email { get; set; }
        public String Telefon { get; set; }
        public String Adres { get; set; }
        public String Sehir { get; set; }
        public int YetkiID { get; set; }
    }
}