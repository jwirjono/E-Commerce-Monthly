<%@ Page Title="Admin Home page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="PIGMA.WebForm2" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="~/Content/bootstrap.min.css" rel="stylesheet">
    <link href="~/Content/HomePlus.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/FormPlus.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form runat="server">
        <div class="navbar navbar-inverse container-fluid" style="background-color: #373f41; color: #ffffff; border-radius: 0px; border: 1px solid #373f41;">
            <div class="col-md-1">
                <a class="navbar-brand" runat="server" href="~/">MONTHLY</a>
                <a class="navbar-brand" runat="server" href="~/">Partner</a>
            </div>
            <div class="col-md-2">
                <a class="navbar-brand" runat="server" href="~/">Transmart Carrefour Central Park</a>
                <button type="button" class="btn btn-secondary btn-sm">Keluar</button>
            </div>
        </div>
        <div class="container-fluid body-content MainContentPlus">
            <div class="col-md-1">
                <div class="btn-group-vertical">
                    <button type="button" class="btn btn-light" style="color: #373f41; border-radius: 10px; border: #373f41 1px solid;">Beranda</button>
                    <button type="button" class="btn btn-light" style="color: #373f41; border-radius: 10px; border: #373f41 1px solid;">Penjualan</button>
                    <button type="button" class="btn btn-light" style="color: #373f41; border-radius: 10px; border: #373f41 1px solid;">Produk</button>
                    <button type="button" class="btn btn-light" style="color: #373f41; border-radius: 10px; border: #373f41 1px solid;">Statistik</button>
                    <button type="button" class="btn btn-light" style="color: #373f41; border-radius: 10px; border: #373f41 1px solid;">Pengaturan</button>
                </div>
            </div>
            <div class="col-md-2">
                <a class="navbar-brand" runat="server" href="~/">Transmart Carrefour Central Park</a>
            </div>
        </div>
        <footer>
            <div class="footerPlus container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <h4>BANTUAN</h4>
                        <div class="ulPlus">
                            <a class="liPlus" runat="server" href="~/">Monthly Help Center</a>
                            <a class="liPlus" runat="server" href="~/">Syarat dan Ketentuan</a>
                            <a class="liPlus" runat="server" href="~/">Kebijakan Privasi</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <h4>IKUTI KAMI</h4>
                    </div>
                    <div class="col-md-5" style="border-left: 1px white solid; height: 175px;">
                        <h3>Segera daftarkan supermarket anda menjadi partner monthly</h3>
                        <p>lorem ipsum yooooooooooooooooooooooooooooooooooooooooooooooo ooooooooooooooooooooooooooooooooooooooooooooo</p>
                        <button type="button" class="btn btn-light" style="color: #373f41; border-radius: 10px; border: #373f41 1px solid;">Daftar Supermarket</button>
                    </div>
                </div>
            </div>

        </footer>
    </form>
</body>
</html>
