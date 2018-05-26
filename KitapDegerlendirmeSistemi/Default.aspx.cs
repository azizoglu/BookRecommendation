

using KitapDegerlendirmeSistemi.core;
using KitapDegerlendirmeSistemi.data.model;
using System;

namespace KitapDegerlendirmeSistemi
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            if (login.checkKullanici(tbKullaniciAdi.Text, tbsifre.Text))
            {
                KullaniciModel kullanici = KullaniciModel.getKullanici();
                if (kullanici.YetkiID==1)
                {
                    Response.Redirect("/business/KitapTanim.aspx");
                }
                else
                {
                    Response.Redirect("/business/HomePage.aspx");
                }
            }
            else
            {
                lblResult.Text = "Lütfen Kullanıcı Bilgilerini Kontrol Ediniz!";
            }
        }
    }
}