using KitapDegerlendirmeSistemi.core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi.business
{
    public partial class PopulerKitaplar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setPopulerKitaplar();
        }

        private void setPopulerKitaplar()
        {
            PopulerKitaplarActivity dashboard = new PopulerKitaplarActivity();
            rptOrtakKitap.DataSource = dashboard.getPopulerKitaplar();
            rptOrtakKitap.DataBind();
        }
    }
}