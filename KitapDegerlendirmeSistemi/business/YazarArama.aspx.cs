using KitapDegerlendirmeSistemi.core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi.business
{
    public partial class YazarArama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setYazarlar(tbYazar.Text);
        }

        private void setYazarlar(string _yazar)
        {
            YazarAramaActivity yazarArama = new YazarAramaActivity();
            repetear.DataSource = yazarArama.getYazarlar(_yazar);
            repetear.DataBind();
        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            setYazarlar(tbYazar.Text);
        }
    }
}