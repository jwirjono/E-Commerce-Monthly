<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminproduk.aspx.cs" Inherits="PIGMA.adminproduk" %>

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
                <div class="col-md-6">
                    <h2>Daftar Pesanan
                <br />
                        <span style="font-size: 18px">Atur dan kelola produk jualanmu</span>
                    </h2>
                </div>
                <div class="col-md-6">
                    <button style="height: 60px; width: 200px; margin-left: 100px; margin-top: 30px; background-color: #74B816; color: white; border-radius: 8px; border: solid thin">Tambah Produk</button>
                </div>
            </div>
            <hr />
            <div class="row col-md-12">
                <div class="col-md-6">

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
                <div class="col-md-6">
                    <select name="kategori" id="kategori" style="height: 40px; border: solid thin; border-radius: 10px; width: 150px; background-color: white; color: black; margin-top: 10px;">
                        <option value="kategori ">Kategori</option>
                        <option value="harga">Harga</option>
                    </select>
                    <select name="status" id="status" style="height: 40px; border: solid thin; border-radius: 10px; width: 150px; background-color: white; color: black; margin-top: 10px;">
                        <option value="habis">Habis</option>
                        <option value="aktif">Aktif</option>
                    </select>
                </div>
            </div>
            <div class="row col-md-12">
                <form runat="server">
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
                                        <asp:Label runat="server" Text="Info Produk" CssClass="fontSubAccount" style="font-size:22px; font-weight:bold;"/>
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column; margin-bottom: 20px; margin-right: 20px;margin-top: 20px; width: 150px">
                                            <img src='<%#Eval("linkgambar") %>' />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <div style="display: flex; flex-direction: row">
                                                <img src="AdminContent/logoviewhitam.png" alt="" style="width:20px; margin-right : 3px; margin-left : 5px">
                                                <img src="AdminContent/upsidedown.png" alt="" style="width:20px; margin-right : 10px;">
                                                <img src="AdminContent/logokeranjanghitam.png" alt="" style="width:20px; margin-right : 3px;" />
                                                <img src="AdminContent/upsidedown.png" alt="" style="width:20px; margin-right : 3px;">
                                            </div>
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column; margin-bottom: 20px; margin-right: 20px; width: 150px; margin-top: 20px;">
                                            <asp:Label ID="lblNamaProduk" Text='<%#Eval("NamaProduk") %>' runat="server" style="font-size:18px; font-weight:bold;margin-bottom : 5px"/>
                                            <div style="display: flex; flex-direction: row">
                                                <img src="AdminContent/logoviewhijau.png" alt="" style="width:30px; margin-right : 3px;">
                                                <asp:Label ID="lblviewcontent" Text='<%#Eval("TotalView")%>' runat="server" style="margin-right:6px;"/>
                                                <img src="AdminContent/logokeranjanghijau.png" alt="" style="width:30px; margin-right : 3px;" />
                                                <asp:Label ID="lblbeli" Text='<%#Eval("TotalBeli")%>' runat="server" />
                                                
                                            </div>




                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <div style="margin-right: 20px; width: 100px">
                                            <asp:Label runat="server" Text="Kategori" CssClass="fontSubAccountKuantitas"  style="font-size:22px; font-weight:bold;"/>
                                        </div>

                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column;">
                                            <asp:Label ID="lblsatuan" Text='<%#Eval("Kategori") %>' runat="server"  style="font-size:18px; font-weight:bold;"/>
                                            <a href="">Ubah</a>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Harga" CssClass="fontSubAccountKuantitas" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column;">
                                            <asp:TextBox ID ="lblhargainput" TextMode="Number"  runat="server" Text ="0"></asp:TextBox>
                                            <asp:Label ID="lblharga" Text='<%#Eval("Harga") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Habis" CssClass="fontSubAccountKuantitas" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <label class="switch" style="margin-left: 110px;">

                                            <input type="checkbox" id="checkboxlbl">
                                            <span class="slider round"></span>

                                        </label>
                                    </ItemTemplate>
                                </asp:TemplateField>


                            </Columns>
                            <EmptyDataTemplate>
                                Tidak ada data
                            </EmptyDataTemplate>
                        </asp:GridView>

                    </div>
                </form>

            </div>


        </div>
    </div>
</body>
</html>
