using KitapDegerlendirmeSistemi.core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi.business
{
    public partial class YuksekPuanliKitaplar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setYuksekPuanliKitaplar();
        }

        private void setYuksekPuanliKitaplar()
        {
            YuksekPuanliKitaplarActivity yuksekPuanli = new YuksekPuanliKitaplarActivity();
            rptOrtakKitap.DataSource = yuksekPuanli.getYuksekPuanliKitaplar();
            rptOrtakKitap.DataBind();
        }
    }
}