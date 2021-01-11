<%@ Page Title="Admin Home page" Language="C#" AutoEventWireup="true" CodeBehind="adminproduk.aspx.cs" Inherits="PIGMA.admin" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet">
    <link href="~/AdminContent/admin.css" rel="stylesheet" />
    <link href="~/AdminContent/adminmenu.css" rel="stylesheet" />
</head>

<body>

    <!---- header --->
    <nav class="navbar-dark bg-dark sticky-top">
        <a class="navbar-brand brand">
            <img src="AdminContent/Logo.png"></a>
        <span class="header-right text">Transmart Carrefour Central Park</span>

    </nav>
    <div class="container-fluid row">
        <!--button-->
        <div class="col-md-4" style="padding-top: 42px;">
            <div class="col-8">
                <div class="flex-column">
                    <ul class="navbar-nav">
                        <li class="nav-item ">
                            <a class="nav-link" href="admin.aspx">
                                <img style="padding-left: 15px; padding-bottom: 5px;" src="content/images/Beranda.png">
                                <span class="button-text">Beranda</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="adminpesanan.aspx">
                                <img style="padding-left: 10px; padding-bottom: 5px;" src="content/images/Penjualan.png">
                                <span class="button-text">Pesanan</span>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="adminproduk.aspx">
                                <img style="padding-left: 10px; padding-bottom: 5px;" src="content/images/Box.png">
                                <span class="button-text nyala">Produk</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="adminpengaturan.aspx">
                                <img style="padding-left: 10px; padding-bottom: 5px;" src="content/images/Settings.png">
                                <span class="button-text">Pengaturan</span>
                            </a>
                        </li>
                    </ul>

                </div>
                <button class="button-out">Keluar</button>
            </div>



        </div>

        <!--content-->
        <div class="col-md-8" style="background-color: #FCFCFC; padding-top: 40px;">
            <div class="row">
                <div class="col-md-6">
                    <h2>Daftar Pesanan
                <br />
                        <span style="font-size: 18px">Atur dan kelola produk jualanmu</span>
                    </h2>
                </div>
                <div class="col-md-6">
                    <button style="height: 60px; width: 200px;margin-left : 100px; margin-top: 30px; background-color: #74B816; color: white; border-radius: 8px; border: solid thin">Tambah Produk</button>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-6">

                    <div class="sb-example-1">
                        <div class="search">
                            <input type="text" class="searchTerm" placeholder="What are you looking for?">
                            <button type="submit" class="searchButton">
                                <i class="fa fa-search">
                                    <img src="AdminContent/magnify.png" /></i>
                            </button>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <select name="kategori" id="kategori" style="height: 40px;border: solid thin; border-radius:10px; width:150px; background-color:white; color:black; margin-top: 10px;">
                        <option value="kategori ">Kategori</option>
                        <option value="harga">Harga</option>
                    </select>
                    <select name="status" id="status" style="height: 40px;border: solid thin; border-radius:10px; width:150px; background-color:white; color:black; margin-top: 10px;">
                        <option value="habis">Habis</option>
                        <option value="aktif">Aktif</option>
                    </select>
                </div>
            </div>
            


        </div>
    </div>
</body>
</html>
