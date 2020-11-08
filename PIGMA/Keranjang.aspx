<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Keranjang.aspx.cs" Inherits="PIGMA.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid KeranjangPlus">
        <div class ="row keranjangHeader">
            <asp:Label runat="server" ID="lblHeader" CssClass="labelHeader">Keranjang Belanja</asp:Label>
        </div>
        <div class ="row" style="flex-direction:column;">
            <asp:Panel CssClass="keranjangKosong" ID="panelKeranjangKosong" runat="server">
                <img style="width:50%;margin-left:auto;margin-right:auto;"src="Content/Images/KeranjangKosong.png" alt="Kosong">
                <p style="font-size:24px;color:#262628;"><b>Wah, Keranjang Belanjamu Kosong</b></p>
                <p style="font-size:16px;color:#373F41;">Daripada dianggurin, mending isi dengan barang-barang impianmu. Yuk, cek sekarang!</p>
                <asp:Button style="font-size:18px;width:40%;padding:10px 0px;margin-left:auto;margin-right:auto;" runat="server" href="~/Keranjang" CssClass="btn grnBtn" OnClick="btn_mulaibelanja" Text="Mulai Belanja"/>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
