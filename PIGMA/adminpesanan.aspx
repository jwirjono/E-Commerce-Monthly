<%@ Page Title="Admin Home page" Language="C#" AutoEventWireup="true" CodeBehind="adminpesanan.aspx.cs" Inherits="PIGMA.admin" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet">
    <link href="~/AdminContent/admin.css" rel="stylesheet" />
    <link href="~/AdminContent/adminmenu.css" rel="stylesheet" />
    <link href="~/AdminContent/adminpesanan.css" rel="stylesheet" />
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
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
                        <li class="nav-item active">
                            <a class="nav-link" href="adminpesanan.aspx">
                                <img style="padding-left: 10px; padding-bottom: 5px;" src="content/images/Penjualan.png">
                                <span class="button-text nyala">Pesanan</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="adminproduk.aspx">
                                <img style="padding-left: 10px; padding-bottom: 5px;" src="content/images/Box.png">
                                <span class="button-text">Produk</span>
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
        <div class="col-md-8" style="background-color: white">
            <div class="row">
                <div class="col-md-12" style="margin-top: 50px">
                    <h2>Daftar Pesanan
                <br />
                        <button class="buttonpesanan ini">Semua Pesanan</button>
                        <button class="buttonpesanan">Pesanan Baru</button>
                        <button class="buttonpesanan">Sedang Diproses</button>
                        <button class="buttonpesanan">Dalam Pengiriman</button>
                        <button class="buttonpesanan">Pesanan Selesai</button>
                        <hr style="width: 100%; text-align: left; border-width: 1.5px;">
                    </h2>

                </div>

            </div>

            <div class="row col-md-12" style="display: flex; flex-direction: row">


                <input type="search" value="Cari nama pembeli, produk, nomor resi" style="max-width: 600px; height: 50px" />
                <button style="height: 50px">search</button>



                <input type="text" name="daterange" value="01/01/2018 - 01/15/2018" style="max-width: 300px; height: 50px; margin-left: 50px" />


                <script>
                    $(function () {
                        $('input[name="daterange"]').daterangepicker({
                            opens: 'left'
                        }, function (start, end, label) {
                            console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
                        });
                    });
                </script>
            </div>
            <div class="col-md-12">
                <div class="col-md-11"style="border: solid thin; margin-top: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom: none; display:flex;flex-direction :row">
                    <div class="pesanancardprofile"><img src="AdminContent/Mask Group.png"/> <label ><b>sophinuraeni</b><br />63 Produk</label></div>
                    <div class="pesanancardalamat"><b>Alamat Penerima</b><br />Sophi Nuraeni, 081223679574<br /> Jl. Kebon Sirih Barat I No.10F, RT.6/RW.2, Kb. Sirih, 
                        Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10340, Indonesia <br /><br /><b>Pengiriman </b><br />30 Sepember,12.00 - 14.00</div>
                    <div class="pesanancardtotal"><b>Total Harga</b><br /><br /><h3>Rp 850.000</h3></div>


                </div>
                <div class="pesanancardviewbaru" style="text-align:right">
                    <div class="col-md-4" style="text-align : left; margin-left : 30px; margin-top : 10px"><h5>
                        <label><b>Status</b></label>
                        <br />
                        <span style="font-size : 18px;">Pesanan Baru</span></h5></div>
                    <div class="col-md-8" style="text-align:right"><button class="pesanancardbutton">Terima Pesanan</button>
                    <button class="pesanancardbuttonright">Lihat Pesanan</button></div>
                    
                </div>
                <hr />
                <div class="col-md-11"style="border: solid thin; margin-top: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom: none; display:flex;flex-direction :row">
                    <div class="pesanancardprofile"><img src="AdminContent/Mask Group.png"/> <label ><b>sophinuraeni</b><br />63 Produk</label></div>
                    <div class="pesanancardalamat"><b>Alamat Penerima</b><br />Sophi Nuraeni, 081223679574<br /> Jl. Kebon Sirih Barat I No.10F, RT.6/RW.2, Kb. Sirih, 
                        Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10340, Indonesia <br /><br /><b>Pengiriman </b><br />30 Sepember,12.00 - 14.00</div>
                    <div class="pesanancardtotal"><b>Total Harga</b><br /><br /><h3>Rp 850.000</h3></div>


                </div>
                <div class="pesanancardviewproses" style="text-align:right">
                    <div class="col-md-2" style="text-align : left; margin-left : 30px; margin-top : 10px;border-right : #9B9FA0 solid thin"><h5>
                        <label><b>Status</b></label>
                        <br />
                        <span style="font-size : 18px;">Sedang Diproses</span></h5>
                        <br />
                    </div>
                    <div class="col-md-3" style="text-align : left; margin-left : 30px; margin-top : 10px;border-right : #9B9FA0 solid thin;display:flex;flex-direction:row">
                        <div><b>Cetak</b><br />
                        <span style="font-size : 18px;">Label Pengiriman</span></div>
                       <div><button style="background-color:#EACB00;border:none"><img src="AdminContent/print.png" /></button></div>
                        
                        <br />
                    </div>
                    
                    
                    <div class="col-md-7" style="text-align:right"><button class="pesanancardbutton">Kirim</button>
                    <button class="pesanancardbuttonrightproses" onclick="gotoubah()">Lihat Pesanan</button></div>
                    
            </div>
                <hr />
                 <div class="col-md-11"style="border: solid thin; margin-top: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom: none; display:flex;flex-direction :row">
                    <div class="pesanancardprofile"><img src="AdminContent/Mask Group.png"/> <label ><b>sophinuraeni</b><br />63 Produk</label></div>
                    <div class="pesanancardalamat"><b>Alamat Penerima</b><br />Sophi Nuraeni, 081223679574<br /> Jl. Kebon Sirih Barat I No.10F, RT.6/RW.2, Kb. Sirih, 
                        Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10340, Indonesia <br /><br /><b>Pengiriman </b><br />30 Sepember,12.00 - 14.00</div>
                    <div class="pesanancardtotal"><b>Total Harga</b><br /><br /><h3>Rp 850.000</h3></div>


                </div>
                 <div class="pesanancardviewproses" style="text-align:right">
                    <div class="col-md-4" style="text-align : left; margin-left : 30px; margin-top : 10px;"><h5>
                        <label><b>Status</b></label>
                        <br />
                        <span style="font-size : 18px;">Sedang Dikirim</span></h5>
                        <br />
                    </div>
                    
                    
                    <div class="col-md-8" style="text-align:right"><button class="pesanancardbutton">Selesai</button>
                    <button class="pesanancardbuttonright" onclick="gotokembali()">Lihat Pesanan</button></div>
                    
            </div>
                <hr />
                <div class="col-md-11"style="border: solid thin; margin-top: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom: none; display:flex;flex-direction :row">
                    <div class="pesanancardprofile"><img src="AdminContent/Mask Group.png"/> <label ><b>sophinuraeni</b><br />63 Produk</label></div>
                    <div class="pesanancardalamat"><b>Alamat Penerima</b><br />Sophi Nuraeni, 081223679574<br /> Jl. Kebon Sirih Barat I No.10F, RT.6/RW.2, Kb. Sirih, 
                        Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10340, Indonesia <br /><br /><b>Pengiriman </b><br />30 Sepember,12.00 - 14.00</div>
                    <div class="pesanancardtotal"><b>Total Harga</b><br /><br /><h3>Rp 850.000</h3></div>


                </div>
                <div class="pesanancardviewselesai" style="text-align:right">
                    <div class="col-md-4" style="text-align : left; margin-left : 30px; margin-top : 10px"><h5>
                        <label><b>Status</b></label>
                        <br />
                        <span style="font-size : 18px;">Pesanan Selesai</span></h5></div>
                    <div class="col-md-8" style="text-align:right"><
                    <button class="pesanancardbuttonright">Lihat Pesanan</button></div>
                    
            </div>
            </div>
        </div>

    </div>
    <script>
        function gotoubah() {
            window.location.href = "/ubahproduk.aspx"
        }
        function gotokembali() {
            window.location.href ="/Kembalikan.aspx"
        }
    </script>
</body>
</html>
