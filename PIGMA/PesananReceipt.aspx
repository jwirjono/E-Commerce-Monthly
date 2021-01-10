<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PesananReceipt.aspx.cs" Inherits="PIGMA.WebForm5" %>


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
        <form class="col-md-8" runat="server">
            <div class="col-md-12" style="margin-top: 40px">
                <a href="adminpesanan.aspx" style="color: #74B816; font-size: 18px">< Kembali</a>
                <br />
                <h1>MONTHLY</h1>
                <h2>Detail Pesanan</h2>
            </div>

            <asp:Panel class="col-md-12" ID="panelPembelianBelanja" runat="server" Visible="true" Style="margin-top: 40px">
                <asp:Panel ID="panel1" runat="server">
                    <div class="col-md-12" style="margin-top: 20px; margin-bottom: 20px">
                        <img src="AdminContent/labelpemesananbaru.png" />
                    </div>
                    <div style="display: flex; flex-direction: column">
                        <div class="form-group" style="display: flex; flex-direction: row; margin: 30px auto">
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabelactive">
                                <asp:Label runat="server" CssClass="formNumberLabelactive" Text="1" />
                                <p>Konfirmasi Pesanan</p>
                            </asp:Panel>
                            <div class="garisKeras"></div>
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabel">
                                <asp:Label runat="server" CssClass="formNumberLabel" Text="2" />
                                <p>Pesanan Diproses</p>
                            </asp:Panel>
                            <div class="garisKeras"></div>
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabel">
                                <asp:Label runat="server" CssClass="formNumberLabel" Text="3" />
                                <p>Dalam Pengiriman</p>
                            </asp:Panel>
                            <div class="garisKeras"></div>
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabel">
                                <asp:Label runat="server" CssClass="formNumberLabel" Text="4" />
                                <p>Pesanan Selesai</p>
                            </asp:Panel>
                        </div>
                    </div>
                    <div class="col-md-12 panelPembelianSub" style="margin-top: 30px">
                        <p><b>Ringkasan Belanja</b></p>
                        <hr />
                        <div class="row">
                            <p class="col-md-4">Kode Pemesanan</p>
                            <asp:Label CssClass="col-md-8" runat="server" ID="kodepemesanan" />
                        </div>
                        <div class="row">
                            <p class="col-md-4">Pembeli dan Nomor Telpon</p>
                            <asp:Label CssClass="col-md-8" runat="server" ID="pengirim" />
                        </div>
                        <div class="row">
                            <p class="col-md-4">Penjual</p>
                            <asp:Label CssClass="col-md-8" runat="server" ID="penjual" Text="-" />
                        </div>
                        <div class="row">
                            <p class="col-md-4">Tanggal</p>
                            <asp:Label CssClass="col-md-8" runat="server" ID="tanggalpengiriman" Text="-" />
                        </div>
                        <div class="row">
                            <p class="col-md-4">Alamat Penerima</p>
                            <asp:Label CssClass="col-md-8" runat="server" ID="alamatpenerima" Text="-" />
                        </div>

                    </div>
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
                                        <asp:Label runat="server" Text="Daftar Pesanan" CssClass="fontSubAccount" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column; margin-bottom : 20px">
                                            <asp:Label ID="lblNamaProduk" Text='<%#Eval("NamaProduk") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Jumlah" CssClass="fontSubAccountKuantitas" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column;">
                                            <asp:Label ID="lblKuantitas" Text='<%#Eval("Kuantitas") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Per" CssClass="fontSubAccountKuantitas" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column;">
                                            <asp:Label ID="lblsatuan" Text='<%#Eval("Satuan") %>' runat="server" />
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
                                            <asp:Label ID="lblharga" Text='<%#Eval("HargaRp") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Diskon" CssClass="fontSubAccountKuantitas" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column;">
                                            <asp:Label ID="lbldiskon" Text='<%#Eval("DiskonRp") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Subtotal" CssClass="fontSubAccountKuantitas" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column;">
                                            <asp:Label ID="lbldiskon" Text='<%#Eval("TotalRp") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                Tidak ada data
                            </EmptyDataTemplate>
                        </asp:GridView>

                    </div>
                    <div class="col-md-12 panelPembelianSub" style="margin-top: 30px; border : black solid thin; border-radius : 10px">
                        <p class="ringkasantop"><b>Ringkasan Belanja</b></p>
                        <hr />
                        <div class="row">
                            <p class="col-md-8 ringkasan">Subtotal Produk</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="txtHarga" />
                        </div>
                        <div class="row">
                            <p class="col-md-8 ringkasan">Biaya Kemasan(kardus)</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="txtKemasan" Text="-" />
                        </div>
                        <div class="row">
                            <p class="col-md-8 ringkasan">Biaya Pengiriman</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="txtPengiriman" Text="-" />
                        </div>
                        <div class="row">
                            <p class="col-md-8 ringkasan">Diskon</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="txtDiskon" Text="-" />
                        </div>
                        <hr />
                        <div class="row">
                            <p class="col-md-8 ringkasan">Total</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="txtTotal" Text="-" />
                        </div>
                    </div>
                    <div class="col-md-12" style="text-align: right; margin-top: 50px; margin-bottom: 50px">

                        <asp:Button runat="server" class="masukLoginPlus" OnClick="btnNext1_Click" Text="Terima Pesanan" />
                    </div>
                </asp:Panel>
                <asp:Panel ID="panel2" runat="server" Visible ="false">
                    <div class="col-md-12" style="margin-top: 20px; margin-bottom: 20px">
                        <img src="AdminContent/labelpemesananbaru.png" />
                    </div>
                    <div style="display: flex; flex-direction: column">
                        <div class="form-group" style="display: flex; flex-direction: row; margin: 30px auto">
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabelactive">
                                <img src="Content/Images/formchecklist2.png" class="imageDaftarNumberLabel"/>
                                <p>Konfirmasi Pesanan</p>
                            </asp:Panel>
                            <div class="garisKeras"></div>
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabel">
                                <asp:Label runat="server" CssClass="formNumberLabel" Text="2" />
                                <p>Pesanan Diproses</p>
                            </asp:Panel>
                            <div class="garisKeras"></div>
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabel">
                                <asp:Label runat="server" CssClass="formNumberLabel" Text="3" />
                                <p>Dalam Pengiriman</p>
                            </asp:Panel>
                            <div class="garisKeras"></div>
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabel">
                                <asp:Label runat="server" CssClass="formNumberLabel" Text="4" />
                                <p>Pesanan Selesai</p>
                            </asp:Panel>
                        </div>
                    </div>
                    <div class="col-md-12 panelPembelianSub" style="margin-top: 30px">
                        <p><b>Ringkasan Belanja</b></p>
                        <hr />
                        <div class="row">
                            <p class="col-md-4">Kode Pemesanan</p>
                            <asp:Label CssClass="col-md-8" runat="server" ID="Label1" />
                        </div>
                        <div class="row">
                            <p class="col-md-4">Pembeli dan Nomor Telpon</p>
                            <asp:Label CssClass="col-md-8" runat="server" ID="Label2" />
                        </div>
                        <div class="row">
                            <p class="col-md-4">Penjual</p>
                            <asp:Label CssClass="col-md-8" runat="server" ID="Label3" Text="-" />
                        </div>
                        <div class="row">
                            <p class="col-md-4">Tanggal</p>
                            <asp:Label CssClass="col-md-8" runat="server" ID="Label4" Text="-" />
                        </div>
                        <div class="row">
                            <p class="col-md-4">Alamat Penerima</p>
                            <asp:Label CssClass="col-md-8" runat="server" ID="Label5" Text="-" />
                        </div>

                    </div>
                    <div class="col-md-12 tblKeranjangPlus" style="margin-top: 40px">
                        <asp:GridView runat="server" ID="GridView1"
                            AllowPaging="false"
                            AllowSorting="false"
                            AutoGenerateColumns="false"
                            GridLines="None"
                            CssClass="container-fluid"
                            RowStyle-CssClass="tblRow ">
                            <Columns>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Daftar Pesanan" CssClass="fontSubAccount" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column; margin-bottom : 20px">
                                            <asp:Label ID="lblNamaProduk" Text='<%#Eval("NamaProduk") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Jumlah" CssClass="fontSubAccountKuantitas" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column;">
                                            <asp:Label ID="lblKuantitas" Text='<%#Eval("Kuantitas") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Per" CssClass="fontSubAccountKuantitas" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column;">
                                            <asp:Label ID="lblsatuan" Text='<%#Eval("Satuan") %>' runat="server" />
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
                                            <asp:Label ID="lblharga" Text='<%#Eval("HargaRp") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Diskon" CssClass="fontSubAccountKuantitas" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column;">
                                            <asp:Label ID="lbldiskon" Text='<%#Eval("DiskonRp") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" Text="Subtotal" CssClass="fontSubAccountKuantitas" />
                                    </HeaderTemplate>

                                    <HeaderStyle Font-Bold="true" />
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column;">
                                            <asp:Label ID="lbldiskon" Text='<%#Eval("TotalRp") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                Tidak ada data
                            </EmptyDataTemplate>
                        </asp:GridView>

                    </div>
                    <div class="col-md-12 panelPembelianSub" style="margin-top: 30px; border : black solid thin; border-radius : 10px">
                        <p class="ringkasantop"><b>Ringkasan Belanja</b></p>
                        <hr />
                        <div class="row">
                            <p class="col-md-8 ringkasan">Subtotal Produk</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="Label6" />
                        </div>
                        <div class="row">
                            <p class="col-md-8 ringkasan">Biaya Kemasan(kardus)</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="Label7" Text="-" />
                        </div>
                        <div class="row">
                            <p class="col-md-8 ringkasan">Biaya Pengiriman</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="Label8" Text="-" />
                        </div>
                        <div class="row">
                            <p class="col-md-8 ringkasan">Diskon</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="Label9" Text="-" />
                        </div>
                        <hr />
                        <div class="row">
                            <p class="col-md-8 ringkasan">Total</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="Label10" Text="-" />
                        </div>
                    </div>
                    <div class="col-md-12" style="text-align: right; margin-top: 50px; margin-bottom: 50px">

                        <asp:Button runat="server" class="masukLoginPlus" OnClick="btnNext1_Click" Text="Terima Pesanan" />
                    </div>
                </asp:Panel>
            </asp:Panel>
        </form>


    </div>

</body>
</html>
