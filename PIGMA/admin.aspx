<%@ Page Title="Admin Home page" Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="PIGMA.admin" %>

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
    <nav class="navbar-light sticky-top">
        <a class="navbar-brand brand" style="margin-top:5px">
            <img src="AdminContent/MONTHLYPartner.png"></a>
        <span class="header-right text">Transmart Carrefour Central Park</span>

    </nav>
    <div class="container-fluid row">
    <!--button-->
    <div class="col-md-3" style="padding-top : 42px; margin-left : 0px;">
        <div class="col-12">
            <div class="flex-column"">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="admin.aspx">
                            <img style="padding-left : 15px; padding-bottom : 5px;" src="content/images/Beranda.png">
                            <span class="button-text nyala" >Beranda</span>
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
                    <li class="nav-item">
                        <a  class="nav-link" href="adminpengaturan.aspx">
                            <img style="padding-left : 10px; padding-bottom : 5px;" src="content/images/Settings.png">
                            <span class="button-text">Pengaturan</span>
                        </a>
                    </li>
                </ul>
                
            </div>
            
        </div>
        <button class="button-out" style="vertical-align:bottom;">Keluar</button>
    </div>
    


    <!--content-->
    <div class="col-md-9" style="background-color:#FCFCFC">
        <div class="row">
            <div class="col-md-12" style ="margin-bottom :50px">
                <h2>Transmart Carrefour Central Park
                <label class="button-Verifikasi" style="text-align : center">Terverifikasi</label>
                <br />
                <span style="font-size : 18px;">Selamat Datang Kembali di Toko</span>
                </h2>
            </div>
            
        </div>
        <hr />
        <div class="row rowsaldo">
            <div class ="col-md-9">
            <h3>Saldo
                <br />
                <span style="font-size:18px;">Aktivitas saldo yang dapat anda pantau</span>
            </h3>
                </div>
            <div class="col-md-5">
                <label><img src="AdminContent/Card.png"/></label>
            </div>
            <div class="col-md-4">
                <label><img src="AdminContent/Card2.png"/></label>
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
            <div class="col-xl-2 col-md-4 mb-1 contentpertama">
              <div class="card border-left-primary produk">
                <div class="card-body">
                  <div class="row">
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
            <div class="col-xl-2 col-md-4 mb-1 contentpertama">
              <div class="card border-left-primary produk">
                <div class="card-body">
                  <div class="row">
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
            <div class="col-xl-2 col-md-4 mb-1 contentpertama">
              <div class="card border-left-primary produk">
                <div class="card-body">
                  <div class="row">
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
            <div class="col-xl-2 col-md-4 mb-1 contentpertama">
              <div class="card border-left-primary produk">
                <div class="card-body">
                  <div class="row">
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
        <div class="row rowcontent" style="margin-bottom : 100px">
            <div class="col-md-12">
            <h2>Produk
            <br />
            <span style="font-size:18px;">Produk yang sering dibeli</span>
            </h2>
                </div>
            <div class ="produkcard">
                <div class="produkcardside">
                <div class="cardProdukBelanjaPlus">
                    <div style="margin-top : 40px; margin-left:50px;">
                            <img src="Content/Images/CardProduk.png" alt="">
                            <p style="color:#373F41"><b>Apel Merah</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">1Kg</p>
                            <p style="color:#373F41"><b>Rp.30000</b></p> 
                        </div>
                    
                </div>
                <div class="cardProdukview">
                    <div class ="viewlist">
                        <img src="AdminContent/logoview.png"/>
                        <a class="viewlisttext"> 20</a>
                        <a  class="viewlisttext"><img src="AdminContent/logokeranjang.png"/></a>
                        <a class="viewlisttext"> 20</a>
                    </div>
                            </div>
                    </div>
                 <div class="produkcardside">
                <div class="cardProdukBelanjaPlus">
                    <div class="viewimg">
                            <img src="AdminContent/Yakiniku Shortplate.png" alt="">
                            <p style="color:#373F41"><b>Beef Yakiniku</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">400g</p>
                            <p style="color:#373F41"><b>Rp 50.500</b></p> 
                        </div>
                    
                </div>
                <div class="cardProdukview">
                    <div class ="viewlist">
                        <img src="AdminContent/logoview.png"/>
                        <a class="viewlisttext"> 40</a>
                        <a  class="viewlisttext"><img src="AdminContent/logokeranjang.png"/></a>
                        <a class="viewlisttext"> 35</a>
                    </div>
                            </div>
                    </div>
                <div class="produkcardside">
                <div class="cardProdukBelanjaPlus">
                    <div class ="viewimg">
                            <img src="AdminContent/Beef Bulgogi.png" alt="">
                            <p style="color:#373F41"><b>Beef Bulgogi</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">350g</p>
                            <p style="color:#373F41"><b>Rp 53.500</b></p> 
                    </div>
                </div>
                <div class="cardProdukview">
                    <div class ="viewimg">
                        <img src="AdminContent/logoview.png"/>
                        <a class="viewlisttext"> 40</a>
                        <a  class="viewlisttext"><img src="AdminContent/logokeranjang.png"/></a>
                        <a class="viewlisttext"> 35</a>
                    </div>
                            </div>
                    </div>
                <div class="produkcardside">
                <div class="cardProdukBelanjaPlus">
                    <div class ="viewimg">
                            <img src="AdminContent/Salmon Teriyaki.png" alt="">
                            <p style="color:#373F41"><b>Fresh Salmon</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">200g</p>
                            <p style="color:#373F41"><b>Rp 93.500</b></p> 
                    </div>
                </div>
                <div class="cardProdukview">
                    <div class ="viewlist">
                        <img src="AdminContent/logoview.png"/>
                        <a class="viewlisttext"> 40</a>
                        <a  class="viewlisttext"><img src="AdminContent/logokeranjang.png"/></a>
                        <a class="viewlisttext"> 35</a>
                    </div>
                            </div>
                    </div>
                <div class="produkcardside">
                <div class="cardProdukBelanjaPlus">
                    <div class ="viewimg">
                            <img src="AdminContent/Salmon Teriyaki.png" alt="">
                            <p style="color:#373F41"><b>Salmon Teriyaki</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">200g</p>
                            <p style="color:#373F41"><b>Rp 93.500</b></p> 
                    </div>
                </div>
                <div class="cardProdukview">
                    <div class ="viewlist">
                        <img src="AdminContent/logoview.png"/>
                        <a class="viewlisttext"> 40</a>
                        <a  class="viewlisttext"><img src="AdminContent/logokeranjang.png"/></a>
                        <a class="viewlisttext"> 35</a>
                    </div>
                            </div>
                    </div>
            </div>

            
        </div>
        

    </div>
    </div>
</body>
</html>
