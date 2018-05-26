<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KitapDegerlendirmeSistemi.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>KULLANICI GİRİŞİ</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="login_css/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/fonts/iconic/css/material-design-iconic-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login_css/vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_css/vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login_css/vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
    <link href="login_css/css/main.css" rel="stylesheet" />
    <link href="login_css/css/util.css" rel="stylesheet" />
<!--===============================================================================================-->
</head>
<body>
    
 	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						KULLANICI GİRİŞİ
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Kullanıcı Adı Giriniz">
                        <asp:TextBox ID="tbKullaniciAdi" runat="server" CssClass="input100" placeholder="Kullanıcı Adı"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Şifrenizi Giriniz">
						<asp:TextBox ID="tbsifre" runat="server" CssClass="input100" placeholder="Şifre" TextMode="Password"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="container-login100-form-btn">
						  <asp:Button ID="btnGiris" runat="server" Text="GİRİŞ" CssClass="login100-form-btn" OnClick="btnGiris_Click"/>
					</div>

                    <div class="text-center p-t-90">
                        <asp:Label ID="lblResult" runat="server" Text="" CssClass="txt1"></asp:Label>
					</div>
					<div class="text-center p-t-90">
						<a class="txt1" href="/business/Register.aspx">
							Yeni Kullanıcı Kaydı
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
    


    <!--===============================================================================================-->
	<script src="login_css/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/bootstrap/js/popper.js"></script>
	<script src="login_css/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/daterangepicker/moment.min.js"></script>
	<script src="login_css/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="login_css/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="login_css/js/main.js"></script>
</body>
</html>
