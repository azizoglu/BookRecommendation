using KitapDegerlendirmeSistemi.core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi.business
{
    public partial class KitapTanim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grvKitaplar_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnKitapEkle_Click(object sender, EventArgs e)
        {
            KitapTanimActivity kitapTanim = new KitapTanimActivity();
            kitapTanim.insertKitap(tbYayinEvi.Text,tbAdres.Text,tbYazarAdi.Text,tbYazarSoyadi.Text,tbKitapAdi.Text,
                tbISBN.Text,tbSayfaSayisi.Text,tbYayinTarihi.Text,tbTanitim.Text);
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}