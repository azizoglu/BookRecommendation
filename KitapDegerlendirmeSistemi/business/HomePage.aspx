<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="KitapDegerlendirmeSistemi.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header" data-background-color="orange">
                    <h4 class="title">Kullanıcı Öneri</h4>
                    <p class="category">Kullanıcının okuduğu kitaplarla ortak kitapları okuyan kullanıcılar</p>
                </div>
                <div class="card-content table-responsive">
                    <table class="table table-hover">
                        <thead class="text-warning">
                            <th>ID</th>
                            <th>Kullanıcı Adı</th>
                            <th>Ortak Kitap Sayısı</th
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptOrtakKitap" runat="server">
                                 <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("KULLANICI_ID") %></td>
                                        <td><%#Eval("KULLANICI_ADI") %></td>
                                        <td><%#Eval("ORTAK_KITAP") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div class="card">
                <div class="card-header" data-background-color="blue">
                    <h4 class="title">Kullanıcı Öneri</h4>
                    <p class="category">Kullanıcının verdiği puanlardan aynı kitaplara aynı puanları veren kullanıcılar</p>
                </div>
                <div class="card-content table-responsive">
                    <table class="table table-hover">
                        <thead class="text-warning">
                            <th>ID</th>
                            <th>Kullanıcı Adı</th>
                            <th>Puan</th>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptOrtakPuan" runat="server">
                                 <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("KULLANICI_ID") %></td>
                                        <td><%#Eval("KULLANICI_ADI") %></td>
                                        <td><%#Eval("PUAN") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
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
                                            <i class="material-icons">book</i> Okunmayan Kitaplar
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
                                        <th>Kitap Adı</th>
                                        <th>Detay</th
                                    </thead>
                                    <tbody>
                                         <asp:Repeater ID="rptOkunmayan" runat="server">
                                             <ItemTemplate>
                                                 <tr>
                                                    <td><%#Eval("ID") %></td>
                                                    <td><%#Eval("ADI") %></td>
                                                    <td class="td-actions text-right">
                                                        <a href="../business/KitapDetay.aspx?kitap_adi=<%#Eval("ADI") %>" class="btn btn-primary btn-simple btn-xs"><i class="material-icons">check</i></a>
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
