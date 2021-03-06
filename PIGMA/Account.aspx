<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="PIGMA.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="panelHapus" runat="server" Visible="false">
                <div class="form-modal-panel" style="height:225px;">
                    <div style="display:inline-block;width:100%;padding:20px 40px;display:flex;flex-direction:column;">
                        <p style="font-size:20px;font-weight:bold;margin-left:auto;margin-right:auto;">Transaksi Berulang Berhasil</p>
                        <p style="font-size:16px;font-weight:200;margin-left:auto;margin-right:auto;text-align:center;">Transaksi beruland anda berhasil<br />apakah anda ingin melihat transaksi ini ?</p>
                        <div style="display:flex;flex-direction:row;height:40px;">
                            <div class="col-md-6">
                                <asp:button runat="server" class="daftarLoginPlus" Text="Kembali"/>
                            </div>
                            <div class="col-md-6">
                                <asp:button runat="server" class="masukLoginPlus" Text="Lihat Transaksi"/>
                            </div>
                        </div>
                        
                    </div>
                </div>
        </asp:Panel>
    <asp:Panel ID="panelBerulang" runat="server" Visible="false" CssClass="form-modal-panel">
            <asp:Button runat="server" CssClass="btnClose" Text="X"/>
                <div style="padding:40px;">
                    <div style="margin-bottom:40px">
                        <p style="color:#262628;font-weight:bold;font-size:20px;">Waktu Transaksi Berulang</p>
                        <hr />
                    </div>
                    <div>
                        <p style="color:#262628;font-weight:200;font-size:18px;margin-top:-7px">Diulang Setiap</p>
                       <p style="color:#262628;font-size:16px;margin-top:-7px">Kapan waktu pengulangan dilakukan</p>
                    </div>
                    <div>
                        <asp:RadioButtonList runat="server" ID="rbFrekuensiTB" RepeatDirection="horizontal" Width="80%">
                            <asp:ListItem Text="Hari  " Value="h"></asp:ListItem>
                            <asp:ListItem Text="Minggu" Value="m"></asp:ListItem>
                            <asp:ListItem Text="Bulan " Value="b"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div style="width:100%;display:flex;flex-direction:row;margin-bottom:40px">
                        <input type="number" id="numberHari" name="points" step="1" class="btnNmb" value="1" runat="server">
                        <div class="btnDivide"></div>
                        <input type="number" id="numberMinggu" name="points" step="1" class="btnNmb" value="1" runat="server">
                        <div class="btnDivide"></div>
                        <input type="number" id="numberBulan" name="points" step="1" class="btnNmb" value="1" runat="server">
                    </div>
                    <div>
                        <p style="color:#262628;font-weight:bold;font-size:20px;">Frequensi Diulang</p>
                        <p style="color:#262628;font-weight:200;font-size:18px;margin-top:-7px">Banyaknya transaksi diulang berapa kali</p>
                    </div>
                    <div>
                        <input type="number" id="numberFrek" name="points" step="1" class="btnNmb" value="1" runat="server">
                    </div>
                    <div class="form-group" style="height: 40px;margin:20px -15px;display:flex;flex-direction:row;">
                        <div class="col-md-6">
                                <asp:button runat="server" class="daftarLoginPlus" Text="Batal" OnClick="Freq_Cancel"/>
                            </div>
                            <div class="col-md-6">
                                <asp:button runat="server" class="masukLoginPlus" Text="Oke" OnClick="Freq_Confirm"/>
                            </div>
                    </div>
                </div>
        </asp:Panel>
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
            <a runat="server" class="listSidebarAccount ">
                <img src="Content/Images/Transaksi Berulang.png" alt="">
                <p>Transaksi Berulang</p>
            </a>
            <a class="btn btn-danger keluarSidebarAccount col-md-12">Keluar</a>
        </div>
        <div class="col-md-1">

        </div>
        <asp:Panel runat="server" id="panelPesanan" CssClass="col-md-8 container sidebarAccount" Visible="false">
            <div class="row">
                <div class="col-md-3" style="margin:auto 0px;">
                    <p class="fontMainAccount">Pesanan Saya</p>
                </div>
                <div class="col-md-7"></div>
                <div class="col-md-2" style="margin:auto 0px;">
                    <div class="dropdown">
                      <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Semua
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                      </div>
                    </div>
                </div>
            </div>
            <hr />
            <div class="row" style="display:flex;flex-direction:row">
                <div class="col-md-12 container"style="border: solid thin; margin-top: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom: none; display:flex;flex-direction :row">
                    <div class="col-md-3" style="margin:auto 0px;">
                        <p style="font-weight:bold;">Transmart Carrefour Central Park</p>
                    </div>
                    <div class="col-md-7"></div>
                    <div class="col-md-2" style="margin:auto 0px;">
                        <asp:label runat="server" ID="Label3" text="Diproses" CssClass="statusBar"/>
                    </div>
                </div>
                <div class="col-md-12 container"style="border: solid thin;border-bottom: none; border-top:none; display:flex;flex-direction :row;padding:15px">
                    <div class="col-md-1" style="display:flex;flex-direction:row">
                        <img src="Content/Images/CardProduk.png" alt="" style="width:50px;height:50px;margin:auto;border:1px solid #FFF;">
                    </div>
                    <div class="col-md-5" style="display:flex;flex-direction:column">
                        <p>Keju Cheddar</p>
                        <p>175g</p>
                        <Label Class="lblHargaListPlus" style="width:150px">Rp17.500</Label>
                    </div>
                    <div class="col-md-3" style="display:flex;flex-direction:row">
                        <p style="margin:auto">1</p>
                    </div>
                    <div class="col-md-3" style="display:flex;flex-direction:row">
                        <p style="margin:auto">Rp17.500</p>
                    </div>
                </div>
                <div class="col-md-12 container"style="border: solid thin;border-bottom: none; border-top:none; display:flex;flex-direction :row;padding:15px">
                    <div class="col-md-1" style="display:flex;flex-direction:row">
                        <img src="Content/Images/CardProduk.png" alt="" style="width:50px;height:50px;margin:auto;border:1px solid #FFF;">
                    </div>
                    <div class="col-md-5" style="display:flex;flex-direction:column">
                        <p>Keju Cheddar</p>
                        <p>175g</p>
                        <Label Class="lblHargaListPlus" style="width:150px">Rp17.500</Label>
                    </div>
                    <div class="col-md-3" style="display:flex;flex-direction:row">
                        <p style="margin:auto">1</p>
                    </div>
                    <div class="col-md-3" style="display:flex;flex-direction:row">
                        <p style="margin:auto">Rp17.500</p>
                    </div>
                </div>
                <div class="pesanancardviewbaru" style="text-align:right;">
                    <div class="col-md-4" style="text-align : left; margin-left : 30px; margin-top : 10px;display:flex;flex-direction:row;">
                        <h5>
                        <label style="font-size:25px;margin:auto 0px;"><b>Total Pesanan</b></label>

                        </h5>
                        <h5>
                        <label style="font-size:25px;margin:auto 40px;">Rp35.000</label>
                        </h5>
                    </div>
                    <div class="col-md-8" style="text-align:right"><button class="pesanancardbutton">Transaksi Berulang</button>
                    <button class="pesanancardbuttonright">Lihat Detail</button></div>
                    <img src="Content/Images/Time.png" alt="" class="smallIconAccount">
                </div>
            </div>
        </asp:Panel>
        <asp:Panel runat="server" ID="daftarReceipt" CssClass="col-md-8 container sidebarAccount" Visible="false">
            <asp:GridView ID="GridView1" runat="server"
                ShowHeaderWhenEmpty="True" AutoGenerateColumns="false" BackColor="White"
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                ShowFooter="True" OnRowCommand="GridView1_RowCommand" HorizontalAlign="Justify">
                <Columns>
                    <asp:TemplateField >
                        <HeaderTemplate>
                                    <asp:Label runat="server" Text="ID Receipt"/>
                                </HeaderTemplate>
                                <ItemTemplate>
                                        <div style="display:flex;flex-direction:column">
                                            <asp:Label ID="lblID" Text='<%#Eval("IDReceipt") %>' runat="server" />
                                        </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                    <asp:TemplateField >
                        <HeaderTemplate>
                                    <asp:Label runat="server" Text="Tanggal pengiriman"/>
                                </HeaderTemplate>
                                <ItemTemplate>
                                        <div style="display:flex;flex-direction:column">
                                            <asp:Label ID="lblWaktu" Text='<%#Eval("WaktuPengiriman") %>' runat="server" />
                                        </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                    <asp:TemplateField >
                        <HeaderTemplate>
                                    <asp:Label runat="server" Text="Total"/>
                                </HeaderTemplate>
                                <ItemTemplate>
                                        <div style="display:flex;flex-direction:column">
                                            <asp:Label ID="lblTotRp" Text='<%#Eval("TotalRP") %>' runat="server" />
                                        </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                    <asp:TemplateField >
                        <HeaderTemplate>
                                    <asp:Label runat="server" Text="Status"/>
                                </HeaderTemplate>
                                <ItemTemplate>
                                        <div style="display:flex;flex-direction:column">
                                            <asp:Label ID="lblStat" Text='<%#Eval("Status") %>' runat="server" />
                                        </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnCetak" runat="server" Text="Lihat"
                                CommandArgument='<%# Eval("IDReceipt") %>'
                                CommandName="Lihat" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
                <EmptyDataTemplate>No Record Available</EmptyDataTemplate>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="DarkGreen" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </asp:Panel>
        <asp:panel runat="server" id="detailReceipt" CssClass="col-md-8 container sidebarAccount" Visible="false">
            <div class="row">
                <div class="col-md-3" style="margin:auto 0px;">
                    <p class="fontMainAccount">Rincian Pesanan</p>
                </div>
                <div class="col-md-7"></div>
                <div class="col-md-2" style="margin:auto 0px;">
                    <asp:label runat="server" ID="lblStatus" text="Dikirim" CssClass="statusBar"/>
                </div>
            </div>
            <hr />
            <asp:Label runat="server" ID="lblsupa" Cssclass="fontMainAccount"/>
            <div style="margin-top:30px;display:flex;flex-direction:row;margin-bottom:10px">
                <img src="Content/Images/Location.png" alt="" class="smallIconAccount">
                <p class="fontSubAccount" style="margin:auto 0px">Data Pengiriman</p>
            </div>
            <asp:Label runat="server" ID="lblPengiriman"/>
            <asp:Button CssClass="btnBiru" runat="server" Text="Ubah Data Pengirim" Visible="false" ID="btnxx0"/>
            <div style="margin-top:30px;display:flex;flex-direction:row;margin-bottom:10px">
                <img src="Content/Images/Time.png" alt="" class="smallIconAccount">
                <p class="fontSubAccount" style="margin:auto 0px">Waktu Pengiriman</p>
            </div>
            <asp:Label runat="server" ID="lblWaktu"/>
            <asp:Button CssClass="btnBiru" runat="server" Text="Ubah Jadwal Transaksi Berulang" Visible="false" ID="btnxx1" OnClick="btnBerulang_Open"/>

            <div style="margin-top:30px;margin-bottom:10px">
                <p class="fontSubAccount" style="margin:auto 0px">Metode Pembayaran</p>
            </div>
            <asp:Label runat="server" ID="lblMetode"  Text="Tunai"/>

            <div style="margin-top:30px;margin-bottom:10px">
                <p class="fontSubAccount" style="margin:auto 0px">Status Pengiriman</p>
            </div>
            <p>Pengiriman dilakukan sesuai dengan waktu yang dipilih saat transaksi</p>
            <asp:Label runat="server" ID="Label1"  Text="Tunai"/>

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
            
            <div class="col-md-12" style="display:flex;flex-direction:row;margin:10px;height:45px;">
                <div class="col-md-6"></div>
                <div class="col-md-6" style="display:flex;flex-direction:row">
                    <div class="col-md-6">
                        <asp:button runat="server" class="masukLoginPlus" Text="Transaksi Berulang" OnClick="tbPlus_click"/>
                    </div>
                    <div class="col-md-6">
                        <asp:button runat="server" class="daftarLoginPlus2" Text="Batalkan Pesanan" OnClick="tb_click"/>
                    </div>
                </div>
            </div>
            <!--
            <div class="col-md-12" style="display:flex;flex-direction:row;margin:10px;height:45px;">
                <div class="col-md-6"></div>
                <div class="col-md-6" style="display:flex;flex-direction:row">
                    <div class="col-md-6">
                        <asp:button runat="server" class="masukLoginPlus" Text="Hapus Transaksi" OnClick="tb_click"/>
                    </div>
                    <div class="col-md-6">
                        <asp:button runat="server" class="masukLoginPlus" Text="Konfirmasi Transaksi" OnClick="tb_click"/>
                    </div>
                </div>
            </div>
            -->
        </asp:panel>
        <asp:Panel runat="server" id="panelTB" CssClass="col-md-8 container sidebarAccount" visible="false">
            <div class="row">
                <p class="fontMainAccount">Daftar Transaksi Berulang</p>
            </div>
            <hr />
            <div class="row" style="display:flex;flex-direction:row">
                <div class="col-md-12 container"style="border: solid thin; margin-top: 40px; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom: none; display:flex;flex-direction :row">
                    <div class="col-md-3" style="margin:auto 0px;">
                        <p style="font-weight:bold;">Kebutuhan Sehari hari</p>
                    </div>
                    <div class="col-md-7"></div>
                    <div class="col-md-2" style="margin:auto 0px;">
                        <p>Hapus</p>
                    </div>
                </div>
                <div class="col-md-12 container"style="border: solid thin;border-bottom: none; border-top:none; display:flex;flex-direction :column;padding:15px">
                    <p style="font-weight:bold;">Transmart Carrefour Central Park</p>
                    <p>Jumlah Produk : 34 Produk</p>
                    <div style="display:flex;flex-direction:row;margin-left:-15px">
                        <div class="col-md-4">
                            <p class="lblAlamat">Dikirim setiap 16 hari, diulang sebanyak 2 kali</p>
                        </div>
                        <div class="col-md-4">
                            <p class="lblAlamat">Pengiriman Berikutnya, 24 Oktober 2020</p>
                        </div>
                    </div>
                </div>
                <div class="pesanancardviewbaru" style="text-align:right;background-color:#74B816">
                    <div class="col-md-4" style="text-align : left; margin-left : 30px; margin-top : 10px;display:flex;flex-direction:row;">
                    </div>
                    <div class="col-md-8" style="text-align:right"><button class="pesanancardbutton">Lihat</button>
                    <button class="pesanancardbuttonright" style="width:175px">Konfirmasi Transaksi</button></div>
                </div>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
