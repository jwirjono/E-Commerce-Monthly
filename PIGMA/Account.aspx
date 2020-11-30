<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="PIGMA.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid row">
        <div class="col-md-2 container sidebarAccount">
            <div class="gambarSidebarAccount">
                <img src="Content/Images/ProfilePicture.png" alt="">
                <div class="container" style="margin-left:20px">
                    <p style="font-size:20px;color:#262628;"><b>Sophi Nuraeni</b></p>
                    <a style="font-size:16px;color:#BAB9C1;" href="/">Edit Foto</a>
                </div>
            </div>
            <div class="listSidebarAccount">
                <img src="Content/Images/UserAkunSaya.png" alt="">
                <p>Akun Saya</p>
            </div>
            <div class="listSidebarAccount lsaActive">
                <img src="Content/Images/AkunPesanan.png" alt="">
                <p>Pesanan</p>
            </div>
            <div class="listSidebarAccount">
                <img src="Content/Images/Transaksi Berulang.png" alt="">
                <p>Transaksi Berulang</p>
            </div>
            <a class="btn btn-danger keluarSidebarAccount col-md-12">Keluar</a>
        </div>
        <div class="col-md-1">

        </div>
        <div class="col-md-9">
            fbhasofsoaofas
        </div>
    </div>
</asp:Content>
