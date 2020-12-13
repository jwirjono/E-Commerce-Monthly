<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Keranjang.aspx.cs" Inherits="PIGMA.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid KeranjangPlus">
        <div class ="row keranjangHeader" style="display:flex;flex-direction:column;">
            <asp:Label runat="server" ID="lblMainHeader" CssClass="labelHeader" Text="Keranjang Belanja"/>
            <asp:Label runat="server" ID="lblsupa" CssClass="labelSubHeader" visible="false"/>
        </div>
        <div class ="row" style="flex-direction:column;">
            <asp:Panel CssClass="keranjangKosong" ID="panelKeranjangKosong" runat="server">
                <img style="width:50%;margin-left:auto;margin-right:auto;"src="Content/Images/KeranjangKosong.png" alt="Kosong">
                <p style="font-size:24px;color:#262628;" class="midColumn"><b>Wah, Keranjang Belanjamu Kosong</b></p>
                <p style="font-size:16px;color:#373F41;" class="midColumn">Daripada dianggurin, mending isi dengan barang-barang impianmu. Yuk, cek sekarang!</p>
                <asp:Button style="font-size:18px;width:40%;padding:10px 0px;margin-left:auto;margin-right:auto;" runat="server" CssClass="btn grnBtn" OnClick="btn_mulaibelanja" Text="Mulai Belanja"/>
            </asp:Panel>
            <asp:Panel runat="server" CssClass="container-fluid row" ID="panelKeranjangBelanja" Visible="false">
                <div class="col-md-9 tblKeranjangPlus">
                    <asp:HiddenField Value="0" runat="server" ID="chkAllprop" />
                    <asp:GridView runat="server" ID="gridObject"
                        AllowPaging="false"
                        AllowSorting="false"
                        AutoGenerateColumns="false"
                        GridLines="None"
                        CssClass="container-fluid"
                        RowStyle-CssClass="tblRow ">
                        <Columns>
                            <asp:TemplateField HeaderText="No.">
                                <ItemStyle Width="20"/>
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkAll" OnCheckedChanged="chkAll_CheckedChanged" AutoPostBack="true" runat="server"/>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkStats" runat="server"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField >
                                <HeaderTemplate>
                                    <asp:Label runat="server" Text="GIANT"/>
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
                                    <asp:Label ID="lblHarga" Text='<%#Eval("Harga") %>' runat="server" Visible="false" />
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
                                        <div style="display:flex;flex-direction:column">
                                            <asp:Label ID="lblKuantitas" Text='<%#Eval("Kuantitas") %>' runat="server" />
                                        </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div style="display:flex;flex-direction:column;border-left:1px solid #9B9FA0">
                                            <asp:Label Text="Total" Font-Bold="true" CssClass="midColumn" runat="server" />
                                            <asp:Label ID="Label2" CssClass="midColumn" Text='<%#Eval("HargaRP") %>' runat="server" />
                                        </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            Tidak ada data
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
                <div class="col-md-3" style="display:flex;flex-direction:column">
                    <div style="display:flex;flex-direction:row;">
                        <p>Alamat Penerima</p>
                        <a>Ubah</a>
                    </div>
                    <p>jl. Kebon Sirih Barat 1 No.10F</p>
                    <div class="ringkasanBelanja">
                        <p class="col-md-12">Ringkasan Belanja</p>
                        <hr />
                        <div style="display:flex;flex-direction:row">
                            <p class="col-md-9">Total Harga</p>
                            <asp:label runat="server" CssClass="col-md-3" ID="totalharga1" Text="-"></asp:label>
                        </div>
                        <div style="height:30px;width:100%;margin:15px 0px">
                            <asp:Button runat="server" CssClass="masukLoginPlus" Text="Beli" OnClick="btnComplete_Click"/>
                        </div>
                    </div>
                    <img style="width:60%;margin-left:auto;margin-right:auto;margin-top:30px"src="Content/Images/OrangBahagia.png" alt="Kosong">
                </div>
            </asp:Panel>
            <asp:Panel ID="panelPembelianBelanja" runat="server" Visible="false">
                <asp:panel ID="panel1" runat="server">
                    <div style="display:flex;flex-direction:column">
                        <div class="form-group" style="display:flex;flex-direction:row;margin:30px auto">
                            <asp:panel runat="server" Cssclass="formDaftarNumberLabelactive">
                                <asp:Label runat="server" CssClass="formNumberLabelactive" Text ="1"/>
                                <p>Data Pribadi</p>
                            </asp:panel>
                            <div class="garisKeras"></div>
                            <asp:panel runat="server" Cssclass="formDaftarNumberLabel">
                                <asp:Label runat="server" CssClass="formNumberLabel" Text ="2"/>
                                <p>Waktu Pengiriman</p>
                            </asp:panel>
                            <div class="garisKeras"></div>
                            <asp:panel  runat="server" Cssclass="formDaftarNumberLabel">
                                <asp:Label  runat="server" CssClass="formNumberLabel" Text ="3"/>
                                <p>Metode Pembayaran</p>
                            </asp:panel>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-7 panelPembelianMain" style="flex: 0 0 65%;max-width: 65%;">
                            <div class="col-md-1" style="display:flex;flex-direction:column">
                                <p class="nomorDataPembelianBelanja">1</p>
                            </div>
                            <div class="akunDataPembelianBelanja col-md-11">
                                <div class="form-group" style="display:flex;flex-direction:column">
                                    <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Data Pribadi</b></asp:label>
                                    <asp:label runat="server" CssClass="form-controlPlus" style="font-size:12px;color:#9B9FA0;">Jika ingin mengubah nomor dan nama, anda harus mengubah dari akun anda</asp:label>
                                </div>
                                <div class="form-group" style="display:flex;flex-direction:row;">
                                    <div style="display:flex;flex-direction:column">
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Nama Penerima</b></asp:label>
                                        <asp:TextBox runat="server" ID="TextBox1" CssClass="form-controlPlus" Text="Ricardo..."/>
                                    </div>
                                    <div style="display:flex;flex-direction:column">
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Nomor Telepon</b></asp:label>
                                        <asp:TextBox runat="server" ID="TextBox2" CssClass="form-controlPlus" Text="081xxxx"/>
                                    </div>
                                </div>
                                <div class="form-group" style="display:flex;flex-direction:row;">
                                    <div style="display:flex;flex-direction:column">
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Alamat Penerima</b></asp:label>
                                        <asp:TextBox runat="server" ID="TextBox3" CssClass="form-controlPlus" Text="jl.xxxx" Width="500px"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1" style="flex: 0 0 3%;max-width: 3%;"></div>
                        <div class="col-md-4 panelPembelianSub" style="flex: 0 0 32%;max-width: 32%;">
                            <p><b>Ringkasan Belanja</b></p>
                            <hr />
                            <p>Subtotal</p>
                            <div class="row">
                                <p class="col-md-8">Subtotal</p>
                                <p class="col-md-4">Rp.783.300</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Kemasan(kardus)</p>
                                <p class="col-md-4">Rp.5.000</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Pengiriman</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Diskon</p>
                                <p class="col-md-4">-Rp.47.000</p>
                            </div>
                            <hr />
                            <div class="row">
                                <p class="col-md-8">Total Harga</p>
                                <p class="col-md-4">Rp.850.000</p>
                            </div>
                            <div class="row" style="height:60px">
                                <asp:button runat="server" class="masukInactivePlus col-md-12"  Text="Setuju dan Bayar"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="row form-group daftarmasuk" style="margin-top:30px;width:30%">
                            <div class="col-md-6">
                                <asp:button runat="server" class="daftarLoginPlus" OnClick="btnBack1_Click"  Text="Batal"/>
                            </div>
                            <div class="col-md-6">
                                <asp:button runat="server" class="masukLoginPlus" OnClick="btnNext1_Click"  Text="Selanjutnya"/>
                            </div>
                        </div>
                    </div>
                </asp:panel>
                <asp:panel ID="panel2" runat="server" Visible="false">
                    <div style="display:flex;flex-direction:column">
                        <div class="form-group" style="display:flex;flex-direction:row;margin:30px auto">
                            <asp:panel runat="server" Cssclass="formDaftarNumberLabelactive">
                                <img src="Content/Images/formchecklist2.png" class="imageDaftarNumberLabel"/>
                                <p>Data Pribadi</p>
                            </asp:panel>
                            <div class="garisKeras"></div>
                            <asp:panel runat="server" Cssclass="formDaftarNumberLabelactive">
                                <asp:Label runat="server" CssClass="formNumberLabelactive" Text ="2"/>
                                <p>Waktu Pengiriman</p>
                            </asp:panel>
                            <div class="garisKeras"></div>
                            <asp:panel  runat="server" Cssclass="formDaftarNumberLabel">
                                <asp:Label  runat="server" CssClass="formNumberLabel" Text ="3"/>
                                <p>Metode Pembayaran</p>
                            </asp:panel>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-7 panelPembelianMain" style="flex: 0 0 65%;max-width: 65%;">
                            <div class="col-md-1" style="display:flex;flex-direction:column">
                                <p class="nomorDataPembelianBelanja">2</p>
                            </div>
                            <div class="akunDataPembelianBelanja col-md-11">
                                <div class="form-group" style="display:flex;flex-direction:column">
                                    <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Waktu Pengiriman </b></asp:label>
                                </div>
                                <div class="form-group" style="display:flex;flex-direction:row;">
                                    <div style="display:flex;flex-direction:column">
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Pengiriman</b></asp:label>
                                        <asp:TextBox runat="server" ID="TextBox4" CssClass="form-controlPlus" Text="Tanggal"/>
                                    </div>
                                </div>
                                <div class="form-group" style="display:flex;flex-direction:row;">
                                    <div style="display:flex;flex-direction:column">
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Transaksi Ulang</b></asp:label>
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:12px;color:#373F41;">Ayo jadwalkan transaksi ini untuk pengiriman berikutnya</asp:label>
                                        <div class="col-md-12">
                                            <asp:RadioButtonList runat="server" ID="rbStatus" RepeatDirection="Horizontal" Width="200">
                                                <asp:ListItem Value="True" Text="Iya"/>
                                                <asp:ListItem Value="False" Text="Tidak" />
                                            </asp:RadioButtonList>
                                        </div>
                                        <asp:TextBox runat="server" ID="TextBox5" CssClass="form-controlPlus" Text="Tanggal"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1" style="flex: 0 0 3%;max-width: 3%;"></div>
                        <div class="col-md-4 panelPembelianSub" style="flex: 0 0 32%;max-width: 32%;">
                            <p><b>Ringkasan Belanja</b></p>
                            <hr />
                            <p>Subtotal</p>
                            <div class="row">
                                <p class="col-md-8">Subtotal</p>
                                <p class="col-md-4">Rp.783.300</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Kemasan(kardus)</p>
                                <p class="col-md-4">Rp.5.000</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Pengiriman</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Diskon</p>
                                <p class="col-md-4">-Rp.47.000</p>
                            </div>
                            <hr />
                            <div class="row">
                                <p class="col-md-8">Total Harga</p>
                                <p class="col-md-4">Rp.850.000</p>
                            </div>
                            <div class="row" style="height:60px">
                                <asp:button runat="server" class="masukInactivePlus col-md-12"  Text="Setuju dan Bayar"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="row form-group daftarmasuk" style="margin-top:30px;width:30%">
                            <div class="col-md-6">
                                <asp:button runat="server" class="sebelumnyaLoginPlus"  Text="Sebelumnya" OnClick="btnBack2_Click"/>
                            </div>
                            <div class="col-md-6">
                                <asp:button runat="server" class="masukLoginPlus"  Text="Selanjutnya" OnClick="btnNext2_Click"/>
                            </div>
                        </div>
                    </div>
                </asp:panel>
                <asp:panel ID="panel3" runat="server" Visible="false">
                    <div style="display:flex;flex-direction:column">
                        <div class="form-group" style="display:flex;flex-direction:row;margin:30px auto">
                            <asp:panel runat="server" Cssclass="formDaftarNumberLabelactive">
                                <img src="Content/Images/formchecklist2.png" class="imageDaftarNumberLabel"/>
                                <p>Data Pribadi</p>
                            </asp:panel>
                            <div class="garisKeras"></div>
                            <asp:panel runat="server" Cssclass="formDaftarNumberLabelactive">
                                <img src="Content/Images/formchecklist2.png" class="imageDaftarNumberLabel"/>
                                <p>Waktu Pengiriman</p>
                            </asp:panel>
                            <div class="garisKeras"></div>
                            <asp:panel  runat="server" Cssclass="formDaftarNumberLabelactive">
                                <asp:Label  runat="server" CssClass="formNumberLabelactive" Text ="3"/>
                                <p>Metode Pembayaran</p>
                            </asp:panel>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-7 panelPembelianMain" style="flex: 0 0 65%;max-width: 65%;">
                            <div class="col-md-1" style="display:flex;flex-direction:column">
                                <p class="nomorDataPembelianBelanja">3</p>
                            </div>
                            <div class="akunDataPembelianBelanja col-md-11">
                                <div class="form-group" style="display:flex;flex-direction:column">
                                    <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Metode Pembayaran</b></asp:label>
                                    <asp:label runat="server" CssClass="form-controlPlus" style="font-size:12px;color:#373F41;">Pilih metode pembayaran anda</asp:label>
                                </div>
                                <div class="form-group" style="display:flex;flex-direction:row;">
                                    <asp:RadioButtonList runat="server" ID="RadioButtonList2" RepeatDirection="Horizontal" Width="200">
                                       <asp:ListItem Value="True" Text="Pembayaran Tunai"/>
                                    </asp:RadioButtonList>
                                </div>
                                <div class="form-group" style="display:flex;flex-direction:row;">
                                    <div style="display:flex;flex-direction:column">
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Pembayaran Tunai</b></asp:label>
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;">Pembayaran dilakukan saat barang sampai di alamat, anda akan memberikan uang tunai kepada kurir sesuai total harga pembelian.</asp:label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1" style="flex: 0 0 3%;max-width: 3%;"></div>
                        <div class="col-md-4 panelPembelianSub" style="flex: 0 0 32%;max-width: 32%;">
                            <p><b>Ringkasan Belanja</b></p>
                            <hr />
                            <p>Subtotal</p>
                            <div class="row">
                                <p class="col-md-8">Subtotal</p>
                                <p class="col-md-4">Rp.783.300</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Kemasan(kardus)</p>
                                <p class="col-md-4">Rp.5.000</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Pengiriman</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Diskon</p>
                                <p class="col-md-4">-Rp.47.000</p>
                            </div>
                            <hr />
                            <div class="row">
                                <p class="col-md-8">Total Harga</p>
                                <p class="col-md-4">Rp.850.000</p>
                            </div>
                            <div class="row" style="height:60px">
                                <asp:button runat="server" class="masukLoginPlus col-md-12"  Text="Setuju dan Bayar"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="row form-group daftarmasuk" style="margin-top:30px;width:30%">
                            <div class="col-md-6">
                                <asp:button runat="server" class="sebelumnyaLoginPlus"  Text="Sebelumnya" OnClick="btnBack3_Click"/>
                            </div>
                            <div class="col-md-6">
                                <asp:button runat="server" class="masukLoginPlus"  Text="Selanjutnya" OnClick="btnNext3_Click"/>
                            </div>
                        </div>
                    </div>
                </asp:panel>
            </asp:Panel>
        </div>
    </div>

        </asp:Content>
