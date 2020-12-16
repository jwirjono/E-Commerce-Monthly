<%@ Page Title="Admin Home page" Language="C#" AutoEventWireup="true" CodeBehind="adminproduk.aspx.cs" Inherits="PIGMA.admin" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet">
    <link href="~/AdminContent/admin.css" rel="stylesheet" />

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
                                <span class="button-text active">Produk</span>
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
                    <button style="height: 40px; width: 150px; margin-top: 30px; background-color: #97C200; color: white; border-radius: 8px; border: solid thin">Etalase</button>
                    <button style="height: 40px; width: 150px; margin-top: 30px; background-color: #97C200; color: white; border-radius: 8px; border: solid thin">Tambah Produk</button>
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
                    <select name="kategori" id="kategori" style="height: 40px;border: solid thin; border-radius:10px; width:150px; background-color:#97C200; color:white; margin-top: 10px;">
                        <option value="kategori ">Kategori</option>
                        <option value="harga">Harga</option>
                    </select>
                    <select name="status" id="status" style="height: 40px;border: solid thin; border-radius:10px; width:150px; background-color:#97C200; color:white; margin-top: 10px;">
                        <option value="habis">Habis</option>
                        <option value="aktif">Aktif</option>
                    </select>
                </div>
            </div>
            <div class="row rowcontent">
                <div class="col-md-12">
                    <h3>Penting hari ini
                    <br />
                        <span style="font-size: 18px;">Aktivitas yang perlu anda pantau</span>
                    </h3>
                </div>
                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-1">
                    <div class="card border-left-primary produk">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col">
                                    <div class="card-text">Pesanan Baru</div>
                                    <div class="card-number">0</div>
                                </div>
                                <div class="align-self-end ml-auto">
                                    <a class="card-button" href="#">Lihat</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-1">
                    <div class="card border-left-primary produk">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col">
                                    <div class="card-text">Siap Dikirim / Diterima</div>
                                    <div class="card-number">0</div>
                                </div>
                                <div class="align-self-end ml-auto">
                                    <a class="card-button" href="#">Lihat</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-1">
                    <div class="card border-left-primary produk">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col">
                                    <div class="card-text">Produk Tidak Aktif</div>
                                    <div class="card-number">0</div>
                                </div>
                                <div class="align-self-end ml-auto">
                                    <a class="card-button" href="#">Lihat</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pending Requests Card Example -->
                <div class="col-xl-3 col-md-6 mb-1">
                    <div class="card border-left-primary produk">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col">
                                    <div class="card-text">Produk Habis</div>
                                    <div class="card-number">0</div>
                                </div>
                                <div class="align-self-end ml-auto">
                                    <a class="card-button" href="#">Lihat</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <hr />
            <div class="row rowcontent">
                <div class="col-md-12">
                    <h2>Produk
            <br />
                        <span style="font-size: 18px;">Produk yang sering dibeli</span>
                    </h2>
                </div>
            </div>


        </div>
    </div>
</body>
</html>
