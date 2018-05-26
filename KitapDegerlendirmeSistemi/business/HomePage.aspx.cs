using Emlak.Database;
using KitapDegerlendirmeSistemi.core;
using KitapDegerlendirmeSistemi.data.model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi
{
    public partial class Default : System.Web.UI.Page
    {
        Dashboard dashboard = new Dashboard();
        protected void Page_Load(object sender, EventArgs e)
        {
            setOrtakKitapOneri();
            setOrtakPuanOneri();
            setOkunmayanKitaplar();
        }

        private void setOrtakKitapOneri()
        {
            rptOrtakKitap.DataSource = dashboard.getOrtakKitapOneri();
            rptOrtakKitap.DataBind();
        }

        private void setOrtakPuanOneri()
        {
            rptOrtakPuan.DataSource = dashboard.getOrtakPaunOneri();
            rptOrtakPuan.DataBind();
        }

        private void setOkunmayanKitaplar()
        {
            rptOkunmayan.DataSource = dashboard.getOkunmayanKitaplar();
            rptOkunmayan.DataBind();
        }
    }
}