<%@ Page Title="Admin Home page" Language="C#" AutoEventWireup="true" CodeBehind="adminpesanan.aspx.cs" Inherits="PIGMA.admin" %>

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
                    <li class="nav-item active">
                        <a  class="nav-link" href="adminpesanan.aspx">
                            <img style="padding-left : 10px; padding-bottom : 5px;" src="content/images/Penjualan.png">
                            <span class="button-text active">Pesanan</span>
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
            <button class="button-out">Keluar</button>
        </div>
            

        
    </div>
        
    <!--content-->
    <div class="col-md-8" style="background-color:#FCFCFC">
        <div class="row">
            <div class="col-md-12">
            <h2>Daftar Pesanan
                <br />
                <button  class="buttonpesanan active">Semua Pesanan</button>
                <button  class="buttonpesanan">Pesanan Baru</button>
                <button  class="buttonpesanan">Sedang Diproses</button>
                <button  class="buttonpesanan">Dalam Pengiriman</button>
                <button  class="buttonpesanan">Pesanan Selesai</button>
            </h2>
                </div>
            
            
        </div>
        <hr />
        <div class="row rowsaldo">
            <div class ="col-md-12">
                <input type="search" size="50" value="Cari nama pembeli, produk, nomor resi"/><button>search</button>
                <input type="date" />
                </div>
            <div class ="col-md-12">
                <label style="height:250px; border : solid thin; margin-top:40px; border-radius : 8px;">
                    <label style="height:160px; width:250px; margin-top:20px;">Nama pelanggan</label>
                    <label style="border-left:solid thin; height:160px; width:250px; margin-top:20px;">alamat</label>
                    <label style="border-left:solid thin; height:160px; width:250px; margin-top:20px;">Total Harga</label>
                    <p style="height:60px; background-color:#EACB00; width:100%; border-radius:8px;"></p>
                    <span style="vertical-align:central"><b>Status</b></span>
                    
                </label>
            </div>
        </div>

    </div>
    </div>
</body>
</html>
