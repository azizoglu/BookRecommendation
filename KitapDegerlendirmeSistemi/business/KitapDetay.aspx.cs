using KitapDegerlendirmeSistemi.core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi.business
{
    public partial class KitapDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kitap = Request.QueryString["kitap_adi"];
            setKitaplar(kitap);
            setIncelemeler(kitap);
            setAlintilar(kitap);
        }

        private void setKitaplar(string _kitap)
        {
            KitapDetayActivity kitapDetay = new KitapDetayActivity();
            rptKitaplar.DataSource = kitapDetay.getKitaplar(_kitap);
            rptKitaplar.DataBind();
        }

        private void setIncelemeler(string _kitap)
        {
            KitapDetayActivity kitapDetay = new KitapDetayActivity();
            rptIncelemeler.DataSource = kitapDetay.getIncelemeler(_kitap);
            rptIncelemeler.DataBind();
        }

        private void setAlintilar(string _kitap)
        {
            KitapDetayActivity kitapDetay = new KitapDetayActivity();
            rptAlintilar.DataSource = kitapDetay.getAlintilar(_kitap);
            rptAlintilar.DataBind();
        }

        protected void btnKitapTanim_Click(object sender, EventArgs e)
        {
            Response.Redirect("/business/KitapTanim.aspx");
        }
    }
}