<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="PIGMA.HomePage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid Homepage">
        <div class="row" style="margin-top:40px;">
            <div class="col-md-4">
                <div class="row">
                    <div class="col-md-12">
                        <h1 style="font-size:44px;font-weight:bold;color:#97C200;">Belanja Bulanan di Market Terpercaya</h1>
                        <a href="Login.aspx">login</a>
                    </div>
                </div>
                <div class="row" style="margin-top:32px;">
                    <div class="col-md-12">
                        <p>Kebutuhan bulanan anda dapat dilakukan secara online<br />dan sudah terjamin hanya dari market terpercaya di<br />sekitar anda, monthly solusinya!!</p>
                    </div>
                </div>
                <div class="row" style="margin-top:32px;">
                    <div class="col-md-12" id ="search" style="display:flex;flex-direction:row;">
                        <input runat="server" id="txtSearchBar" type="text" class="Searchbar"  placeholder="Cari Produk">
                        <asp:ImageButton runat="server"  Cssclass="MapButton" ImageUrl="Content/Images/MapButton.png" OnClick="btnMap_Click"/> 
                    </div>
                </div>
                
            </div>
            <div class="col-md-2"></div>
            <div class="col-md-6" style="display:flex;flex-direction:column;">
                <img class="card-img-topPlus" src="Content/Images/HomePageTopImage.PNG" alt="fas">
            </div>
        </div>
        <div class="row Homepage-Bottom" runat="server" id="panelSupermarketTerdekat" visible="false">
            <div class="col-md-3">
                <h3 style="color:ghostwhite">Supermarket Terdekat</h3>
            </div>
            <div class="col-md-9">
                <div class="Homepage-List row">
                    <asp:ImageButton CssClass="imgHomePlus" runat="server" ImageUrl="Content/Images/Giant.PNG" OnClick="btnGiant_Click"/>
                    <div class="imgDividePlus"></div>
                    <asp:ImageButton CssClass="imgHomePlus" runat="server" ImageUrl="Content/Images/GrandLucky.PNG" OnClick="btnGrandLucky_Click" />
                    <div class="imgDividePlus"></div>
                    <asp:ImageButton CssClass="imgHomePlus" runat="server" ImageUrl="Content/Images/Transmart.PNG" OnClick="btnTransmart_Click" />
                    <!--page2-->
                    <asp:ImageButton CssClass="imgHomePlus" runat="server" ImageUrl="Content/Images/RanchMarket.PNG" OnClick="btnRanchMarket_Click"/>
                    <div class="imgDividePlus"></div>
                    <asp:ImageButton CssClass="imgHomePlus" runat="server" ImageUrl="Content/Images/Giant.PNG" />
                    <div class="imgDividePlus"></div>
                    <asp:ImageButton CssClass="imgHomePlus" runat="server" ImageUrl="Content/Images/Giant.PNG" />

                </div>
            </div>
        </div>


    </div>

    

</asp:Content>

