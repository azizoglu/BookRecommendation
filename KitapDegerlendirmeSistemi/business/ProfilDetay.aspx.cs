using Emlak.Database;
using KitapDegerlendirmeSistemi.core;
using KitapDegerlendirmeSistemi.data.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi.business
{
    public partial class ProfilDetay : System.Web.UI.Page
    {
        string kullanici_adi;
        protected void Page_Load(object sender, EventArgs e)
        {
            kullanici_adi = Request.QueryString["kullanici_adi"];
            lblAdSoyad.Text = kullanici_adi;
            setOkunanKitaplar(kullanici_adi);
        }

        private void setOkunanKitaplar(string _kullanici_adi)
        {
            ProfilDetayActivity profilDetay= new ProfilDetayActivity();
            rpt.DataSource = profilDetay.getOkunanKitaplar(_kullanici_adi);
            rpt.DataBind();
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
        }

        protected void btnMesaj_Click(object sender, EventArgs e)
        {
            DbBaglanti db = new DbBaglanti();
            KullaniciModel kullanici = KullaniciModel.getKullanici();
            db.DataTableGetir("MESAJ_GONDER '"+kullanici.KullaniciAdi+"','"+kullanici_adi+"','"+tbBaslik.Text+"','"+tbMesaj.Text+"'");
            tbBaslik.Text = "";
            tbMesaj.Text = "";
        }
    }
}