<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="PIGMA.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid row">
        <div class="col-md-3 container sidebarAccount">
            <div class="gambarSidebarAccount">
                <img src="Content/Images/ProfilePicture.png" alt="">
                <div class="container" style="margin-left:20px">
                    <p style="font-size:20px;color:#262628;"><b>Sophi Nuraeni</b></p>
                    <a style="font-size:16px;color:#BAB9C1;" href="/">Edit Foto</a>
                </div>
            </div>
            <a runat="server" class="listSidebarAccount">
                <img src="Content/Images/UserAkunSaya.png" alt="">
                <p >Akun Saya</p>
            </a>
            <a runat="server" class="listSidebarAccount lsaActive">
                <img src="Content/Images/AkunPesanan.png" alt="">
                <p>Pesanan</p>
            </a>
            <a runat="server" class="listSidebarAccount">
                <img src="Content/Images/Transaksi Berulang.png" alt="">
                <p>Transaksi Berulang</p>
            </a>
            <a class="btn btn-danger keluarSidebarAccount col-md-12">Keluar</a>
        </div>
        <div class="col-md-1">

        </div>
        <div class="col-md-8 container sidebarAccount">
            <div class="row">
                <div class="col-md-3" style="margin:auto 0px;">
                    <p class="fontMainAccount">Rincian Pesanan</p>
                </div>
                <div class="col-md-7"></div>
                <div class="col-md-2" style="margin:auto 0px;">
                    <asp:label runat="server" ID="lblStatus" text="status"/>
                </div>
            </div>
            <hr />
            <asp:Label runat="server" ID="lblsupa" Cssclass="fontMainAccount"/>
            <div style="margin-top:20px;display:flex;flex-direction:row">
                <img src="Content/Images/Location.png" alt="" class="smallIconAccount">
                <p class="fontSubAccount" style="margin:auto 0px">Data Pengiriman</p>
            </div>
            <asp:Label runat="server" ID="lblPengiriman"  Text="ga"/>
            <div style="margin-top:20px;display:flex;flex-direction:row">
                <img src="Content/Images/Time.png" alt="" class="smallIconAccount">
                <p class="fontSubAccount" style="margin:auto 0px">Waktu Pengiriman</p>
            </div>
            <asp:Label runat="server" ID="lblWaktu" Text="ga"/>
            <div style="margin-top:20px;">
                <p class="fontSubAccount" style="margin:auto 0px">MetodePembayaran</p>
            </div>
            <asp:Label runat="server" ID="lblMetode"  Text="Tunai"/>

            <div class="col-md-12 tblKeranjangPlus" style="margin-top:40px">
                    <asp:GridView runat="server" ID="gridObject"
                        AllowPaging="false"
                        AllowSorting="false"
                        AutoGenerateColumns="false"
                        GridLines="None"
                        CssClass="container-fluid"
                        RowStyle-CssClass="tblRow ">
                        <Columns>
                            <asp:TemplateField >
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="Daftar Pesanan" CssClass="fontSubAccount"/>
                                </HeaderTemplate>
                                <HeaderStyle Font-Bold="true" />
                                <ItemTemplate>
                                    <div style="display:flex;flex-direction:column">
                                        <img src="Content/Images/CardProduk.png" alt="" style="width:50px;height:50px;margin:0px auto;border:1px solid #FFF;">
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField >
                                <ItemTemplate>
                                    <asp:Label ID="lblID" Text='<%#Eval("IDProduk") %>' runat="server" Visible="false" />
                                    <asp:Label ID="lblHarga" Text='<%#Eval("Total") %>' runat="server" Visible="false" />
                                        <div style="display:flex;flex-direction:column">
                                            <asp:Label ID="lblNamaProduk" Text='<%#Eval("NamaProduk") %>' runat="server" />
                                            <div style="display:flex;flex-direction:row">
                                                <asp:Label ID="lblHargaRP" CssClass="lblHargaListPlus" Text='<%#Eval("HargaRP") %>' runat="server" />
                                                <asp:Label CssClass="midRow" Text=" / Kg" runat="server" />
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField >
                                <ItemTemplate>
                                        <div style="display:flex;flex-direction:column;border-left:1px solid #9B9FA0">
                                            <asp:Label ID="lblKuantitas" Text='<%#Eval("Kuantitas") %>' runat="server" />
                                        </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:Label runat="server" ID="lblTableCount" CssClass="fontSubAccount"/>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div style="display:flex;flex-direction:column;border-left:1px solid #9B9FA0">
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
            <div class="col-md-12 panelPembelianSub" style="margin-top:30px">
                            <p><b>Ringkasan Belanja</b></p>
                            <hr />
                            <div class="row">
                                <p class="col-md-9">Subtotal Produk</p>
                                <asp:Label Cssclass="col-md-3" runat="server" ID="txtHarga" />
                            </div>
                            <div class="row">
                                <p class="col-md-9">Biaya Kemasan(kardus)</p>
                                <asp:Label Cssclass="col-md-3" runat="server" ID="txtKemasan" Text="-" />
                            </div>
                            <div class="row">
                                <p class="col-md-9">Biaya Pengiriman</p>
                                <asp:Label Cssclass="col-md-3" runat="server" ID="txtPengiriman" Text="-" />
                            </div>
                            <div class="row">
                                <p class="col-md-9">Diskon</p>
                                <asp:Label Cssclass="col-md-3" runat="server" ID="txtDiskon" Text="-" />
                            </div>
                            <hr />
                            <div class="row">
                                <p class="col-md-9">Total</p>
                                <asp:Label Cssclass="col-md-3" runat="server" ID="txtTotal"/>
                            </div>
                        </div>
        </div>
    </div>
</asp:Content>
