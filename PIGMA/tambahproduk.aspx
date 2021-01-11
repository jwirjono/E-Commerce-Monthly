<%@ Page Title="Admin Home page" Language="C#" AutoEventWireup="true" CodeBehind="tambahproduk.aspx.cs" Inherits="PIGMA.tambahproduk" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>

    <link href="~/Content/bootstrap.min.css" rel="stylesheet">
    <link href="~/AdminContent/admin.css" rel="stylesheet" />
    <link href="~/AdminContent/adminmenu.css" rel="stylesheet" />
    <link href="~/AdminContent/adminslider.css" rel="stylesheet" />

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<body>

    <!---- header --->
    <nav class="navbar-light sticky-top">
        <a class="navbar-brand brand" style="margin-top: 5px">
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
                <div class="col-md-2" style="font-size: 20px; margin-bottom: 30px;"><a style="color: #97C200;" href="adminproduk.aspx"><  Kembali</a></div>
                <div class="col-md-12">
                    <h2>Tambah Produk
                <br />
                        <span style="font-size: 18px">Monthly menghimbau untuk menjual produk dengan harga yang wajar atau produk anda dapat diturunkan</span>
                    </h2>


                </div>

            </div>
            <hr />
            <div class="row col-md-12" style="border: solid thin; border-radius: 10px; height: 450px">
                <label style="margin-left: 30px; font-size: 24px; padding-top: 40px;">
                    <img src="AdminContent/Nomor1.png" /><b style="margin-left: 20px; margin-right: 20px">Upload Gambar Produk</b><img src="AdminContent/WAJIB.png" /></label>
                <div class="row col-md-12">
                    <div class="col-sm-2 multiple-image-preview">
                        <img src="AdminContent/upload.jpg" id="changeimage1" style="height: 150px; width: 150px">
                    </div>
                    <div class="col-sm-2 multiple-image-preview">
                        <img src="AdminContent/upload.jpg" id="changeimage2" height="150" width="150">
                    </div>
                    <div class="col-sm-2 multiple-image-preview">
                        <img src="AdminContent/upload.jpg" id="changeimage3" height="150" width="150">
                    </div>

                    <div class="col-sm-2 multiple-image-preview">
                        <img src="AdminContent/upload.jpg" id="changeimage4" height="150" width="150">
                    </div>
                    <div class="col-sm-2 multiple-image-preview">
                        <img src="AdminContent/upload.jpg" id="changeimage5" height="150" width="150">
                    </div>
                </div>
                <div class="col-md-12" style="text-align: right;">
                    <label class="btn btn-danger" for="uploadedhere" style="width: 100px; height: 50px">Upload<input type="file" id="uploadedhere" onchange="myfun()"></label>
                </div>


            </div>
            <hr style="width: 100%; text-align: left; margin-left: 50px; margin-right: 50px; border-width: 1.5px;">
            <div class="row col-md-12" style="border: solid thin; border-radius: 10px; height: 350px">
                <div class="col-md-8">
                    <label style="margin-left: 30px; font-size: 24px; margin-top: 40px;">
                        <img src="AdminContent/Nomor2.png" /><b style="margin-left: 20px; margin-right: 20px">Informasi Produk</b><img src="AdminContent/WAJIB.png" /></label>
                </div>

                <div class="col-md-12">
                    <label style="margin-top: 10px; margin-left: 70px; font-size: 18px;">
                        <b>Nama Produk</b>
                    </label>
                    <label style="margin-top: 10px; margin-left: 110px;">
                        <input style="border-radius: 10px; height: 40px;" type="text" id="namaproduk" size="60"></label><br />
                </div>
                <div class="col-md-12">
                    <label style="margin-top: 5px; margin-left: 70px; font-size: 18px;">
                        <b>Deskripsi Tambahan</b>
                    </label>
                    <label style="margin-top: 5px; margin-left: 55px;">
                        <input style="border-radius: 10px; height: 40px;" type="text" id="deskripsi" size="60"></label><br />
                </div>
                <div class="col-md-12">
                    <label style="margin-top: 10px; padding-left: 70px; font-size: 18px;"><b>Dijual per</b></label>
                    <label style="margin-top: 10px; margin-left: 145px; height: 40px;">
                        <select style="border-radius: 10px; width: 450px; text-align: center; height: 40px;"
                            id="dijualper">
                            <option value="1">KG</option>
                            <option value="2">two</option>
                            <option value="3">three</option>
                            <option value="4">four</option>
                        </select></label><br />
                </div>
                <div class="col-md-12">
                    <label style="margin-top: 10px; padding-left: 70px; font-size: 18px;"><b>Kategori</b></label>
                    <label style="margin-top: 10px; margin-left: 155px; height: 40px;">
                        <select style="border-radius: 10px; width: 450px; text-align: center; height: 40px;"
                            id="kategori">
                            <option value="1">Pilih Kategori</option>
                            <option value="2">two</option>
                            <option value="3">three</option>
                            <option value="4">four</option>
                        </select></label><br />
                </div>
            </div>
            <hr style="width: 100%; text-align: left; margin-left: 50px; margin-right: 50px; border-width: 1.5px;">
            <div class="row col-md-12" style="border: solid thin; border-radius: 10px; height: 250px">
                <label style="margin-left: 30px; font-size: 24px; padding-top: 40px;">
                    <img src="AdminContent/Nomor3.png" /><b style="margin-left: 20px; margin-right: 20px">Harga</b><img src="AdminContent/WAJIB.png" /></label>

                <div class="col-md-12">
                    <label style="margin-top: 10px; margin-left: 70px; font-size: 18px;">
                        <b>Max Pemesanan</b>
                    </label>
                    <label style="margin-top: 10px; margin-left: 90px;">
                        <input style="border-radius: 10px; height: 40px;" type="text" id="maxpemesanan" size="60"></label><br />
                </div>
                <div class="col-md-12">
                    <label style="margin-top: 10px; margin-left: 70px; font-size: 18px;">
                        <b>Harga Satuan</b>
                    </label>
                    <label style="margin-top: 10px; margin-left: 110px;">
                        Rp
                        <input style="border-radius: 10px; height: 40px;" type="number" id="hargasatuan" min="1000" max="100000000" step="1000"></label><br />
                </div>
            </div>
            <hr style="width: 100%; text-align: left; margin-left: 50px; margin-right: 50px; border-width: 1.5px;">
            <div class="row col-md-12" style="border: solid thin; border-radius: 10px; height: 350px">
                <label style="margin-left: 30px; font-size: 24px; padding-top: 40px;">
                    <img src="AdminContent/Nomor4.png" /><b style="margin-left: 20px; margin-right: 20px">Pengelolaan Status</b></label>
                <div class="col-md-12" style="display:flex;flex-direction:row">
                    <label  style="margin-top: 10px; margin-left: 80px; font-size: 18px;"><b>Status Produk</b></label>
                  
                    <label class="switch" style="margin-left: 110px;">
                        
                        <input type="checkbox" id="checkboxlbl" onclick="checkaktif(this, 'LabelAktif')">
                        <span class="slider round"></span>
                        
                    </label>
                    <label id ="LabelAktif" style ="margin-left : 20px; max-width :100px">Tidak Aktif</label>
                    <label style ="margin-left : 100px"> Jika status aktif maka produk dapat  dicari oleh pembeli</label>
                </div>
                <div class="col-md-12">
                    <label  style="margin-top: 10px; margin-left: 80px; font-size: 18px;"><b>Stok Produk</b></label>
                    <input style="border-radius: 10px; height: 40px; margin-left: 110px; max-width : 150px" type="number" id="stokproduk"  />
                </div>
            </div>
        </div>

        <div class="col-md-12" style="text-align: right">
            <button style="margin-top: 50px; margin-bottom: 50px; margin-right: 20px; height: 50px; width: 200px; background-color: #74B816; color: white; border-radius: 10px;">Batal</button>
            <button style="margin-top: 50px; margin-bottom: 50px; margin-right: 20px; height: 50px; width: 200px; background-color: #74B816; color: white; border-radius: 10px;">Simpan & Tambah Baru</button>
            <button style="margin-top: 50px; margin-bottom: 50px; height: 50px; width: 200px; background-color: #74B816; color: white; border-radius: 10px;">Simpan</button>
        </div>


    </div>
    <script>

        var i = 0;
        function myfun() {
            i++;

            var x = document.getElementById("uploadedhere").files[0];
            var currentimage1 = document.getElementById("changeimage1");
            var currentimage2 = document.getElementById("changeimage2");
            var currentimage3 = document.getElementById("changeimage3");
            var currentimage4 = document.getElementById("changeimage4");
            var currentimage5 = document.getElementById("changeimage5");


            var reader = new FileReader();

            reader.onload = function () {

                if (i == "1") {
                    currentimage1.src = reader.result;
                }

                if (i == "2") {
                    currentimage2.src = reader.result;
                }
                if (i == "3") {
                    currentimage3.src = reader.result;
                }
                if (i == "4") {
                    currentimage4.src = reader.result;
                }
                if (i == "5") {
                    currentimage5.src = reader.result;
                }


            }




            reader.readAsDataURL(x);
        }
        function checkaktif(chk, label) {
            document.getElementById(label).innerHTML = chk.checked ? "Aktif" : "Tidak Aktif";
        }
    </script>
</body>
</html>
