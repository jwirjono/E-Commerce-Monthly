 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PIGMA.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
        <div class="col-md-7">
            <img class="card-img-top card-img-topPlus" src="Content/Images/Watermark.PNG" alt="fas">
        </div>
        <div class="col-md-5">
            <form>
              <div class="form-group">
                  <label style="font-size:24px;color:#373F41;"><b>Login</b></label>
                  <p>Mea Culpa lorem ipsum dominique bobobobo bola kampung</p>
              </div>
              <div class="form-group form-groupPlus">
                <label class="form-labelPlus" for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control form-controlPlus " id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="alamat@email.com">
              </div>
              <div class="form-group form-groupPlus">
                <label class="form-labelPlus" for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control form-controlPlus" id="exampleInputPassword1" placeholder="Masukan password">
              </div>
              <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label style="margin-left:5px;" class="form-check-label form-labelPlus" for="exampleCheck1">Ingat saya</label>
                <a style="margin-left : 600px;color:#2880CE;opacity:0.6;display:inline-block">Lupa Password?</a>
              </div>
              <div class="row form-group daftarmasuk">
                <div class="col-md-6">
                    <button type="submit" class="daftarLoginPlus">DAFTAR</button>
                </div>
                <div class="col-md-6">
                    <button type="submit" class="masukLoginPlus">MASUK</button>
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
        </div>
            
        </div>
    </div>
</asp:Content>
