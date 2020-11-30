<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Keranjang.aspx.cs" Inherits="PIGMA.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid KeranjangPlus">
        <div class ="row keranjangHeader">
            <asp:Label runat="server" ID="lblMainHeader" CssClass="labelHeader" Text="Keranjang Belanja"/>
        </div>
        <div class ="row" style="flex-direction:column;">
            <asp:Panel CssClass="keranjangKosong" ID="panelKeranjangKosong" runat="server">
                <img style="width:50%;margin-left:auto;margin-right:auto;"src="Content/Images/KeranjangKosong.png" alt="Kosong">
                <p style="font-size:24px;color:#262628;"><b>Wah, Keranjang Belanjamu Kosong</b></p>
                <p style="font-size:16px;color:#373F41;">Daripada dianggurin, mending isi dengan barang-barang impianmu. Yuk, cek sekarang!</p>
                <asp:Button style="font-size:18px;width:40%;padding:10px 0px;margin-left:auto;margin-right:auto;" runat="server" href="~/Keranjang" CssClass="btn grnBtn" OnClick="btn_mulaibelanja" Text="Mulai Belanja"/>
            </asp:Panel>
            <asp:Panel runat="server" CssClass="row" ID="panelKeranjangBelanja" Visible="false">
                <div class="col-md-9">
                    <div class="listKeranjangBelanja">
                        <div class="listHeaderKeranjangBelanja">
                            <a>checklist</a>
                            <asp:Label runat="server" ID="lblHeaderKeranjangBelanja" Text="Transmart Carrefour Central Park"/>
                            <a>Hapus Semua</a>
                        </div>
                        <div class="itemKeranjangBelanja">
                            <a>checklist</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div style="display:flex;flex-direction:row;">
                        <p>Alamat Penerima</p>
                        <a>Ubah</a>
                    </div>
                    <p>jl. Kebon Sirih Barat 1 No.10F</p>
                    <div class="ringkasanBelanja">
                        <p>Ringkasan Belanja</p>
                        <hr />
                        <p>Total Harga</p>
                        <asp:Button runat="server" Text="Beli"/>
                    </div>
                    <img style="width:50%;margin-left:auto;margin-right:auto;"src="Content/Images/KeranjangKosong.png" alt="Kosong">
                </div>
            </asp:Panel>
            <asp:Panel ID="panelPembelianBelanja" runat="server" Visible="false"> 
                <asp:Label runat="server" ID="Label1" CssClass="labelHeader" Text="Transmart Carrefour Central Park"/>
                <p>DATA PRIBADI - WAKTU PENGIRIMAN - METODE PEMBAYARAN</p>
                <div class="dataPembelianBelanja row">
                    <div class="col-md-8" style="display:flex;flex-direction:row">
                        <div class="nomorDataPembelianBelanja col-md-1">
                            <p>1</p>
                        </div>
                        <div class="akunDataPembelianBelanja col-md-11">
                            <form>
                              <div class="form-group">
                                  <label style="font-size:24px;color:#373F41;"><b>Data Pribadi</b></label>
                              </div>
                              <div class="rowdataPembelianBelanja">
                                  <div class="form-group">
                                    <label class="form-labelPlus" for="exampleInputEmail1">Nama Penerima</label>
                                    <input type="email" class="form-control form-controlPlus " id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="sophi nuraeni">
                                  </div>
                                  <div class="form-group">
                                    <label class="form-labelPlus" for="exampleInputEmail1">Nomor Telepon</label>
                                    <input type="email" class="form-control form-controlPlus " id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="081223678754">
                                  </div>
                                  <button type="submit" class="masukLoginPlus">MASUK</button>
                              </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-4">
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
                    </div>
                </div>
                
            </asp:Panel>
        </div>
    </div>
</asp:Content>
