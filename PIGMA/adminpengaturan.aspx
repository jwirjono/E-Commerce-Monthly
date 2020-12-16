<%@ Page Title="Admin Home page" Language="C#" AutoEventWireup="true" CodeBehind="adminpengaturan.aspx.cs" Inherits="PIGMA.admin" %>

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
    <div class="col-md-4" style="padding-top : 42px;">
        <div class="col-8">
            <div class="flex-column">
                <ul class="navbar-nav">
                    <li class="nav-item ">
                        <a class="nav-link" href="admin.aspx">
                            <img style="padding-left : 15px; padding-bottom : 5px;" src="content/images/Beranda.png">
                            <span class="button-text" >Beranda</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a  class="nav-link" href="adminpesanan.aspx">
                            <img style="padding-left : 10px; padding-bottom : 5px;" src="content/images/Penjualan.png">
                            <span class="button-text">Pesanan</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="adminproduk.aspx">
                            <img style="padding-left : 10px; padding-bottom : 5px;"  src="content/images/Box.png">
                            <span class="button-text">Produk</span>
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a  class="nav-link" href="adminpengaturan.aspx">
                            <img style="padding-left : 10px; padding-bottom : 5px;" src="content/images/Settings.png">
                            <span class="button-text active">Pengaturan</span>
                        </a>
                    </li>
                </ul>
                
            </div>
            <button class="button-out">Keluar</button>
        </div>
            

        
    </div>

    <!--content-->
    <div class="col-md-8" style="background-color:#FCFCFC">
        <div class="row">
            <div class="col-md-12">
            <h2>Transmart Carrefour Central Park
                <label class="button-Verifikasi" style="text-align : center">Terverifikasi</label>
                <br />
                <span style="font-size : 18px;">Selamat Datang Kembali di Toko</span>
            </h2>
                </div>
            
            
        </div>
        <hr />
        <div class="row rowsaldo">
            <div class ="col-md-12">
            <h3>Saldo
                <br />
                <span style="font-size:18px;">Aktivitas saldo yang dapat anda pantau</span>
            </h3>
                </div>
            <div class="col-md-4">
                <label><img src="AdminContent/Card.png"/></label>
            </div>
        </div>
        <hr />
        <div class="row rowcontent">
            <div class="col-md-12">
                <h3>Penting hari ini
                    <br />
                <span style="font-size:18px;">Aktivitas yang perlu anda pantau</span>
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
            <span style="font-size:18px;">Produk yang sering dibeli</span>
            </h2>
                </div>
        </div>
        

    </div>
    </div>
</body>
</html>
