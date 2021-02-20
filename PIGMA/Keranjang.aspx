<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Keranjang.aspx.cs" Inherits="PIGMA.WebForm4"  enableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid KeranjangPlus">
        <asp:Panel ID="panelCalendar" runat="server" Visible="false">
                <div class="form-modal-panel" style="height:330px;">
                    <div style="display:inline-block;width:100%;padding:20px">
                        <asp:Calendar runat="server" Width="100%" ID="literalyCalendar"/>
                        <div class="form-group" style="height: 40px;margin:20px -15px;display:flex;flex-direction:row;">
                        <div class="col-md-6">
                            <asp:button runat="server" class="daftarLoginPlus" Text="Batal" OnClick="btnCalendar_Close"/>
                        </div>
                        <div class="col-md-6">
                            <asp:button runat="server" class="masukLoginPlus" Text="Oke" OnClick="btnCalendar_Complete"/>
                        </div>
                    </div>
                    </div>
                </div>
        </asp:Panel>
        <asp:Panel ID="panelBeliKurang" runat="server" Visible="false">
                <div class="form-modal-panel" style="height:400px;">
                    <div style="display:inline-block;width:100%;padding:20px 40px;display:flex;flex-direction:column;">
                        <img style="width:30%;margin-left:auto;margin-right:auto;"src="Content/Images/popupkeranjang.png" alt="Kosong">
                        <p style="font-size:20px;font-weight:bold;margin-left:auto;margin-right:auto;">Tambah Lagi Barang Untuk Beli</p>
                        <p style="font-size:16px;font-weight:200;margin-left:auto;margin-right:auto;">Untuk melanjutkan, total pembelian anda harus lebih dari Rp100.000. Tambah Rp23.000 untuk mencapai jumlah minimun pembelian</p>
                        <asp:button Cssclass="masukLoginPlus" runat="server" onclick="btnToBelanja_Click" Text="Lanjutkan Belanja"/>
                    </div>
                </div>
        </asp:Panel>
        <asp:Panel ID="panelHapus" runat="server" Visible="false">
                <div class="form-modal-panel" style="height:225px;">
                    <div style="display:inline-block;width:100%;padding:20px 40px;display:flex;flex-direction:column;">
                        <p style="font-size:20px;font-weight:bold;margin-left:auto;margin-right:auto;">Hapus Barang</p>
                        <p style="font-size:16px;font-weight:200;margin-left:auto;margin-right:auto;text-align:center;">Barang ini akan dihapus dari keranjangmu, apakah anda yakin ?</p>
                        <div style="display:flex;flex-direction:row;height:40px;">
                            <div class="col-md-6">
                                <asp:button runat="server" class="daftarLoginPlus" Text="Batal" OnClick="DeleteAll_Cancel"/>
                            </div>
                            <div class="col-md-6">
                                <asp:button runat="server" class="masukLoginPlus" Text="Iya" OnClick="DeleteAll_Confirm"/>
                            </div>
                        </div>
                        
                    </div>
                </div>
        </asp:Panel>
        <asp:Panel ID="panelKonfirm" runat="server" Visible="false">
                <div class="form-modal-panel" style="height:225px;">
                    <div style="display:inline-block;width:100%;padding:20px 40px;display:flex;flex-direction:column;">
                        <p style="font-size:20px;font-weight:bold;margin-left:auto;margin-right:auto;">Transaksi Berhasil</p>
                        <p style="font-size:16px;font-weight:200;margin-left:auto;margin-right:auto;text-align:center;">Transaksi anda berhasil dilakukan, apakah anda ingin melihat transaksi ini ?</p>
                        <div style="display:flex;flex-direction:row;height:40px;">
                            <div class="col-md-6">
                                <asp:button runat="server" class="daftarLoginPlus" Text="Kembali" OnClick="btnNextClose"/>
                            </div>
                            <div class="col-md-6">
                                <asp:button runat="server" class="masukLoginPlus" Text="Lihat Transaksi" OnClick="btnNext3_Click"/>
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
                <div class="col-md-8 tblKeranjangPlus">
                    <asp:HiddenField Value="1" runat="server" ID="chkAllprop" />
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
                                    <asp:CheckBox ID="chkAll" OnCheckedChanged="chkAll_CheckedChanged" AutoPostBack="true" runat="server" Checked="true"/>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkStats" runat="server" CausesValidation="true" Checked="true" OnCheckedChanged="chkRef_Click"/>
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
                                <HeaderTemplate>
                                    <div style="display:flex;flex-direction:column;">
                                        <asp:Button runat="server" Text="Hapus Semua" CssClass="buttonMerah" OnClick="DeleteAll_Click"/>
                                    </div>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div style="display:flex;flex-direction:column;border-left:1px solid #9B9FA0">
                                            <asp:Label Text="Total" Font-Bold="true" CssClass="midColumn" runat="server" />
                                            <asp:Label ID="Label2" CssClass="midColumn" Text='<%#Eval("HargaRP") %>' runat="server" />
                                            <asp:Label ID="lblTotal" CssClass="midColumn" Text='<%#Eval("Total") %>' runat="server" Visible="false"/>
                                        </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            Tidak ada data
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-3" style="display:flex;flex-direction:column">
                    <div style="display:flex;flex-direction:row;">
                        <p style="font-weight:bold;flex: 0 0 80%;max-width: 80%;">Alamat Penerima</p>
                        <a style="color:#74B816;flex: 0 0 20%;max-width: 20%;">Ubah</a>
                    </div>
                    <asp:Label ID="alamat1" runat="server" />
                    <div class="ringkasanBelanja" style="margin:15px 0px">
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
                                        <asp:TextBox runat="server" ID="TextBox1" CssClass="form-controlPlus" Text="sophi nuraeni"/>
                                    </div>
                                    <div style="display:flex;flex-direction:column">
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Nomor Telepon</b></asp:label>
                                        <asp:TextBox runat="server" ID="TextBox2" CssClass="form-controlPlus" Text="081223679574"/>
                                    </div>
                                </div>
                                <div class="form-group" style="display:flex;flex-direction:row;">
                                    <div style="display:flex;flex-direction:column">
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Alamat Penerima</b></asp:label>
                                        <asp:Label ID="alamat2" runat="server" CssClass="form-controlPlus" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1" style="flex: 0 0 3%;max-width: 3%;"></div>
                        <div class="col-md-4 panelPembelianSub" style="flex: 0 0 32%;max-width: 32%;">
                            <p style="margin-left:-15px;"><b>Ringkasan Belanja</b></p>
                            <hr />
                            <div class="row">
                                <p class="col-md-8">Subtotal</p>
                                <asp:Label runat="server" ID="txtTotal1" />
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Kemasan(kardus)</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Pengiriman</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Diskon</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <hr />
                            <div class="row">
                                <p class="col-md-8">Total Harga</p>
                                <asp:Label runat="server" ID="txtTotal1max"/>
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
                                        <div class="col-md-12" style="display:flex;flex-direction:row">
                                            <asp:Button runat="server" CssClass="btnBiru" OnClick="btnCalendar_Open" Text="Pilih Tanggal"/>
                                            <asp:Label runat="server" CssClass="lblAlamat" Visible="false" ID="pilihTanggal"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group" style="display:flex;flex-direction:row;">
                                    <div style="display:flex;flex-direction:column">
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Transaksi Ulang</b></asp:label>
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:12px;color:#373F41;">Ayo jadwalkan transaksi ini untuk pengiriman berikutnya</asp:label>
                                        <div class="col-md-12" style="margin-left:15px">
                                            <asp:RadioButtonList runat="server" ID="rbStatus" RepeatDirection="Horizontal" Width="200">
                                                <asp:ListItem Value="True" Text="Iya"/>
                                                <asp:ListItem Value="False" Text="Tidak" />
                                            </asp:RadioButtonList>
                                        </div>
                                        <div class="col-md-12" style="display:flex;flex-direction:row">
                                            <asp:Button runat="server" CssClass="btnBiru" OnClick="btnBerulang_Open" Text="Atur Jadwal Transaksi Berulang"/>
                                            <asp:Label runat="server" CssClass="lblAlamat" Visible="false" ID="pilihTransaksi"/>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1" style="flex: 0 0 3%;max-width: 3%;"></div>
                        <div class="col-md-4 panelPembelianSub" style="flex: 0 0 32%;max-width: 32%;">
                            <p style="margin-left:-15px;"><b>Ringkasan Belanja</b></p>
                            <hr />
                            <div class="row">
                                <p class="col-md-8">Subtotal</p>
                                <asp:Label runat="server" ID="txtTotal2" />
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Kemasan(kardus)</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Pengiriman</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Diskon</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <hr />
                            <div class="row">
                                <p class="col-md-8">Total Harga</p>
                                <asp:Label runat="server" ID="txtTotal2max" />
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
                                <div class="form-group" style="display:flex;flex-direction:row;padding-left:15px">
                                    <asp:RadioButtonList runat="server" ID="RadioButtonList2" CssClass="col-md-12" RepeatDirection="Horizontal" Width="200">
                                       <asp:ListItem Value="True" Text="Pembayaran Tunai" Selected="True"/>
                                    </asp:RadioButtonList>
                                </div>
                                <div class="form-group" style="display:flex;flex-direction:row;">
                                    <div style="display:flex;flex-direction:column">
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:24px;color:#373F41;"><b>Pembayaran Tunai</b></asp:label>
                                        <asp:label runat="server" CssClass="form-controlPlus" style="font-size:16px;color:#373F41;">Pembayaran dilakukan saat barang sampai di alamat, anda akan memberikan uang tunai kepada kurir sesuai total harga pembelian.</asp:label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1" style="flex: 0 0 3%;max-width: 3%;"></div>
                        <div class="col-md-4 panelPembelianSub" style="flex: 0 0 32%;max-width: 32%;">
                            <p style="margin-left:-15px;"><b>Ringkasan Belanja</b></p>
                            <hr />
                            <div class="row">
                                <p class="col-md-8">Subtotal</p>
                                <asp:Label runat="server" ID="txtTotal3" />
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Kemasan(kardus)</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Biaya Pengiriman</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <div class="row">
                                <p class="col-md-8">Diskon</p>
                                <p class="col-md-4">-</p>
                            </div>
                            <hr />
                            <div class="row">
                                <p class="col-md-8">Total Harga</p>
                                <asp:Label runat="server" ID="txtTotal3max" />
                            </div>
                            <div class="row" style="height:60px">
                                <asp:button runat="server" class="masukLoginPlus col-md-12"  Text="Setuju dan Bayar" OnClick="btnNextOpen"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="row form-group daftarmasuk" style="margin-top:30px;width:30%">
                            <div class="col-md-6">
                                <asp:button runat="server" class="sebelumnyaLoginPlus"  Text="Sebelumnya" OnClick="btnBack3_Click"/>
                            </div>
                            <div class="col-md-6">
                                <asp:button runat="server" class="masukLoginPlus"  Text="Selanjutnya" Visible="false"/>
                            </div>
                        </div>
                    </div>
                </asp:panel>
            </asp:Panel>
        </div>
    </div>

        </asp:Content>
