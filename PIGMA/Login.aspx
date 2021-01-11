 <%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PIGMA.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
        <div class="col-md-6" style="display:flex;flex-direction:column;">
            <img class="mainFormPlus" id="gambarLogin" runat="server" src="Content/Images/Login.PNG" alt="fas">
            <img class="mainFormPlus" id="gambarDaftar" runat="server" visible="false" src="Content/Images/DaftarForm.PNG" alt="fas">
            <img class="mainFormPlus" id="gambarLupa" runat="server" visible="false" src="Content/Images/Lupa.PNG" alt="fas">
        </div>
        <div class="col-md-5 formparentPlus">
            <asp:label ID="labelMainForm" runat="server" CssClass="formLabel" Text="Login"/>
            <div style="height:30px"></div>
            <asp:Panel runat="server" id="panelFormLogin" CssClass="panelLogin">
                <form>
                    <div class="form-group form-groupPlus">
                    <label class="form-labelPlus" for="exampleInputEmail1">Email</label>
                    <input type="email" class="form-controlPlus " id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="alamat@email.com">
                    </div>
                    <div class="form-group form-groupPlus" >
                    <label class="form-labelPlus" for="exampleInputPassword1">Password</label>
                    <input type="password" class=" form-controlPlus" id="exampleInputPassword1" placeholder="Masukan password">
                    </div>
                    <div class="form-group row" style="padding:2px 20px;">
                        <div class="col-md-2">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label style="margin-left:5px;" class="form-labelPlus" for="exampleCheck1">Ingat saya</label>
                        </div>
                        <div class="col-md-7"></div>
                        <div class="col-md-3"><asp:button runat="server" CssClass="btnLupa" OnClick="btnLupa_Click" Text="Lupa Password?"/></div>
                        
                    </div>
                    <div class="row form-group daftarmasuk">
                        <div class="col-md-6">
                            <asp:button runat="server" class="daftarLoginPlus" OnClick="btnDaftar_Click" Text="DAFTAR"/>
                        </div>
                        <div class="col-md-6">
                            <button type="submit" class="masukLoginPlus">MASUK</button>
                        </div>
                    </div>
            </form>
            </asp:Panel>
            <asp:Panel runat="server" id="panelLupaPassword" Visible="false">
                <form>
                    <div class="form-group">
                        <p>Link untuk ubah password akan dikirim melalui email</p>
                    </div>
                    <div class="form-group form-groupPlus">
                    <label class="form-labelPlus" for="exampleInputEmail1">Email</label>
                    <input type="email" class="form-controlPlus " id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="alamat@email.com">
                    </div>
                    <div class="row form-group daftarmasuk" style="margin-top:200px">
                        <div class="col-md-12">
                            <button type="submit" class="masukLoginPlus">MASUK</button>
                        </div>
                    </div>
                </form>
            </asp:Panel>
            <asp:Panel runat="server" ID="panelDaftarLogin" Visible="false" CssClass="panelColumn">
                <form>
                    <div class="form-group" style="display:flex;flex-direction:row;">
                        <p>Sudah punya akun monthly?</p>
                        <a runat="server">Masuk</a>
                    </div>
                    <div class="form-group" style="display:flex;flex-direction:row;margin:10px auto 40px auto;">
                        <asp:panel runat="server" Cssclass="formDaftarNumberLabelactive">
                            <asp:Label runat="server" CssClass="formNumberLabelactive" Text ="1"/>
                            <p>Daftar</p>
                        </asp:panel>
                        <div class="garisKeras"></div>
                        <asp:panel runat="server" Cssclass="formDaftarNumberLabel">
                            <asp:Label runat="server" CssClass="formNumberLabel" Text ="2"/>
                            <p>Verifikasi</p>
                        </asp:panel>
                        <div class="garisKeras"></div>
                        <asp:panel  runat="server" Cssclass="formDaftarNumberLabel">
                            <asp:Label  runat="server" CssClass="formNumberLabel" Text ="3"/>
                            <p>Password</p>
                        </asp:panel>
                    </div>
                    <div class="form-group form-groupPlus">
                    <label class="form-labelPlus" for="exampleInputEmail1">Nomor Ponsel atau Email</label>
                    <input type="email" class="form-controlPlus " id="inputDaftarID" aria-describedby="emailHelp" placeholder="alamat@email.com">
                    </div>
                    <div class="row form-group daftarmasuk">
                    </div>
                    <div class="row form-group daftarmasuk">
                        <div class="col-md-12">
                            <asp:button runat="server" type="submit" Cssclass="masukLoginPlus" Text="DAFTAR" OnClick="btnDaftarCont_Click"/>
                        </div>
                    </div>
                    
                    <div class="form-group garisLogin row">
                    <div class="colgaris">
                        <hr />
                    </div>
                    <div class="colgaris-text">
                        <label class="form-check-label form-labelPlus">atau masuk dengan</label>
                    </div>
                    <div class="colgaris">
                        <hr />
                    </div>
                    </div>
                    <div class="row">
                        <div class="socialLoginPlus">
                            <div class="round-link-login col-md-6">
                            <img class="round-link-elipse" src="Content/Images/Watermark.PNG" alt="google">
                            <a class="round-link-anchor">Google</a>
                        </div>
                        <div class="round-link-login col-md-6">
                            <img class="round-link-elipse" src="Content/Images/Watermark.PNG" alt="google">
                            <a class="round-link-anchor">Facebook</a>
                        </div>
                        </div>
                    </div>
            </form>
            </asp:Panel>
            <asp:Panel runat="server" ID="panelVerifikasiLogin" Visible="false" CssClass="panelColumn">
                <form>
                    <div class="form-group" style="display:flex;flex-direction:row;">
                        <p></p>
                    </div>
                    <div class="form-group" style="display:flex;flex-direction:row;margin:10px auto 40px auto;">
                        <asp:panel runat="server" Cssclass="formDaftarNumberLabelactive">
                            <img src="Content/Images/formchecklist2.png" class="imageDaftarNumberLabel"/>
                            <p>Daftar</p>
                        </asp:panel>
                        <div class="garisKeras"></div>
                        <asp:panel runat="server" Cssclass="formDaftarNumberLabelactive">
                            <asp:Label runat="server" CssClass="formNumberLabelactive" Text ="2"/>
                            <p>Verifikasi</p>
                        </asp:panel>
                        <div class="garisKeras"></div>
                        <asp:panel  runat="server" Cssclass="formDaftarNumberLabel">
                            <asp:Label  runat="server" CssClass="formNumberLabel" Text ="3"/>
                            <p>Password</p>
                        </asp:panel>
                    </div>
                    <div class="form-group" >
                        <p class="form-kodeverifikasilabel">Kode Verifikasi</p>
                        <input runat="server" type="text" class="form-kodeverifikasi" id="inputKodeVerifikasi" aria-describedby="emailHelp" placeholder="Masukan Kode">
                        <div style="display:flex;flex-direction:column;margin-top:20px;">
                            <p class="form-kodeverifikasitext">Kode Verifikasi telah dikirimkan melalui email ke</p>
                            <asp:Label CssClass="form-kodeverifikasitext" runat="server" Text="alamat@gmail.com" />
                        </div>
                    </div>   
                    <div class="row form-group daftarmasuk" style="margin-top:30px;">
                        <div class="col-md-6">
                            <asp:button runat="server" class="daftarLoginPlus" OnClick="btnKirimUlang_Click" Text="KIRIM ULANG"/>
                        </div>
                        <div class="col-md-6">
                            <asp:button runat="server" class="masukLoginPlus" OnClick="btnVerifikasi_Click" Text="VERIFIKASI"/>
                        </div>
                    </div>
                    <div class="form-group garisLogin row">
                    <div class="colgaris">
                        <hr />
                    </div>
                    <div class="colgaris-text">
                        <label class="form-check-label form-labelPlus">atau masuk dengan</label>
                    </div>
                    <div class="colgaris">
                        <hr />
                    </div>
                    </div>
                    <div class="row">
                        <div class="socialLoginPlus">
                            <div class="round-link-login col-md-6">
                            <img class="round-link-elipse" src="Content/Images/Watermark.PNG" alt="google">
                            <a class="round-link-anchor">Google</a>
                        </div>
                        <div class="round-link-login col-md-6">
                            <img class="round-link-elipse" src="Content/Images/Watermark.PNG" alt="google">
                            <a class="round-link-anchor">Facebook</a>
                        </div>
                        </div>
                    </div>
            </form>
            </asp:Panel>
            <asp:Panel runat="server" ID="panelPasswordLogin" Visible="false" CssClass="panelColumn">
                <form>
                    <div class="form-group" style="display:flex;flex-direction:row">
                        <p>alamat@gmail.com</p>
                    </div>
                    <div class="form-group" style="display:flex;flex-direction:row;margin:10px auto 40px auto;">
                        <asp:panel runat="server" Cssclass="formDaftarNumberLabelactive">
                            <img src="Content/Images/formchecklist2.png" class="imageDaftarNumberLabel"/>
                            <p>Daftar</p>
                        </asp:panel>
                        <div class="garisKeras"></div>
                        <asp:panel runat="server" Cssclass="formDaftarNumberLabelactive">
                            <img src="Content/Images/formchecklist2.png" class="imageDaftarNumberLabel"/>
                            <p>Verifikasi</p>
                        </asp:panel>
                        <div class="garisKeras"></div>
                        <asp:panel  runat="server" Cssclass="formDaftarNumberLabelactive">
                            <asp:Label  runat="server" CssClass="formNumberLabelactive" Text ="3"/>
                            <p>Password</p>
                        </asp:panel>
                    </div>

                    <div class="form-group form-groupPlus">
                    <label class="form-labelPlus" for="exampleInputEmail1">Password</label>
                    <input type="password" class="form-controlPlus " id="inputDaftarPassword" aria-describedby="emailHelp" placeholder="Masukan Password">
                    </div>
                    <div class="form-group form-groupPlus">
                    <label class="form-labelPlus" for="exampleInputEmail1">Konfirmasi Password</label>
                    <input type="password" class="form-controlPlus " id="inputDaftarKonfirmasiPassword" aria-describedby="emailHelp" placeholder="Masukan Password">
                    </div>
                    <div class="row form-group daftarmasuk">
                        <div class="col-md-12">
                            <asp:button runat="server" type="submit" Cssclass="masukLoginPlus" Text="SELESAI" OnClick="btnSelesaiDaftar_Click"/>
                        </div>
                        
                    </div>

                    <div class="form-group garisLogin row">
                    <div class="colgaris">
                        <hr />
                    </div>
                    <div class="colgaris-text">
                        <label class="form-check-label form-labelPlus">atau masuk dengan</label>
                    </div>
                    <div class="colgaris">
                        <hr />
                    </div>
                    </div>
                    <div class="row">
                        <div class="socialLoginPlus">
                            <div class="round-link-login col-md-6">
                            <img class="round-link-elipse" src="Content/Images/Watermark.PNG" alt="google">
                            <a class="round-link-anchor">Google</a>
                        </div>
                        <div class="round-link-login col-md-6">
                            <img class="round-link-elipse" src="Content/Images/Watermark.PNG" alt="google">
                            <a class="round-link-anchor">Facebook</a>
                        </div>
                        </div>
                    </div>
            </form>
            </asp:Panel>
        </div>
            
        </div>
    </div>
</asp:Content>
