<%@ Page Title="Admin Home page" Language="C#" AutoEventWireup="true" CodeBehind="adminpengaturan.aspx.cs" Inherits="PIGMA.adminpengaturan" %>

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
    <link href="~/AdminContent/adminslider.css" rel="stylesheet" />
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
        <div class="col-md-3" style="padding-top: 42px;">
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
                        <li class="nav-item">
                            <a class="nav-link" href="adminproduk.aspx">
                                <img style="padding-left: 10px; padding-bottom: 5px;" src="content/images/Box.png">
                                <span class="button-text">Produk</span>
                            </a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="adminpengaturan.aspx">
                                <img style="padding-left: 10px; padding-bottom: 5px;" src="content/images/Settings.png">
                                <span class="button-text nyala">Pengaturan</span>
                            </a>
                        </li>
                    </ul>

                </div>
                <button class="button-out">Keluar</button>
            </div>



        </div>

        <!--content-->
        <div class="col-md-9" style="background-color: #FCFCFC">

            <div class="col-md-12" style="margin-left: 30px; margin-top: 50px">
                <h2>Pengaturan
                <br />
                    <span style="font-size: 18px;">Kelola toko dan akun anda</span>
                </h2>
            </div>

            <form runat="server">
                <asp:Panel runat="server" ID="panelpengaturanakun" Visible="false">
                    <div class="col-md-12" style="margin-left: 30px;">
                        <button class="buttonpesanan ini" style="background-color: #FCFCFC">Pengaturan Akun</button>
                        <asp:Button CssClass="buttonpesanan" runat="server" OnClick="btngantipage1" Text="Pengaturan Toko" />
                    </div>
                    <hr />
                    <div class="col-md-12" style="margin-left: 30px; margin-bottom: 50px">
                        <h2>Pengaturan Akun
                
                <br />
                            <span style="font-size: 18px;">Jika anda mengubah data maka data harus menunggu verifikasi kembali dari admin monthly</span>
                        </h2>
                    </div>
                    <div class="row col-md-12" style="margin-left: 30px; border: solid thin; border-radius: 10px; height: 250px">
                        <label style="margin-left: 30px; font-size: 24px; padding-top: 40px;">
                            <b style="margin-left: 20px; margin-right: 20px">Nama Toko</b></label>
                        <label class="button-Verifikasi" style="text-align: center; font-size: 20px; font-display: auto; width: 150px; height: 30px; border-radius: 16px; font-family: Roboto; color: white; background-color: red;">
                            Terverifikasi</label>
                        <div class="col-md-12">
                            <label style="margin-top: 10px; margin-left: 70px; font-size: 18px;">
                                <b>Email</b>
                            </label>
                            <label style="margin-top: 10px; margin-left: 190px;">
                                transmartcarefour_cp@gmail.com</label><br />
                        </div>
                        <div class="col-md-12">
                            <label style="margin-top: 10px; margin-left: 70px; font-size: 18px;">
                                <b>Telpon/HP</b>
                            </label>
                            <label style="margin-top: 10px; margin-left: 145px;">
                                082208255160</label><br />
                            <div class="col-md-12" style="text-align: right; margin-bottom: 10px">
                                <button style="width: 150px; height: 50px; border-radius: 10px; background-color: #74B816; color: white">
                                    <b>Ubah</b>
                                </button>
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="row col-md-12" style="margin-left: 30px; border: solid thin; border-radius: 10px; height: 250px; margin-bottom: 100px">
                        <label style="margin-left: 30px; font-size: 24px; padding-top: 40px;">
                            <b style="margin-left: 20px; margin-right: 20px">Password</b></label>
                        <label class="button-Verifikasi" style="text-align: center; font-size: 20px; font-display: auto; width: 150px; height: 30px; border-radius: 16px; font-family: Roboto; color: white; background-color: #74B816;">
                            Terverifikasi</label>
                        <div class="col-md-12" style="margin-bottom: 10px; margin-left: 100px">
                            <button style="width: 150px; height: 50px; border-radius: 10px; background-color: #74B816; color: white">
                                <b>Lupa Password</b>
                            </button>
                        </div>
                        <div class="col-md-12" style="margin-left: 60px;">
                            <label>Admin monthly akan mengirimkan password ke email yang telah di daftarkan</label>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel runat="server" ID="panelpengaturantoko">
                    <div class="col-md-12" style="margin-left: 30px;">
                        <asp:Button runat="server" class="buttonpesanan" OnClick="btngantipage2" Text="Pengaturan Akun" />
                        <button class="buttonpesanan ini" style="background-color: #FCFCFC">Pengaturan Toko</button>
                    </div>
                    <hr />
                    <div class="col-md-12" style="margin-left: 30px; margin-bottom: 50px">
                        <h2>Pengaturan Akun
                
                <br />
                            <span style="font-size: 18px;">Jika anda mengubah data maka data harus menunggu verifikasi kembali dari admin monthly</span>
                        </h2>
                    </div>
                    <div class="col-md-12" style="margin-left: 30px; display: flex; flex-direction: row">
                        <div class="col-md-6">
                            <h2>Status Toko
                
                <br />
                                <span style="font-size: 18px;">Jika ada data anda yang belum terverifikasi maka toko otomatis tutup</span>
                            </h2>
                        </div>
                        <div class="col-md-6" style="text-align: right; display: flex; flex-direction: row">
                            <label class="switch" style="margin-left: 450px; margin-top: 50px">

                                <input type="checkbox" id="checkboxlbl" onclick="checkaktif(this, 'LabelAktif')">
                                <span class="slider round"></span>

                            </label>
                            <label id="LabelAktif" style="padding-left: 10px; max-width: 50px; margin-top: 50px"><b>Tidak Buka</b></label>
                        </div>
                    </div>
                    <div class="row col-md-12" style="margin-left: 30px; border: solid thin; border-radius: 10px; margin-bottom: 100px">
                        <div class="col-md-12">
                            <label style="margin-left: 30px; font-size: 24px; padding-top: 40px;">
                                <b style="margin-left: 20px; margin-right: 20px">Nama Toko</b></label>
                            <label class="button-Verifikasi" style="text-align: center; font-size: 20px; font-display: auto; width: 150px; height: 30px; border-radius: 16px; font-family: Roboto; color: white; background-color: #74B816;">
                                Terverifikasi</label>
                        </div>
                        <div class="col-md-12">
                            <br />
                            <br />
                            <label style="margin-left: 70px; font-size: 18px;">
                                <b>Nama Toko</b>
                            </label>
                            <label style="margin-top: 10px; margin-left: 180px;">
                                Transmart Carefour</label><br />
                            <br />
                            <label style="margin-left: 70px; font-size: 18px;">
                                <b>Cabang</b>
                            </label>
                            <label style="margin-top: 10px; margin-left: 210px;">
                                Transmart Carefour Central Park Mall</label><br />
                            <br />
                            <hr />
                            <label style="margin-left: 50px; font-size: 24px;">
                                <b>Foto Toko</b>
                            </label>
                            <label class="button-Verifikasi" style="text-align: center; font-size: 20px; font-display: auto; width: 150px; height: 30px; border-radius: 16px; font-family: Roboto; color: white; background-color: #74B816;">
                                Terverifikasi</label>
                            <br />
                            <label style="margin-top: 10px; margin-left:50px">
                                Format gambar .jpg .jpeg .png dan ukuran minimun 300x200px (untuk gambar optimal pakai 700 x700px</label>
                            <div class="col-md-12" style="display:flex; flex-direction:row">
                                <div class="image-preview" id="gambartoko" style="margin-left: 80px;">
                                    <img src="AdminContent/Transmart.png" alt="Image Preview" class="image-preview-image" />
                                </div>
                                <div class="image-preview" id="gambartoko1" style="margin-left: 10px;">
                                    <img src="AdminContent/Transmart.png" alt="Image Preview" class="image-preview-image" />
                                </div>
                            </div>
                            <hr />
                            <label style="margin-left: 30px; font-size: 24px; padding-top: 40px;">
                                <b style="margin-left: 20px; margin-right: 20px">Lokasi Toko</b></label>
                            <label class="button-Verifikasi" style="text-align: center; font-size: 20px; font-display: auto; width: 150px; height: 30px; border-radius: 16px; font-family: Roboto; color: white; background-color: #EACB00;">
                                Proses</label>
                            <br />
                            <label style="margin-left: 30px; font-size: 24px; padding-top: 40px;">
                                <b style="margin-left: 20px; margin-right: 20px">Alamat Toko</b></label>
                            <label style="margin-left: 50px; font-size: 18px; padding-top: 20px;padding-bottom:40px">
                                Jl. Letjen S. Parman No.28, RT.12/RW.6, Tj. Duren Sel., Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11470</label>
                        </div>
                        
                    </div>
                    <div class="col-md-12" style="text-align:right ">
                            <button style="margin-top: 10px; margin-bottom: 50px; margin-right: 20px; height: 50px; width: 200px; background-color: #74B816; color: white; border-radius: 10px;">Edit Toko</button>
                        </div>
                </asp:Panel>
            </form>
        </div>
        <script>
            function checkaktif(chk, label) {
                document.getElementById(label).innerHTML = chk.checked ? "<b>Buka</b> " : " <b>Tidak Buka</b>";
            }
        </script>
</body>
</html>
