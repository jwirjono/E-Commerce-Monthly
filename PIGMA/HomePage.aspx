<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="PIGMA.HomePage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid Homepage">
        <div class="row" style="margin-top:40px;">
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-12">
                        <h1 style="font-size:44px;font-weight:bold;color:#373F41;">Belanja Bulanan di Market Terpercaya</h1>
                    </div>
                </div>
                <div class="row" style="margin-top:32px;">
                    <div class="col-md-12">
                        <p style="font-size:18px">Kebutuhan bulanan anda dapat dilakukan secara online<br />dan sudah terjamin hanya dari market terpercaya di<br />sekitar anda, monthly solusinya!!</p>
                    </div>
                </div>
                <div class="row" style="margin-top:32px;">
                    <div class="col-md-3"  style="display:flex;flex-direction:row;">
                        <input runat="server" id="txtKodePos" type="text" class="Searchbar"  placeholder="Kode Pos">
                    </div>
                    <div class="col-md-9" id ="search" style="display:flex;flex-direction:row;">
                        <input runat="server" id="txtSearchBar" type="text" class="Searchbar"  placeholder="Masukan Alamat">
                        <asp:ImageButton runat="server"  Cssclass="MapButton" ImageUrl="Content/Images/MapButton.png" OnClick="btnMap_Click"/> 
                    </div>
                </div>
                <asp:Panel ID="pnlAlamatKosong" runat="server" Visible="false">
                    <p style="color:red;margin-top:15px">Alamat Tidak boleh kosong</p>
                </asp:Panel>
                <div class="row" style="margin:20px -15px;">
                    <div class="col-2">
                        <p style="color:#373F41;font-weight:bold">Pemberitahuan</p>
                    </div>
                    <div class="col-1">
                    </div>
                    <div class="col-md-9">
                        <p>Masukan alamat pengiriman terlebih dahulu untuk menampilkan supermarket terdekat</p>
                    </div>
                </div>
                
            </div>
            <div class="col-md-2"></div>
            <div class="col-md-6" style="display:flex;flex-direction:column;">
                <img class="card-img-topPlus" src="Content/Images/HomePageTopImage.PNG" alt="fas">
            </div>
        </div>
        <Label style="font-size:24px;font-weight:bold;color:#373F41;margin:30px 0px 10px 0px;" runat="server" id="lbltext1" visible="false">Supermarket Terdekat</Label>
        <div class="row Homepage-Bottom" runat="server" id="panelSupermarketTerdekat" visible="false">
            <div class="col-md-12">
                <div class="Homepage-List row">
                    <asp:ImageButton CssClass="imgHomePlus" runat="server" ImageUrl="Content/Images/LotteMart.PNG" OnClick="btnGiant_Click" ID="mapLotte"/>
                    <div class="imgDividePlus"></div>
                    <asp:ImageButton CssClass="imgHomePlus" runat="server" ImageUrl="Content/Images/Grand.PNG" OnClick="btnGrandLucky_Click" ID="mapGrand"/>
                    <div class="imgDividePlus"></div>
                    <asp:ImageButton CssClass="imgHomePlus" runat="server" ImageUrl="Content/Images/Ranch.PNG" OnClick="btnTransmart_Click" ID="mapRanch"/>
                    <div class="imgDividePlus"></div>
                    <!--page2-->
                    

                </div>
            </div>
        </div>


    </div>

    

</asp:Content>

