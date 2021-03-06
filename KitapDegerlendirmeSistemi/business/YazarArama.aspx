﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="YazarArama.aspx.cs" Inherits="KitapDegerlendirmeSistemi.business.YazarArama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png" />
    <link rel="icon" type="image/png" href="../assets/img/favicon.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Material Dashboard by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <!-- Bootstrap core CSS     -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--  Material Dashboard CSS    -->
    <link href="../assets/css/material-dashboard.css?v=1.2.0" rel="stylesheet" />
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../assets/css/demo.css" rel="stylesheet" />
    <!--     Fonts and icons     -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons" rel='stylesheet'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

  <div class="container-fluid">
        <div class="row">
             <div class="col-lg-2 col-md-1">
                 <asp:TextBox ID="tbYazar" runat="server" CssClass="form-control" placeholder="Aranacak Yazar"></asp:TextBox> 
             </div>
             <div class="col-lg-2 col-md-2">
                 <asp:Button ID="btnAra" runat="server" Text="ARA" class="btn btn-primary pull-right" OnClick="btnAra_Click"/>
             </div>
             <div class="col-lg-8 col-md-8">
             </div>
        </div>
        <div class="row">
            <div class="col-lg-9 col-md-12">
                <div class="card card-nav-tabs">
                    <div class="card-header" data-background-color="purple">
                        <div class="nav-tabs-navigation">
                            <div class="nav-tabs-wrapper">
                                <span class="nav-tabs-title"></span>
                                <ul class="nav nav-tabs" data-tabs="tabs">
                                    <li class="active">
                                        <a href="#profile" data-toggle="tab">
                                            <i class="material-icons">person</i> Yazarlar
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
                                        <th>ID</th>
                                        <th>Yazar Adı</th>
                                        <th>Detay</th
                                    </thead>
                                    <tbody>
                                         <asp:Repeater ID="repetear" runat="server">
                                             <ItemTemplate>
                                                 <tr>
                                                    <td><%#Eval("ID") %></td>
                                                    <td><%#Eval("YAZAR_ADI") %></td>
                                                    <td class="td-actions text-right">
                                                        <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-simple btn-xs">
                                                            <i class="material-icons">check</i>
                                                        </button>
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

    <!--   Core JS Files   -->
<script src="../assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/js/material.min.js" type="text/javascript"></script>
<!--  Charts Plugin -->
<script src="../assets/js/chartist.min.js"></script>
<!--  Dynamic Elements plugin -->
<script src="../assets/js/arrive.min.js"></script>
<!--  PerfectScrollbar Library -->
<script src="../assets/js/perfect-scrollbar.jquery.min.js"></script>
<!--  Notifications Plugin    -->
<script src="../assets/js/bootstrap-notify.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Material Dashboard javascript methods -->
<script src="../assets/js/material-dashboard.js?v=1.2.0"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="../assets/js/demo.js"></script>
<script type="text/javascript">
    $(document).ready(function() {

        // Javascript method's body can be found in assets/js/demos.js
        demo.initDashboardPageCharts();

    });
</script>
</asp:Content>
