using KitapDegerlendirmeSistemi.core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi.business
{
    public partial class KullaniciArama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setKullanicilar(tbKullanici.Text);
        }

        private void setKullanicilar(string _kullanici)
        {
            KullaniciAramaActivity arama = new KullaniciAramaActivity();
            repetear.DataSource = arama.getKullanicilar(_kullanici);
            repetear.DataBind();
        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            setKullanicilar(tbKullanici.Text);
        }
    }
}