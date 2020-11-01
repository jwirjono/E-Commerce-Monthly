<%@ Page Title="Produk" Language="C#" AutoEventWireup="true" CodeBehind="adminproduk.aspx.cs" Inherits="PIGMA.admin" %>

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
            <img src="content/images/logo.png"></a>
        <span class="header-right text">Transmart Carrefour Central Park</span>

    </nav>
    <div class="container-fluid row">
    <!--button-->
    <div class="col-md-3">
        <div class="col-8">
            <div class="flex-column">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="admin.aspx">
                            <img src="content/images/Beranda.png">
                            <span class="button-text">Beranda</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a  class="nav-link" href="adminpesanan.aspx">
                            <img src="content/images/Penjualan.png">
                            <span class="button-text">Pesanan</span>
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="adminproduk.aspx" >
                            <img src="content/images/Box.png">
                            <span class="button-text active">Produk</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a  class="nav-link" href="adminpengaturan.aspx">
                            <img src="content/images/Settings.png">
                            <span class="button-text">Pengaturan</span>
                        </a>
                    </li>
                </ul>
                <button class="button-out">Keluar</button>
            </div>
        </div>
    </div>

    <!--content-->
    <div class="col-md-9">
        <div class="row">
            <h2>Transmart Carrefour Central Park
                <label class="button-Verifikasi" style="text-align : center">Terverifikasi</label></h2>
            <h5>Selamat Datang Kembali di Toko</h5>
            <hr />
        </div>
        <div class="row rowsaldo">
            <h1>saldo</h1>
        </div>
        <div class="row rowcontent">
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
            <hr />
        </div>
        <div class="row rowcontent">
            <h1>Transmart Carrefour Central Park
                <button class="button-Verifikasi">Terverifikasi</button></h1>
            <h5>Selamat Datang Kembali di Toko</h5>
            <hr />
        </div>
        

    </div>
    </div>
</body>
</html>
