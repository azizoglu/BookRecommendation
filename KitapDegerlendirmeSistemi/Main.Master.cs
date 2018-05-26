using Emlak.Database;
using KitapDegerlendirmeSistemi.data.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KitapDegerlendirmeSistemi
{
    public partial class Main : System.Web.UI.MasterPage
    {
        private DbBaglanti db = new DbBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            setMenu();
        }

        private void setMenu()
        {
            KullaniciModel kullaniciModel = KullaniciModel.getKullanici();
            rptMenu.DataSource = db.DataTableGetir("SELECT*FROM MENU WHERE YETKI_ID="+ kullaniciModel.YetkiID);
            rptMenu.DataBind();
        }

        protected void rptMenu_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
      
        }
    }
}