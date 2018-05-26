<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ProfilDetay.aspx.cs" Inherits="KitapDegerlendirmeSistemi.business.ProfilDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../login_css/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../login_css/vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../login_css/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../login_css/fonts/iconic/css/material-design-iconic-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../login_css/vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../login_css/vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../login_css/vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../login_css/vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../login_css/vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
    <link href="../login_css/css/main.css" rel="stylesheet" />
    <link href="../login_css/css/util.css" rel="stylesheet" />
<!--===============================================================================================-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header" data-background-color="purple">
                                    <h4 class="title">Profil Detay</h4>
                                    <p class="category"></p>
                                </div>
                                <div class="card-content">
                                    <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group label-floating">
                                                    <asp:Label ID="lblAdSoyad" runat="server" class="control-label" Text=""></asp:Label>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Başlık</label>
                                                    <asp:TextBox ID="tbBaslik" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Mesaj</label>
                                                    <asp:TextBox ID="tbMesaj" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group label-floating">
                                                    <asp:Button ID="btnMesaj" class="btn btn-primary pull-right" runat="server" Text="Mesaj Gönder" OnClick="btnMesaj_Click" />
                                                </div>
                                            </div>
                                            
                                        </div>
                                        
                                        
                                        
                                        <div class="clearfix"></div><form>
                                        
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                     <div class="row">
            <div class="col-lg-9 col-md-12">
                <div class="card card-nav-tabs">
                    <div class="card-header" data-background-color="purple">
                        <div class="nav-tabs-navigation">
                            <div class="nav-tabs-wrapper">
                                <span class="nav-tabs-title">Popüler:</span>
                                <ul class="nav nav-tabs" data-tabs="tabs">
                                    <li class="active">
                                        <a href="#profile" data-toggle="tab">
                                            <i class="material-icons">book</i> Kitaplar
                                            <div class="ripple-container"></div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-content">
                        <div class="tab-content">
                            <div class="tab-pane active" id="profile">
                                <table class="table">
                                      <thead class="text-warning">
                                        <th>Okunan Kitap</th>
                                        <th>Puan</th>
                                        <th>İnceleme</th>
                                        <th>Alıntı</th>
                                        <th>Detay</th
                                    </thead>
                                    <tbody>
                                         <asp:Repeater ID="rpt" runat="server">
                                             <ItemTemplate>
                                                 <tr>
                                                    <td><%#Eval("KITAP_ADI") %></td>
                                                    <td><%#Eval("PUAN") %></td>
                                                    <td><%#Eval("INCELEME") %></td>
                                                    <td><%#Eval("ALINTI") %></td>
                                                    <td class="td-actions text-right">
                                                        <a href="../business/KitapDetay.aspx?kitap_adi=<%#Eval("KITAP_ADI") %>" class="btn btn-primary btn-simple btn-xs"><i class="material-icons">check</i></a>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>         
        </div>
                </div>
            </div>
    <!--===============================================================================================-->
	<script src="../login_css/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../login_css/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../login_css/vendor/bootstrap/js/popper.js"></script>
	<script src="../login_css/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../login_css/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../login_css/vendor/daterangepicker/moment.min.js"></script>
	<script src="../login_css/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../login_css/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../login_css/js/main.js"></script>
</asp:Content>
