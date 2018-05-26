<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="KitapDetay.aspx.cs" Inherits="KitapDegerlendirmeSistemi.business.KitapDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="btnKitapTanim" runat="server" Text="KİTAP EKLE" class="btn btn-primary pull-right" OnClick="btnKitapTanim_Click"/>
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
                                            <i class="material-icons">book</i>Kitaplar
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
                                        <th>Kitap Adı</th>
                                        <th>Yazar</th>
                                        <th>Yayın Evi</th>
                                        <th>Tanıtım</th>
                                        <th>Ortalama Puan</th>
                                        <th>Okunma Sayısı</th>
                                        <th>Detay</th
                                    </thead>
                                    <tbody>
                                         <asp:Repeater ID="rptKitaplar" runat="server">
                                             <ItemTemplate>
                                                 <tr>
                                                    <td><%#Eval("KITAP_ADI") %></td>
                                                    <td><%#Eval("YAZAR") %></td>
                                                    <td><%#Eval("YAYIN_EVI") %></td>
                                                     <td><%#Eval("TANITIM") %></td>
                                                     <td><%#Eval("ORTALAMA_PUAN") %></td>
                                                    <td><%#Eval("OKUNMA_SAYISI") %></td>
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
                                            <i class="material-icons">book</i> Kitap İncelemeleri
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
                                        <th>Kitap Adı</th>
                                        <th>İnceleme</th>
                                        <th>Detay</th
                                    </thead>
                                    <tbody>
                                         <asp:Repeater ID="rptIncelemeler" runat="server">
                                             <ItemTemplate>
                                                 <tr>
                                                    <td><%#Eval("KITAP_ADI") %></td>
                                                    <td><%#Eval("INCELEME") %></td>
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
                                            <i class="material-icons">book</i> Kitap Alıntıları
                                            <div class="ripple-container"></div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-content">
                        <div class="tab-content">
                            <div class="tab-pane active" id="alinti">
                                <table class="table">
                                      <thead class="text-warning">
                                        <th>Kitap Adı</th>
                                        <th>Alıntı</th>
                                        <th>Detay</th
                                    </thead>
                                    <tbody>
                                         <asp:Repeater ID="rptAlintilar" runat="server">
                                             <ItemTemplate>
                                                 <tr>
                                                    <td><%#Eval("KITAP_ADI") %></td>
                                                    <td><%#Eval("ALINTI") %></td>
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

    
</asp:Content>
