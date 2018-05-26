using KitapDegerlendirmeSistemi.core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi.business
{
    public partial class Mesajlarim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            setMesajlar();
        }

        private void setMesajlar()
        {
            MesajlarimActivity mesajlarim = new MesajlarimActivity();
            rptMesaj.DataSource = mesajlarim.getMesajlar();
            rptMesaj.DataBind();
        }
    }
}