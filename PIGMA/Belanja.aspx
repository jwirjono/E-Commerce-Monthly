<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Belanja.aspx.cs" Inherits="PIGMA.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:HiddenField ID="supaID" runat="server" />
    <div class=" container-fluid BelanjaPlus">
        <div class ="row topPanelBelanjaPlus">
            <div class="row" style="background-color:#EFF0F0;border:1px solid #EFF0F0;border-radius:20px;padding:0px 20px;height:60px">
                <div class="col-md-6" style="display:flex;flex-direction:row;border-right:#74B816 1px solid;padding:auto 0px">
                    <img src="Content/Images/storehouse.png" alt="" style="width:30px;height:30px;margin:auto 0px;">
                    <p style="margin:auto 15px;font-weight:500;color:#9E9E9E">Dari Supermarket</p>
                    <asp:Label runat="server" ID="lblSupa" CssClass="mainName" />
                </div>
                <div class="col-md-6" style="display:flex;flex-direction:row;padding:auto 0px">
                    <img src="Content/Images/locationpin.png" alt="" style="width:30px;height:30px;margin:auto 0px;">
                    <p style="margin:auto 15px;font-weight:500;color:#9E9E9E">Dikirim ke</p>
                    <asp:Label runat="server" ID="lblAlamat" CssClass="mainName"/>
                </div>
            </div>
            <asp:Label runat="server" Text="Kategori" CssClass="labelUtama" />
            <div class="container-fluid row">
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProdAll_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Meat.png" alt="">
                    <p style="margin:10px auto;color:#000">Semua Produk</p>
                </a>
                <div class="miniDividerBelanjaPlus"></div>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd1_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/KeperluanDapur.png" alt="">
                    <p style="margin:10px auto;color:#000">Keperluan Dapur</p>
                </a>
                <div class="miniDividerBelanjaPlus" ></div>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd2_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Meat.png" alt="">
                    <p style="margin:10px auto;color:#000">Daging & Seafood</p>
                </a>
                <div class="miniDividerBelanjaPlus"></div>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd3_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Minuman.png" alt="">
                    <p style="margin:10px auto;color:#000">Minuman</p>
                </a>
                <div class="miniDividerBelanjaPlus"></div>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd4_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Snack.png" alt="">
                    <p style="margin:10px auto;color:#000">Makanan Ringan</p>
                </a>
                <div class="miniDividerBelanjaPlus"></div>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd5_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Produk Beku.png" alt="">
                    <p style="margin:10px auto;color:#000">Produk Beku</p>
                </a>
                <div class="miniDividerBelanjaPlus"></div>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd6_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Perlengkapan Bayi.png" alt="">
                    <p style="margin:10px auto;color:#000">Perlengkapan Bayi</p>
                </a>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd7_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Roti.png" alt="">
                    <p style="margin:10px auto;color:#000">Produk Roti</p>
                </a>
                <div class="miniDividerBelanjaPlus"></div>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd8_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Korean Food.png" alt="">
                    <p style="margin:10px auto;color:#000">Korean Food</p>
                </a>
                <div class="miniDividerBelanjaPlus"></div>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd9_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Perlengkapan Hewan.png" alt="">
                    <p style="margin:10px auto;color:#000">Perlengkapan Hewan</p>
                </a>
                <div class="miniDividerBelanjaPlus"></div>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd10_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Produk Kesehatan.png" alt="">
                    <p style="margin:10px auto;color:#000">Produk Kesehatan</p>
                </a>
                <div class="miniDividerBelanjaPlus"></div>
                <a runat="server" class="miniCardBelanjaPlus" onserverclick="btnProd11_Click">
                    <img style="width:40%;margin-left:auto;margin-right:auto" src="Content/Images/Perlengkapan Bayi.png" alt="">
                    <p style="margin:10px auto;color:#000">Perlengkapan Bayi</p>
                </a>
                <div class="miniDividerBelanjaPlus"></div>
            </div>
            <asp:Label runat="server" Text="Produk Pernah Dibeli" CssClass="labelUtama" />
            <asp:Panel runat="server" class="cardlistProdukBelanjaPlus row">
                    <asp:Panel class="cardFullProdukBelanjaPlus" runat="server" id="panel5">
                        <div class="cardProdukBelanjaPlus">
                        <a>-50%</a>
                            <img src="Content/Images/sabu.png" alt="" style="width:75%;margin:0px auto">
                            <p style="color:#373F41"><b>Shabu Shabu</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">1Kg</p>
                            <p style="color:#373F41"><b>Rp.30000</b></p> 
                        </div>
                        <a runat="server" onserverclick="btnAwal1_Click" style="text-decoration:none;color:#FFF" id="A1">
                            <div class="btnCardProdukBelanjaPlus">
                                <div style ="display: flex;flex-direction: row;">
                                    <img style="width:25px; margin:auto 15px;" src="Content/Images/Vector.png" alt="">
                                    <p class="minorItemCardProdukBelanjaPlus">Keranjang</p>
                                </div>
                            </div>
                        </a>
                        <div runat="server" id="Div1" class="btnCardProdukBelanjaPlusSuper" visible="false">
                            <div style ="display: flex;flex-direction: row;">
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonMinusKuning.png" OnClick="btnMinus1_Click"/>
                                <asp:Label ID="Label1" runat="server" CssClass="minorItemCardProdukBelanjaPlus" Text="0"/>
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonTambahKuning.png" OnClick="btnTambah1_Click"/>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel class="cardFullProdukBelanjaPlus" runat="server" id="panel8">
                        <div class="cardProdukBelanjaPlus">
                        <a>-50%</a>
                            <img src="Content/Images/salmon.png" alt="" style="width:75%;margin:0px auto">
                            <p style="color:#373F41"><b>Salmon Fillet</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">1Kg</p>
                            <p style="color:#373F41"><b>Rp.50000</b></p> 
                        </div>
                        <a runat="server" onserverclick="btnAwal4_Click" style="text-decoration:none;color:#FFF" id="A4">
                            <div class="btnCardProdukBelanjaPlus">
                                <div style ="display: flex;flex-direction: row;">
                                    <img style="width: 25px; margin:auto 15px;" src="Content/Images/Vector.png" alt="">
                                    <p class="minorItemCardProdukBelanjaPlus">Keranjang</p>
                                </div>
                            </div>
                        </a>
                        <div runat="server" id="Div4" class="btnCardProdukBelanjaPlusSuper" visible="false">
                            <div style ="display: flex;flex-direction: row;">
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonMinusKuning.png" OnClick="btnMinus4_Click"/>
                                <asp:Label ID="Label4" runat="server" CssClass="minorItemCardProdukBelanjaPlus" Text="0"/>
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonTambahKuning.png" OnClick="btnTambah4_Click"/>
                            </div>
                        </div>
                    </asp:Panel>
            </asp:Panel>

            <asp:Label runat="server" Text="Semua Produk" CssClass="labelUtama" />
            
            <asp:Panel runat="server" ID="panelCardProdukGiant" class="cardlistProdukBelanjaPlus row" visible="false">
                    <asp:Panel class="cardFullProdukBelanjaPlus" runat="server" id="panelCard1">
                        <div class="cardProdukBelanjaPlus">
                        <a>-50%</a>
                            <img src="Content/Images/sabu.png" alt="" style="width:75%;margin:0px auto">
                            <p style="color:#373F41"><b>Shabu Shabu</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">1Kg</p>
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
                            <img src="Content/Images/yaki.png" alt="" style="width:75%;margin:0px auto">
                            <p style="color:#373F41"><b>Beef Yakiniku</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">1Kg</p>
                            <p style="color:#373F41"><b>Rp.25000</b></p> 
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
                            <img src="Content/Images/bulgogi.png" alt="" style="width:75%;margin:0px auto">
                            <p style="color:#373F41"><b>Beef Bulgogi</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">1Kg</p>
                            <p style="color:#373F41"><b>Rp.35000</b></p> 
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
                            <img src="Content/Images/salmon.png" alt="" style="width:75%;margin:0px auto">
                            <p style="color:#373F41"><b>Salmon Fillet</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">1Kg</p>
                            <p style="color:#373F41"><b>Rp.50000</b></p> 
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
            </asp:Panel>
            <asp:Panel runat="server" ID="panelCardProdukGrandLucky" class="cardlistProdukBelanjaPlus row" Visible="false">
                    <asp:Panel class="cardFullProdukBelanjaPlus" runat="server" id="panel2">
                        <div class="cardProdukBelanjaPlus">
                        <a>-50%</a>
                            <img src="Content/Images/CardProduk.png" alt="">
                            <p style="color:#373F41"><b>Apel Hijau Xilin Gol</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">1Kg</p>
                            <p style="color:#373F41"><b>Rp.70000</b></p> 
                        </div>
                        <a runat="server" onserverclick="btnAwalb1_Click" style="text-decoration:none;color:#FFF" id="panelAwalCardb1">
                            <div class="btnCardProdukBelanjaPlus">
                                <div style ="display: flex;flex-direction: row;">
                                    <img style="width:25px; margin:auto 15px;" src="Content/Images/Vector.png" alt="">
                                    <p class="minorItemCardProdukBelanjaPlus">Keranjang</p>
                                </div>
                            </div>
                        </a>
                        <div runat="server" id="btnAwalCardb1" class="btnCardProdukBelanjaPlusSuper" visible="false">
                            <div style ="display: flex;flex-direction: row;">
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonMinusKuning.png" OnClick="btnMinusb1_Click"/>
                                <asp:Label ID="lblItemCardb1" runat="server" CssClass="minorItemCardProdukBelanjaPlus" Text="0"/>
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonTambahKuning.png" OnClick="btnTambahb1_Click"/>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel class="cardFullProdukBelanjaPlus" runat="server" id="panel3">
                        <div class="cardProdukBelanjaPlus">
                        <a>-50%</a>
                            <img src="Content/Images/CardProduk.png" alt="">
                            <p style="color:#373F41"><b>Nangka Gazikumukh</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">1Kg</p>
                            <p style="color:#373F41"><b>Rp.15000</b></p> 
                        </div>
                        <a runat="server" onserverclick="btnAwalb2_Click" style="text-decoration:none;color:#FFF" id="panelAwalCardb2">
                            <div class="btnCardProdukBelanjaPlus">
                                <div style ="display: flex;flex-direction: row;">
                                    <img style="width: 25px; margin:auto 15px;" src="Content/Images/Vector.png" alt="">
                                    <p class="minorItemCardProdukBelanjaPlus">Keranjang</p>
                                </div>
                            </div>
                        </a>
                        <div runat="server" id="btnAwalCardb2" class="btnCardProdukBelanjaPlusSuper" visible="false">
                            <div style ="display: flex;flex-direction: row;">
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonMinusKuning.png" OnClick="btnMinusb2_Click"/>
                                <asp:Label ID="lblItemCardb2" runat="server" CssClass="minorItemCardProdukBelanjaPlus" Text="0"/>
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonTambahKuning.png" OnClick="btnTambahb2_Click"/>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel class="cardFullProdukBelanjaPlus" runat="server" id="panel4">
                        <div class="cardProdukBelanjaPlus">
                        <a>-50%</a>
                            <img src="Content/Images/CardProduk.png" alt="">
                            <p style="color:#373F41"><b>Jeruk Mong</b></p>
                            <p style="font-size:14px;color:#7C7C7C;">1Kg</p>
                            <p style="color:#373F41"><b>Rp.45000</b></p> 
                        </div>
                        <a runat="server" onserverclick="btnAwalb3_Click" style="text-decoration:none;color:#FFF" id="panelAwalCardb3">
                            <div class="btnCardProdukBelanjaPlus">
                                <div style ="display: flex;flex-direction: row;">
                                    <img style="width: 25px; margin:auto 15px;" src="Content/Images/Vector.png" alt="">
                                    <p class="minorItemCardProdukBelanjaPlus">Keranjang</p>
                                </div>
                            </div>
                        </a>
                        <div runat="server" id="btnAwalCardb3" class="btnCardProdukBelanjaPlusSuper" visible="false">
                            <div style ="display: flex;flex-direction: row;">
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonMinusKuning.png" OnClick="btnMinusb3_Click"/>
                                <asp:Label ID="lblItemCardb3" runat="server" CssClass="minorItemCardProdukBelanjaPlus" Text="0"/>
                                <asp:ImageButton runat="server" Cssclass="minorbtnCardProdukBelanjaPlus minorbtnCardProdukBelanjaPlus" ImageUrl="Content/Images/ButtonTambahKuning.png" OnClick="btnTambahb3_Click"/>
                            </div>
                        </div>
                    </asp:Panel>
                </asp:Panel>
            <asp:Panel ID="panelProdukKosong" runat="server" Visible="false" CssClass="produkKosongBelanjaPlus">
                <img style="width:40%;margin:auto" src="Content/Images/ProdukKosong.png" alt="">
            </asp:Panel>
            <div class="row">
                <div class="col-md-11"></div>
                <div class="col-md-1">
                    <asp:Button runat="server" ID="btnCompletePurchase" OnClick="btnComplete_Click" CssClass="masukLoginPlusPlus" Text="Lanjutkan"/>
                </div>
            </div>
            
            
        </div>
        
    </div>
</asp:Content>
