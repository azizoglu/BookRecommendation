using KitapDegerlendirmeSistemi.core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi.business
{
    public partial class PopulerYazarlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setPopulerYazarlar();
        }

        private void setPopulerYazarlar()
        {
            PopulerYazarlarActivity populerYazarlar = new PopulerYazarlarActivity();
            rtpYazarlar.DataSource = populerYazarlar.getPopulerYazarlar();
            rtpYazarlar.DataBind();
        }

        private void setYazarKitaplari()
        {
            PopulerYazarlarActivity populerYazarlar = new PopulerYazarlarActivity();
            rtpYazarKitap.DataSource = populerYazarlar.getYazarKitap("1");
            rtpYazarKitap.DataBind();
        }
    }
}