<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pengaturansettingadmin.aspx.cs" Inherits="PIGMA.pengaturansettingadmin" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet">
    <link href="~/AdminContent/admin.css" rel="stylesheet" />
    <%--    <script type="text/javascript" src="AdminContent/admin.js"></script>--%>
</head>

<body>

    <!---- header --->
    <nav class="navbar-dark bg-dark sticky-top">
        <a class="navbar-brand brand">
            <img src="AdminContent/Logo.png"></a>

    </nav>

    <div class="container-fluid row">
        <div class="col-md-12">
            <div class="row" style="padding-top: 50px; height: 200px; padding-left: 50px;">
                <h2>Daftar Partner
                <br />
                    <span style="font-size: 16px;">Data Akun dan toko ini akan diperiksa keasliannya, harap isikan data dengan benar
                <button style="background-color: white; border: hidden; vertical-align: central;">
                    <img src="AdminContent/mark.png" /></button></span>
                </h2>
            </div>
            <div class="row" style="margin-left: 50px; margin-right: 50px; border: solid thin; border-radius: 14px;">
                <div class="row col-md-12">
                    <label style="padding-left: 30px; font-size: 24px; padding-top: 40px;"><b>Data Akun</b></label>

                    <div class="row">
                        <label style="padding-top: 120px; padding-left: 60px; font-size: 18px;">
                            <b>Email</b>
                        </label>
                        <label style="padding-top: 120px; margin-left: 155px;">
                            <input style="border-radius: 10px; height: 40px;" type="email" id="email" value="Contoh : departement1@email.com" size="100"></label><br />
                        <label style="padding-top: 120px; padding-left: 30px; height: 40px;">
                            <button style="width: 80px; height: 40px;" id="emailsubmit" name="submit">Submit</button></label>
                    </div>
                    <div class="row">
                        <label style="padding-top: 20px; padding-left: 210px; font-size: 18px;"><b>Nomor Telepon</b></label>
                        <label style="padding-top: 20px; margin-left: 68px; height: 40px;">
                            <input style="border-radius: 10px; height: 40px;" type="text" id="notelp" value="Contoh : departement1@email.com" size="100"></label><br />
                        <label style="padding-top: 20px; padding-left: 30px; height: 40px;">
                            <button style="width: 80px; height: 40px;" name="submit">Submit</button></label>
                    </div>
                </div>
                <hr style="width: 100%; text-align: left; margin-left: 50px; margin-right: 50px; border-width: 1.5px;">
                <div class="row col-md-12">
                    <label style="padding-left: 30px; font-size: 24px;"><b>Nama Toko</b></label>

                    <div class="row">
                        <label style="padding-top: 60px; padding-left: 50px; font-size: 18px;"><b>Nama Toko</b></label>
                        <label style="padding-top: 60px; margin-left: 105px; height: 40px;">
                            <select style="border-radius: 10px; width: 900px; text-align: center; height: 40px;"
                                id="listnamatoko">
                                <option value="1">-- Select Registered Name --</option>
                                <option value="2">two</option>
                                <option value="3">three</option>
                                <option value="4">four</option>
                            </select></label><br />
                    </div>
                    <div class="row">
                        <label style="padding-top: 40px; padding-left: 210px; font-size: 18px;"><b>Cabang</b></label>
                        <label style="padding-top: 40px; margin-left: 135px; height: 20px;">
                            <input style="border-radius: 10px;" type="text" id="cabang" value="Contoh : departement1@email.com" size="115"></label><br />
                    </div>
                </div>
                <hr style="width: 100%; text-align: left; margin-left: 50px; margin-right: 50px; border-width: 1.5px;">
                <div class="row col-md-12">
                    <div class="col-md-12">
                        <label style="padding-left: 30px; font-size: 24px; padding-top: 20px">
                            <b>Foto Toko</b><br />
                            <span style="font-size: 14px;">Format gambar .jpg .jpeg .png dan ukuran minimun 300x200 px (untuk gambar optimal pakai 700 x700px</span><br />
                        </label>
                    </div>

                    <div class="row col-md-12">
                        <div class="image-preview" id="gambarlogo" style="margin-left: 60px;">
                            <img src="" alt="Image Preview" class="image-preview-image" />
                            <span class="image-preview-text">Masukan gambar</span>
                        </div>
                        <div class="image-preview-gambar" id="gambar" style="margin-left: 60px;">
                            <img src="" alt="Image Preview" class="image-preview-gambar-image" />
                            <span class="image-preview-gambar-text">Masukan gambar</span>
                        </div>
                    </div>

                    <div class="row">
                        <label style="padding-left: 60px;" for="img">Select image:</label>
                        <input type="file" id="logo" name="logo">
                    </div>
                    <div class="row">
                        <label style="padding-left: 30px;" for="img">Select image:</label>
                        <input type="file" id="img" name="img" accept="image/*">
                    </div>

                </div>
                <hr style="width: 100%; text-align: left; margin-left: 50px; margin-right: 50px; border-width: 1.5px;">
                <div class="row col-md-12">
                    <label style="padding-left: 30px; font-size: 24px;"><b>Lokasi Toko</b></label>

                    <div class="row">
                        <label style="padding-top: 40px; margin-left: 20px; font-size: 18px;">Kota atau Kecamatan</label>
                        <label style="padding-top: 40px; margin-left: 600px; height: 20px;">Kode Pos></label><br />

                    </div>
                    <div class="row">
                        <label style="padding-top: 10px; margin-left: 150px; font-size: 18px;">
                            <input style="border-radius: 20px;" type="text" id="kota" value="kota" size="80"></label>
                        <label style="padding-top: 10px; margin-left: 50px; height: 20px;">
                            <input style="border-radius: 20px;" type="text" id="kodepos" value="kodepos" size="30"></label><br />
                    </div>
                    <div class="row">
                        <label style="padding-top: 40px; padding-left: 60px; font-size: 18px;"><b>Email</b></label>
                        <label style="padding-top: 40px; margin-left: 155px; height: 20px;">
                            <input style="border-radius: 20px;" type="text" id="alamat" value="Contoh : departement1@email.com" size="100"></label><br />
                        <label style="padding-top: 40px; padding-left: 30px; height: 20px;">
                            <button style="width: 80px;" name="submit">Submit</button></label>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-11" style="text-align: right">
            <button style="margin-top: 50px; margin-bottom: 50px; margin-right: 20px; height: 50px; width: 200px">Submit</button>
            <button style="margin-top: 50px; margin-bottom: 50px; height: 50px; width: 200px">Submit</button>
        </div>
    </div>
    <!--Message Box-->
    <!-- The Modal -->
    <div id="myModal" class="modal">

        <div class="modal-content">
            <div class="modal-header">
                <span class="close">&times;</span>
                <h2>Modal Header</h2>
            </div>
            <div class="modal-body">
                <p>Some text in the Modal Body</p>
                <p>Some other text...</p>
            </div>
            <div class="modal-footer">
                <h3>Modal Footer</h3>
            </div>
        </div>

    </div>
    <script>
        const inpFile = document.getElementById('logo');
        const previewContainer = document.getElementById('gambarlogo');
        const previewImage = previewContainer.querySelector('.image-preview-image')
        const previewDefault = previewContainer.querySelector('.image-preview-text')
        const inpFile2 = document.getElementById('img');
        const previewContainer2 = document.getElementById('gambar');
        const previewImage2 = previewContainer2.querySelector('.image-preview-gambar-image')
        const previewDefault2 = previewContainer2.querySelector('.image-preview-gambar-text')

        inpFile.addEventListener("change", function () {
            const file = this.files[0];

            if (file) {
                const reader = new FileReader();

                previewDefault.style.display = "none";
                previewImage.style.display = "block";

                reader.addEventListener("load", function () {
                    previewImage.setAttribute("src", this.result);

                })
                reader.readAsDataURL(file);
            }
            else {
                previewDefault.style.display = null;
                previewImage.style.display = null;
                previewImage.setAttribute("src", "");
            }

        })
        inpFile2.addEventListener("change", function () {
            const file = this.files[0];

            if (file) {
                const reader = new FileReader();

                previewDefault2.style.display = "none";
                previewImage2.style.display = "block";

                reader.addEventListener("load", function () {
                    previewImage2.setAttribute("src", this.result);

                })
                reader.readAsDataURL(file);
            }
            else {
                previewDefault2.style.display = null;
                previewImage2.style.display = null;
                previewImage2.setAttribute("src", "");
            }

        })
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the button that opens the modal
        var btn = document.getElementById("emailsubmit");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks on the button, open the modal
        btn.onclick = function () {
            modal.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>
</html>
