using Emlak.Database;
using KitapDegerlendirmeSistemi.core;
using KitapDegerlendirmeSistemi.data.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace KitapDegerlendirmeSistemi
{
    public partial class Register : System.Web.UI.Page
    {
        Login login = new Login();
        protected void Page_Load(object sender, EventArgs e)
        {
            setCinsiyetler();
            setSehirler();
        }

        private void kullaniciKayit()
        {
            string dosya_ismi = "default";
            string result=login.kullaniciKayit(dosya_ismi,tbKullaniciAdi.Text,tbsifre.Text,tbAd.Text,tbSoyad.Text,tbDogumTarihi.Text, 
                dlCinsiyet.SelectedItem.Value,tbEmail.Text,tbTelefon.Text,tbAdres.Text,Convert.ToInt32(dlSehir.SelectedItem.Value));
            if (result=="BASARISIZ")
            {
                lblResult.Text = "Kullanıcı Kaydedilemedi.";
            }
            else
            {
                Response.Redirect("/Default.aspx");
            }
        }

        private void setSehirler()
        {
            dlSehir.DataSource = login.getSehirler();
            dlSehir.DataTextField = "ADI";
            dlSehir.DataValueField = "ID";
            dlSehir.DataBind();
        }
    
        private void setCinsiyetler()
        {
            var items = new List<string> {"ERKEK","KADIN"};
            dlCinsiyet.DataSource = items;
            dlCinsiyet.DataBind();
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            kullaniciKayit();
        }
    }
}