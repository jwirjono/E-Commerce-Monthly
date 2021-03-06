<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pendaftaranpartner.aspx.cs" Inherits="PIGMA.pengaturansettingadmin" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
    <link href="~/Content/bootstrap.min.css" rel="stylesheet">
    <link href="~/AdminContent/admin.css" rel="stylesheet" />
    <link href="~/AdminContent/adminmenu.css" rel="stylesheet" />
    <%--    <script type="text/javascript" src="AdminContent/admin.js"></script>--%>
</head>

<body>

    <!---- header --->
    <nav class="navbar-light sticky-top">
        <a class="navbar-brand brand" style="margin-top: 5px">
            <img src="AdminContent/MONTHLYPartner.png"></a>

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
                <div class="col-md-12">
                    <label style="margin-left: 30px; font-size: 24px; margin-top: 40px;"><b>Data Akun</b></label>

                    <div class="row" style="padding-top: 40px;">
                        <div class="col-md-12" style="display: flex; flex-direction: row">
                            <label style="padding-left: 150px; font-size: 18px; width: 250px">
                                <b>Email</b>
                            </label>
                            <input style="margin-left: 200px; border-radius: 10px; height: 40px; max-width: 750px" type="email" id="email" placeholder="departement1@email.com" size="50"><br />
                            <label>
                                <button style="margin-left: 25px; width: 100px; background-color: #74B816; color: white; border-radius: 10px; height: 40px;" id="emailsubmit" name="submit">Kirim</button></label>
                        </div>

                    </div>
                    <div class="row" style="padding-top: 20px;">
                        <div class="col-md-12" style="display: flex; flex-direction: row">
                            <label style="margin-left: 150px; font-size: 18px; width: 250px;"><b>Nomor Telepon</b></label>
                            <input style="margin-left: 50px; border-radius: 10px; height: 40px; max-width: 750px" type="email" id="notelp" placeholder="08xxxxxxxxx" size="50"><br />
                            <label>
                                <button style="margin-left: 25px; width: 100px; background-color: #74B816; color: white; border-radius: 10px; height: 40px;" id="telpsubmit" name="submit">Kirim</button></label>
                        </div>
                    </div>
                </div>
                <hr style="width: 100%; text-align: left; margin-left: 50px; margin-right: 50px; border-width: 1.5px;">
                <div class="col-md-12">
                    <label style="margin-left: 40px; font-size: 24px; margin-top: 40px;"><b>Nama Toko</b></label>

                    <div class="row" style="margin-top:40px">
                        <label style="                                margin-left: 155px;
                                font-size: 18px;
                                width: 250px">
                                <b>Nama Toko</b>
                            </label>
                        <label style="margin-left: 50px; height: 40px;">
                            <select style="border-radius: 10px; width: 900px; text-align: center; height: 40px;tab-size:90"
                                id="listnamatoko">
                                <option value="1">-- Select Registered Name --</option>
                                <option value="2">Transmart Carefour</option>
                                <option value="3">three</option>
                                <option value="4">four</option>
                            </select></label><br />
                    </div>
                    <div class="row" style="margin-top:40px">
                        <div class ="col-md-12" style="display:flex;flex-direction:row ">
                            <label style="margin-left: 155px; font-size: 18px; width: 250px;"><b>Cabang</b></label>
                            <input style="margin-left: 50px; border-radius: 10px; height: 40px; max-width: 900px" type="email" id="cabang" placeholder="sukajadi" size="90"><br />

                        </div>
                    </div>
                </div>
                <hr style="width: 100%; text-align: left; margin-left: 50px; margin-right: 50px; border-width: 1.5px;">
                <div class="row col-md-12">
                    <div class="col-md-12">
                        <label style="margin-left: 50px; font-size: 24px; padding-top: 20px">
                            <b>Foto Toko</b><br />
                            <span style="font-size: 14px;">Format gambar .jpg .jpeg .png dan ukuran minimun 300x200 px (untuk gambar optimal pakai 700 x700px</span><br />
                        </label>
                    </div>

                    <div class="row col-md-12">
                        <div class="image-preview" id="gambarlogo" style="margin-left: 80px;">
                            <img src="" alt="Image Preview" class="image-preview-image" />
                            <span class="image-preview-text">Masukan gambar</span>
                        </div>
                        <div class="image-preview-gambar" id="gambar" style="margin-left: 70px;">
                            <img src="" alt="Image Preview" class="image-preview-gambar-image" />
                            <span class="image-preview-gambar-text">Masukan gambar</span>
                        </div>
                    </div>

                    <div class="row" style="margin-left : 80px">
                        <input type="file" id="logo" name="logo">
                    </div>
                    <div class="row">
                        <input type="file" id="img" name="img" accept="image/*">
                    </div>

                </div>
                <hr style="width: 100%; text-align: left; margin-left: 50px; margin-right: 50px; border-width: 1.5px;">
                <div class="col-md-12">
                    <label style="margin-left: 30px; font-size: 24px; margin-top: 40px;"><b>Lokasi Toko</b></label>
                    
                    <div class="row" style ="padding-top :40px">
                        <div class="col-md-12" style="display:flex; flex-direction:row">
                        <label style="margin-left: 50px; font-size: 18px;"><b>Kota atau Kecamatan</b></label>
                        <label style="margin-left: 800px; height: 20px;"><b>Kode Pos</b></label><br />

                    </div>
                        </div>
                    <div class="row" style ="padding-top :10px">
                        <div class="col-md-12" style="display:flex; flex-direction : row">
                            
                            <input style="border-radius: 10px; margin-left :50px; height :40px; padding-top : 10px; max-width:950px;" type="text" id="kota" placeholder="kota" size="120">

                            <input style="border-radius: 10px; margin-left :30px; height :40px; padding-top : 10px; max-width : 400px;" type="text" id="kodepos" placeholder="kodepos" size="20"></label><br />
                    </div>
                        </div>        
                    <div class="row">
                        <label style="padding-top: 20px; margin-left: 50px; font-size: 18px;"><b>Alamat</b></label>

                    </div>
                    <div class ="row">
                        <label style="padding-top: 20px; margin-left: 55px; height: 150px;">
                            <textarea rows="4" cols="170" id="textalamat" placeholder="Input Address here..."></textarea>
                        </label>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-11" style="text-align: right">
            <button style="margin-top: 50px; margin-bottom: 50px; margin-right: 20px; height: 50px; width: 200px; background-color: #74B816; color: white; border-radius: 10px;">Batal</button>
            <button style="margin-top: 50px; margin-bottom: 50px; height: 50px; width: 200px; background-color: #74B816; color: white; border-radius: 10px;">Kirim</button>
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
