<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="KitapTanim.aspx.cs" Inherits="KitapDegerlendirmeSistemi.business.KitapTanim" %>
 <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SideBar" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div style="width=100%; margin-bottom:20px;">
        <asp:SqlDataSource ID="dsKitap" runat="server" ConnectionString="<%$ ConnectionStrings:DB_KITAP_DEGERLENDIRMEConnectionString %>" 
        DeleteCommand="DELETE FROM KITAP WHERE ID=@ID" 
        InsertCommand="
        DECLARE @YAYIN_EVI_ID INT
        DECLARE @KITAP_ID INT;
        DECLARE @YAZAR_ID INT;
        
        INSERT INTO YAYIN_EVI (ADI,ADRES) VALUES (@YAYIN_EVI_ADI,@YAYIN_EVI_ADRES);
        INSERT INTO YAZAR (ADI,SOYADI) VALUES (@YAZAR_ADI,@YAZAR_SOYADI)

        SET @YAYIN_EVI_ID=(SELECT ID FROM YAYIN_EVI WHERE ADI=@YAYIN_EVI_ADI);

        INSERT INTO KITAP (ADI,ISBN,SAYFA_SAYISI,YAYIN_EVI_ID,YAYIN_TARIHI) VALUES (@KITAP_ADI,@ISBN,@SAYFA_SAYISI,@YAYIN_EVI_ID,@YAYIN_TARIHI)
        SET @KITAP_ID=(SELECT ID FROM KITAP WHERE ADI=@KITAP_ADI)
        SET @YAZAR_ID=(SELECT ID FROM YAZAR WHERE ADI=@YAZAR_ADI AND SOYADI=@YAZAR_SOYADI)

        INSERT INTO KITAP_YAZAR (KITAP_ID,YAZAR_ID) VALUES (@KITAP_ID,@YAZAR_ID)
        " 
        SelectCommand="SELECT KT.ID,YE.ADI AS YAYIN_EVI_ADI,YE.ADRES AS YAYIN_EVI_ADRES, KT.ADI AS KITAP_ADI,KT.ISBN,
        Y.ADI AS YAZAR_ADI, Y.SOYADI AS YAZAR_SOYADI,KT.YAYIN_TARIHI,KT.SAYFA_SAYISI 
        FROM KITAP AS KT, KITAP_YAZAR AS KY,YAZAR AS Y,YAYIN_EVI AS YE 
        WHERE KT.ID=KY.KITAP_ID AND Y.ID=KY.YAZAR_ID AND YE.ID=KT.YAYIN_EVI_ID"
        UpdateCommand="UPDATE YAYIN_EVI SET ADI=@YAYIN_EVI_ADI,ADRES=@YAYIN_EVI_ADRES WHERE ID=(SELECT YAYIN_EVI_ID FROM KITAP WHERE ID=@ID);
        UPDATE KITAP SET ADI=@KITAP_ADI,ISBN=@ISBN,YAYIN_TARIHI=@YAYIN_TARIHI,SAYFA_SAYISI=@SAYFA_SAYISI WHERE ID=@ID;
        UPDATE YAZAR SET ADI=@YAZAR_ADI,SOYADI=@YAZAR_SOYADI WHERE ID=(SELECT ID FROM KITAP WHERE ID=@ID);">
        <DeleteParameters>
            <asp:Parameter Name="ID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="YAYIN_EVI_ID" />
            <asp:Parameter Name="KITAP_ID" />
            <asp:Parameter Name="YAZAR_ID" />
            <asp:Parameter Name="YAYIN_EVI_ADI" />
            <asp:Parameter Name="YAYIN_EVI_ADRES" />
            <asp:Parameter Name="YAZAR_ADI" />
            <asp:Parameter Name="YAZAR_SOYADI" />
            <asp:Parameter Name="KITAP_ADI" />
            <asp:Parameter Name="ISBN" />
            <asp:Parameter Name="SAYFA_SAYISI" />
            <asp:Parameter Name="YAYIN_TARIHI" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="YAYIN_EVI_ADI" />
            <asp:Parameter Name="YAYIN_EVI_ADRES" />
            <asp:Parameter Name="ID" />
            <asp:Parameter Name="KITAP_ADI" />
            <asp:Parameter Name="ISBN" />
            <asp:Parameter Name="YAYIN_TARIHI" />
            <asp:Parameter Name="SAYFA_SAYISI" />
            <asp:Parameter Name="YAZAR_ADI" />
            <asp:Parameter Name="YAZAR_SOYADI" />
        </UpdateParameters>
</asp:SqlDataSource>
        <asp:GridView ID="grvKitaplar" runat="server" Width="100%"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="dsKitap" ForeColor="#333333"
        GridLines="None" OnSelectedIndexChanged="grvKitaplar_SelectedIndexChanged" ShowFooter="True" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="YAYIN_EVI_ADI" HeaderText="YAYIN_EVI_ADI" SortExpression="YAYIN_EVI_ADI" />
            <asp:BoundField DataField="YAYIN_EVI_ADRES" HeaderText="YAYIN_EVI_ADRES" SortExpression="YAYIN_EVI_ADRES" />
            <asp:BoundField DataField="KITAP_ADI" HeaderText="KITAP_ADI" SortExpression="KITAP_ADI" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="YAZAR_ADI" HeaderText="YAZAR_ADI" SortExpression="YAZAR_ADI" />
            <asp:BoundField DataField="YAZAR_SOYADI" HeaderText="YAZAR_SOYADI" SortExpression="YAZAR_SOYADI" />
            <asp:BoundField DataField="YAYIN_TARIHI" HeaderText="YAYIN_TARIHI" SortExpression="YAYIN_TARIHI" />
            <asp:BoundField DataField="SAYFA_SAYISI" HeaderText="SAYFA_SAYISI" SortExpression="SAYFA_SAYISI" />
            <asp:CommandField DeleteText="Sil" EditText="Düzenle" InsertText="Ekle" NewText="Yeni" SelectText="Seç" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" ShowSelectButton="True" UpdateText="Güncelle" InsertVisible="False" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header" data-background-color="purple">
                    <h4 class="title">Kitap Ekle</h4>
                    <p class="category">Kitap Bilgilerini Giriniz</p>
                </div>
                <div class="card-content">
                    <form>
                        <div class="row">
                            <div class="col-md-5">
                                <div class="form-group label-floating">
                                    <label class="control-label">Yayın Evi</label>
                                    <asp:TextBox ID="tbYayinEvi" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group label-floating">
                                    <label class="control-label">Yayın Evi Adres</label>
                                    <asp:TextBox ID="tbAdres" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                 <div class="form-group label-floating">
                                    <label class="control-label">Yazar Adı</label>
                                    <asp:TextBox ID="tbYazarAdi" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                           <div class="col-md-4">
                                 <div class="form-group label-floating">
                                    <label class="control-label">Yazar Soyadı</label>
                                    <asp:TextBox ID="tbYazarSoyadi" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                 <div class="form-group label-floating">
                                    <label class="control-label">ISBN</label>
                                    <asp:TextBox ID="tbISBN" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                 <div class="form-group label-floating">
                                    <label class="control-label">Kitap Adı</label>
                                    <asp:TextBox ID="tbKitapAdi" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                 <div class="form-group label-floating">
                                    <label class="control-label">Sayfa Sayısı</label>
                                    <asp:TextBox ID="tbSayfaSayisi" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                           <div class="col-md-4">
                                 <div class="form-group label-floating">
                                    <label class="control-label">Yayın Tarihi</label>
                                      <cc1:ToolkitScriptManager ID="toolScriptManageer1" runat="server"></cc1:ToolkitScriptManager>  
                                    <cc1:CalendarExtender ID="Calendar1" PopupButtonID="imgPopup" runat="server" TargetControlID="tbYayinTarihi" Format="yyyy-MM-dd"> </cc1:CalendarExtender>
                                    <asp:TextBox ID="tbYayinTarihi" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                 <div class="form-group label-floating">
                                    <label class="control-label">Tanıtım</label>
                                    <asp:TextBox ID="tbTanitim" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <asp:Button ID="btnKitapEkle" runat="server" Text="EKLE" class="btn btn-primary pull-right" OnClick="btnKitapEkle_Click"/>
                        <div class="clearfix"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
