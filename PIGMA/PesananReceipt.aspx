<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PesananReceipt.aspx.cs" Inherits="PIGMA.WebForm5" %>


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
                                <span class="button-text active">Pesanan</span>
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
        <form runat="server">
            <div class="col-md-12 panelPembelianSub" style="margin-top: 30px">
                <p><b>Ringkasan Belanja</b></p>
                <hr />
                <div class="row">
                    <p class="col-md-4">Kode Pemesanan</p>
                    <asp:Label CssClass="col-md-8" runat="server" ID="kodepemesanan" />
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

            <asp:Panel class="col-md-12" ID="panelPembelianBelanja" runat="server" Visible="true">
                <asp:Panel ID="panel1" runat="server">
                    <div style="display: flex; flex-direction: column">
                        <div class="form-group" style="display: flex; flex-direction: row; margin: 30px auto">
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabelactive">
                                <asp:Label runat="server" CssClass="formNumberLabelactive" Text="1" />
                                <p>Data Pribadi</p>
                            </asp:Panel>
                            <div class="garisKeras"></div>
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabel">
                                <asp:Label runat="server" CssClass="formNumberLabel" Text="2" />
                                <p>Waktu Pengiriman</p>
                            </asp:Panel>
                            <div class="garisKeras"></div>
                            <asp:Panel runat="server" CssClass="formDaftarNumberLabel">
                                <asp:Label runat="server" CssClass="formNumberLabel" Text="3" />
                                <p>Metode Pembayaran</p>
                            </asp:Panel>
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
                                        <div style="display: flex; flex-direction: column">
                                            <img src="Content/Images/CardProduk.png" alt="" style="width: 50px; height: 50px; margin: 0px auto; border: 1px solid #FFF;">
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Label ID="lblID" Text='<%#Eval("IDProduk") %>' runat="server" Visible="false" />
                                        <asp:Label ID="lblHarga" Text='<%#Eval("Total") %>' runat="server" Visible="false" />
                                        <div style="display: flex; flex-direction: column">
                                            <asp:Label ID="lblNamaProduk" Text='<%#Eval("NamaProduk") %>' runat="server" />
                                            <div style="display: flex; flex-direction: row">
                                                <asp:Label ID="lblHargaRP" CssClass="lblHargaListPlus" Text='<%#Eval("HargaRP") %>' runat="server" />
                                                <asp:Label CssClass="midRow" Text=" / Kg" runat="server" />
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column; border-left: 1px solid #9B9FA0">
                                            <asp:Label ID="lblKuantitas" Text='<%#Eval("Kuantitas") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <asp:Label runat="server" ID="lblTableCount" CssClass="fontSubAccount" />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <div style="display: flex; flex-direction: column; border-left: 1px solid #9B9FA0">
                                            <asp:Label Text="Total" Font-Bold="true" CssClass="midColumn" runat="server" />
                                            <asp:Label ID="Label2" CssClass="midColumn" Text='<%#Eval("TotalRP") %>' runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                Tidak ada data
                            </EmptyDataTemplate>
                        </asp:GridView>

                    </div>
                    <div class="col-md-12 panelPembelianSub" style="margin-top: 30px">
                        <p><b>Ringkasan Belanja</b></p>
                        <hr />
                        <div class="row">
                            <p class="col-md-9">Subtotal Produk</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="txtHarga" />
                        </div>
                        <div class="row">
                            <p class="col-md-9">Biaya Kemasan(kardus)</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="txtKemasan" Text="-" />
                        </div>
                        <div class="row">
                            <p class="col-md-9">Biaya Pengiriman</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="txtPengiriman" Text="-" />
                        </div>
                        <div class="row">
                            <p class="col-md-9">Diskon</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="txtDiskon" Text="-" />
                        </div>
                        <hr />
                        <div class="row">
                            <p class="col-md-9">Total</p>
                            <asp:Label CssClass="col-md-3" runat="server" ID="txtTotal" Text="-" />
                        </div>
                    </div>
                    <div class="col-md-12" style="text-align :right; margin-top : 50px; margin-bottom :50px">
                    
                                <asp:Button runat="server" class="masukLoginPlus" OnClick="btnNext1_Click" Text="Terima Pesanan" />
                    </div>
                </asp:Panel>

            </asp:Panel>
        </form>


    </div>

</body>
</html>
