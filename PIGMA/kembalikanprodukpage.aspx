<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kembalikanprodukpage.aspx.cs" Inherits="PIGMA.kembalikanprodukpage" %>

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
    <link href="~/Content/AccountPlus.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/HomePlus.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/BelanjaPlus.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/KeranjangPlus.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/Additional.css" rel="stylesheet" type="text/css" />
    <link href="~/Content/FormPlus.css" rel="stylesheet" type="text/css" />
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
                        <li class="nav-item active">
                            <a class="nav-link" href="adminpesanan.aspx">
                                <img style="padding-left: 10px; padding-bottom: 5px;" src="content/images/Penjualan.png">
                                <span class="button-text nyala">Pesanan</span>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="adminproduk.aspx">
                                <img style="padding-left: 10px; padding-bottom: 5px;" src="content/images/Box.png">
                                <span class="button-text ">Produk</span>
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
        <div class="col-md-8" style="background-color: #FCFCFC; padding-top: 40px; margin-bottom: 100px">
            <div class="row">
                <div class="col-md-6">
                    <h2>Kembalikan Produk
                
                    </h2>
                </div>
            </div>
            <hr />
            <div class="row col-md-12">
                <div class="col-md-12">

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
            </div>

            <!-- grid view-->
            <form class="col-md-12" runat="server">
                <div class="col-md-12 tblKeranjangPlus" style="margin-top: 40px">
                    <asp:GridView runat="server" ID="gridObject"
                        AllowPaging="false"
                        AllowSorting="false"
                        AutoGenerateColumns="false"
                        GridLines="None"
                        CssClass="container-fluid"
                        RowStyle-CssClass="tblRow ">
                        <Columns>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text='<%#"Info Produk ( 6" +  Eval("totalproduk") + " produk)"%> ' CssClass="fontSubAccount" Style="font-size: 22px; font-weight: bold;" />
                                </HeaderTemplate>

                                <HeaderStyle Font-Bold="true" />
                                <ItemTemplate>
                                    <div style="display: flex; flex-direction: row; margin-bottom: 20px; margin-top: 20px; width: 150px">
                                        <img src='<%#Eval("linkgambar") %>' />

                                        <asp:Label ID="lblNamaProduk" Text='<%#Eval("NamaProduk") %>' runat="server" Style="font-size: 18px; font-weight: bold; margin-bottom: 5px" />


                                    </div>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Jumlah" CssClass="fontSubAccount" Style="font-size: 22px; font-weight: bold;" />

                                </HeaderTemplate>

                                <HeaderStyle Font-Bold="true" />
                                <ItemTemplate>

                                    <div id="tabeljumlah" style="display: flex; flex-direction: row;">
                                        <button class="minorbtnCardProdukBelanjaPlus" onclick="btnMinus1_Click()" style="border: none; background-color: white;">
                                            <img src="AdminContent/buttonminus.png" />
                                        </button>
                                        <label id="lblItemCard1" runat="server" style="margin-left: 20px; margin-right: 5px">1</label>
                                        <button class="minorbtnCardProdukBelanjaPlus" onclick="btnTambahb1_Click" style="border: none; background-color: white">
                                            <img src="AdminContent/buttonplus.png" />
                                        </button>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Harga" CssClass="fontSubAccountKuantitas" />
                                </HeaderTemplate>

                                <HeaderStyle Font-Bold="true" />
                                <ItemTemplate>
                                    <div style="display: flex; flex-direction: row;">
                                        <label style="color: white; background-color: #74B816; width: 40px; height: 40px; border: gray solid thin; border-right: none; border-top-left-radius: 6px; border-bottom-left-radius: 6px;">Rp</label>
                                        <asp:Label ID="lblharga" Text='<%# " " +Eval("Harga") %>' runat="server" Style="border: gray solid thin; height: 40px; width: 80px; border-left: none; border-top-right-radius: 6px; border-bottom-right-radius: 6px;" />
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Habis" CssClass="fontSubAccountKuantitas" Style="margin-right: 20px; width: 100px" />
                                </HeaderTemplate>

                                <HeaderStyle Font-Bold="true" />
                                <ItemTemplate>
                                    <label class="switch">

                                        <input type="checkbox" id="checkboxlbl" onclick="checkaktif(this, 'lblharga', 'tabeljumlah')">
                                        <span class="slider round"></span>

                                    </label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="" CssClass="fontSubAccountKuantitas" Style="margin-right: 20px; width: 100px" />
                                </HeaderTemplate>

                                <HeaderStyle Font-Bold="true" />
                                <ItemTemplate>
                                    <button style="color: #74B816; background-color:white;border:none" onclick="showDialog() "><b>Kembalikan Produk</b></button>
                                    <p id="kembalikanproduk"></p>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            Tidak ada data
                        </EmptyDataTemplate>
                    </asp:GridView>

                </div>
            </form>

            <div class="col-md-12" style="text-align: right; margin-top: 100px">
                <a href="#" class="previous">&laquo; Previous</a>
                <a href="#" class="next">Next &raquo;</a>

            </div>
            <div id="white-background">
            </div>
            <div id="dlgbox">
                <div id="dlg-body" style="display: flex; flex-direction: row; padding-left:10px">
                    <div>
                        <label style="font-size:32px"><b>Form Pengembalian Produk</b></label>
                        <hr style="width: 100%; text-align: left; margin-left: 50px; margin-right: 50px; border-width: 1.5px;">
                        <label>Nama Kurir</label>
                        <br />
                        <input type="text" style="border-radius:10px"/>
                        <br />
                        <label>Nama Customer</label>
                        <br />
                        <input type="text" style="border-radius:10px"/>
                        <br />
                        <label>No Telepon Customer</label>
                        <input type="text" style="border-radius:10px"/>
                        <br />
                        <button onclick="dlgCancel()" style="width:150px;height:50px; margin-top:30px; margin-bottom:10px; margin-left:70px;background-color:white; color:#74B816;border-color:#74B816"><b>Batal</b></button>
                    <button onclick="dlgOK()"style="width:150px;height:50px; margin-top:30px; margin-bottom:10px; margin-left:20px; background-color:#74B816; border-color:#74B816; color:white"><b>Simpan</b></button>
                    </div>
                </div>
            </div>



        </div>
    </div>
    <script>
        function btnMinusb1_Click() {
            var hitung = int.Parse(lblItemCardb1.Text);
            var itemcard = document.getElementById('lblItemCard1');
            hitung = hitung - 1;
            itemcard.Text = count.ToString();

        }
        function btnTambahb1_Click() {
            var hitung = int.Parse(lblItemCardb1.Text);
            var itemcard = document.getElementById('lblItemCard1');
            hitung = hitung + 1;
            itemcard.Text = count.ToString();
        }
        function checkaktif(chk, label1, label2) {
            document.getElementById(label1).innerHTML = chk.checked ? disa : "Tidak Aktif";
        }



        function dlgCancel() {
            document.getElementsByTagName("H1")[0].innerHTML = "You clicked Cancel.";
        }

        function dlgOK() {
            document.getElementsByTagName("H1")[0].innerHTML = "You clicked OK.";
        }



        function showDialog() {
            var whitebg = document.getElementById("white-background");
            var dlg = document.getElementById("dlgbox");
            whitebg.style.display = "block";
            dlg.style.display = "block";

            var winWidth = window.innerWidth;

            dlg.style.left = (winWidth / 2) - 480 / 2 + "px";
            dlg.style.top = "150px";
        }
    </script>
</body>

</html>
