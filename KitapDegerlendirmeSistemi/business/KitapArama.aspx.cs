using KitapDegerlendirmeSistemi.core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi.business
{
    public partial class KitapArama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setKitaplar(tbKitap.Text);
        }

        private void setKitaplar(string _kitap)
        {
            KitapAramaActivity yazarArama = new KitapAramaActivity();
            repetear.DataSource = yazarArama.getKitaplar(_kitap);
            repetear.DataBind();
        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            setKitaplar(tbKitap.Text);
        }
    }
}