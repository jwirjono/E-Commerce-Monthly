<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Belanja.aspx.cs" Inherits="PIGMA.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:HiddenField ID="supaID" runat="server" />
    <div class =" container-fluid BelanjaPlus">
        <div class ="row topPanelBelanjaPlus">
            <div class="col-md-4" style="color:#262628;height:400px">
                <p style="margin:20px 0px;font-size:48px;color:#373F41;"><b>PENGIRIMAN</b></p>
                <p style="margin:20px 0px;">Transmart Carrefour Central park</p>
                <div style="margin:20px 0px;" class="divDikirimBelanjaPlus">
                    <hr style="width:100%;border:1px solid #CCCDCE;" />
                    <asp:Button runat="server" Cssclass="btn btnDikirimBelanjaPlus" OnClick="btnPengiriman_Click" Text="Dikirim Ke"/>
                </div>
                <p style="margin:20px 0px;" >address text</p>
                <a style="margin:20px 0px;" runat="server" href="~/Keranjang" class="btn grnBtn">UBAH</a>
            </div>
            <div class="col-md-1">

            </div>
            <div class="col-md-7"> 
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width:100%;">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img style="height:500px" class="d-block w-100" src="Content/Images/Carousel1.png" alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                            <p style="font-size:18px;color:#262628;"><b>Belanja cukup pesan dirumah, kami akan mencari produk yang anda pesan</b></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                      <img style="height:500px" class="d-block w-100" src="Content/Images/Keperluan Dapur.png" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                      <img style="height:500px" class="d-block w-100" src="Content/Images/Meat.png" alt="Third slide">
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
            </div>
        </div>
        <div class ="row bottomPanelBelanjaPlus">
            <div class="col-md-2 sidebarBelanjaPlus">
                <p style="font-size:20px;text-align:center;color:#373F41;"><b>Kategori</b></p>
                <a class="listBelanjaPlus">Rekomendasi untuk anda</a>
                <a class="listBelanjaPlus">Produk Terlaris</a>
                <a class="listBelanjaPlus">Produk Diskon</a>
                <hr style="width:100%;border:#373F41 1px solid;"/>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Meat.png" alt="">
                    <a>Produk Segar</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Keperluan Dapur.png" alt="">
                    <a>Keperluan Dapur</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Meat.png" alt="">
                    <a>Daging dan Seafood</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Minuman.png" alt="">
                    <a>Minuman</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Snack.png" alt="">
                    <a>Makanan Ringan</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Produk Beku.png" alt="">
                    <a>Produk Beku</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Perlengkapan Bayi.png" alt="">
                    <a>Perlengkapan Bayi</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Roti.png" alt="">
                    <a>Produk Roti</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Korean Food.png" alt="">
                    <a>Korean Food</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Perlengkapan Hewan.png" alt="">
                    <a>Perlengkapan Hewan</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Produk Kesehatan.png" alt="">
                    <a>Produk Kesehatan</a>
                </div>
                <div class="listBelanjaPlus">
                    <img src="Content/Images/Produk Kecantikan.png" alt="">
                    <a>Produk Kecantikan</a>
                </div>
            </div>
            <div class="col-md-10 container produkListBelanjaPlus">
                <div>
                    <h3>Produk Diskon</h3>
                </div>
                <div>
                    <p>Menampilkan 9 dari Semua Kategori</p>
                </div>
                <hr />
                <asp:Panel runat="server" ID="panelCardProduk" class="cardlistProdukBelanjaPlus row">
                    <asp:Panel class="cardFullProdukBelanjaPlus" runat="server" id="panelCard1">
                        <div class="cardProdukBelanjaPlus">
                        <a>-50%</a>
                            <img src="Content/Images/CardProduk.png" alt="">
                            <p style="color:#373F41"><b>Nama Barang</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">7pcs</p>
                            <p style="color:#373F41"><b>Rp.30000</b></p> 
                        </div>
                        <a runat="server" onserverclick="btnAwal1_Click" style="text-decoration:none;color:#FFF" id="panelAwalCard1">
                            <div class="btnCardProdukBelanjaPlus">
                                <div style ="display: flex;flex-direction: row;">
                                    <img style="width:25px; margin:auto 15px;" src="Content/Images/Vector.png" alt="">
                                    <p class="minorItemCardProdukBelanjaPlus">Keranjang</p>
                                </div>
                            </div>
                        </a>
                        <div runat="server" id="btnAwalCard1" class="btnCardProdukBelanjaPlusSuper" visible="false">
                            <div style ="display: flex;flex-direction: row;">
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonMinusKuning.png" OnClick="btnMinus1_Click"/>
                                <asp:Label ID="lblItemCard1" runat="server" CssClass="minorItemCardProdukBelanjaPlus" Text="0"/>
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonTambahKuning.png" OnClick="btnTambah1_Click"/>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel class="cardFullProdukBelanjaPlus" runat="server" id="panelCard2">
                        <div class="cardProdukBelanjaPlus">
                        <a>-50%</a>
                            <img src="Content/Images/CardProduk.png" alt="">
                            <p style="color:#373F41"><b>Nama Barang</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">7pcs</p>
                            <p style="color:#373F41"><b>Rp.30000</b></p> 
                        </div>
                        <a runat="server" onserverclick="btnAwal2_Click" style="text-decoration:none;color:#FFF" id="panelAwalCard2">
                            <div class="btnCardProdukBelanjaPlus">
                                <div style ="display: flex;flex-direction: row;">
                                    <img style="width: 25px; margin:auto 15px;" src="Content/Images/Vector.png" alt="">
                                    <p class="minorItemCardProdukBelanjaPlus">Keranjang</p>
                                </div>
                            </div>
                        </a>
                        <div runat="server" id="btnAwalCard2" class="btnCardProdukBelanjaPlusSuper" visible="false">
                            <div style ="display: flex;flex-direction: row;">
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonMinusKuning.png" OnClick="btnMinus2_Click"/>
                                <asp:Label ID="lblItemCard2" runat="server" CssClass="minorItemCardProdukBelanjaPlus" Text="0"/>
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonTambahKuning.png" OnClick="btnTambah2_Click"/>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel class="cardFullProdukBelanjaPlus" runat="server" id="panelCard3">
                        <div class="cardProdukBelanjaPlus">
                        <a>-50%</a>
                            <img src="Content/Images/CardProduk.png" alt="">
                            <p style="color:#373F41"><b>Nama Barang</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">7pcs</p>
                            <p style="color:#373F41"><b>Rp.30000</b></p> 
                        </div>
                        <a runat="server" onserverclick="btnAwal3_Click" style="text-decoration:none;color:#FFF" id="panelAwalCard3">
                            <div class="btnCardProdukBelanjaPlus">
                                <div style ="display: flex;flex-direction: row;">
                                    <img style="width: 25px; margin:auto 15px;" src="Content/Images/Vector.png" alt="">
                                    <p class="minorItemCardProdukBelanjaPlus">Keranjang</p>
                                </div>
                            </div>
                        </a>
                        <div runat="server" id="btnAwalCard3" class="btnCardProdukBelanjaPlusSuper" visible="false">
                            <div style ="display: flex;flex-direction: row;">
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonMinusKuning.png" OnClick="btnMinus3_Click"/>
                                <asp:Label ID="lblItemCard3" runat="server" CssClass="minorItemCardProdukBelanjaPlus" Text="0"/>
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonTambahKuning.png" OnClick="btnTambah3_Click"/>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel class="cardFullProdukBelanjaPlus" runat="server" id="panelCard4">
                        <div class="cardProdukBelanjaPlus">
                        <a>-50%</a>
                            <img src="Content/Images/CardProduk.png" alt="">
                            <p style="color:#373F41"><b>Nama Barang</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">7pcs</p>
                            <p style="color:#373F41"><b>Rp.30000</b></p> 
                        </div>
                        <a runat="server" onserverclick="btnAwal4_Click" style="text-decoration:none;color:#FFF" id="panelAwalCard4">
                            <div class="btnCardProdukBelanjaPlus">
                                <div style ="display: flex;flex-direction: row;">
                                    <img style="width: 25px; margin:auto 15px;" src="Content/Images/Vector.png" alt="">
                                    <p class="minorItemCardProdukBelanjaPlus">Keranjang</p>
                                </div>
                            </div>
                        </a>
                        <div runat="server" id="btnAwalCard4" class="btnCardProdukBelanjaPlusSuper" visible="false">
                            <div style ="display: flex;flex-direction: row;">
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonMinusKuning.png" OnClick="btnMinus4_Click"/>
                                <asp:Label ID="lblItemCard4" runat="server" CssClass="minorItemCardProdukBelanjaPlus" Text="0"/>
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonTambahKuning.png" OnClick="btnTambah4_Click"/>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Button runat="server" ID="btnCompletePurchase" OnClick="btnComplete_Click" Text="Complete"/>
                </asp:Panel>
                
            </div>
        </div>
    </div>
</asp:Content>
