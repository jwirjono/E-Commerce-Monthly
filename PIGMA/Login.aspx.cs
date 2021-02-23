using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIGMA
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Daftar"] != null)
            {
                if(Session["Daftar"].ToString() == "ada")
                {
                    gambarLogin.Visible = false;
                    gambarDaftar.Visible = true;
                    panelFormLogin.Visible = false;
                    labelMainForm.Text = "Daftar";
                    panelDaftarLogin.Visible = true;
                }
            }
        }
        
        protected void btnDaftar_Click(object sender, EventArgs e)
        {
            gambarLogin.Visible = false;
            gambarDaftar.Visible = true;
            panelFormLogin.Visible = false;
            labelMainForm.Text = "Daftar";
            panelDaftarLogin.Visible = true;
        }
        protected void btnDaftarCont_Click(object sender, EventArgs e)
        {
            panelDaftarLogin.Visible = false;
            labelMainForm.Text = "Masukan Kode Verifikasi";
            panelVerifikasiLogin.Visible = true;
        }
        protected void btnKirimUlang_Click(object sender, EventArgs e)
        {
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(pnlUsername.Value == "admin@admin.com" && pnlPassword.Value == "admin")
            {
                Response.Redirect("~/admin.aspx");
            }
            else if(pnlUsername.Value == "sosis@sonice.com" && pnlPassword.Value == "smash")
            {
                Session["User"] = "ada";
                Session["IsLogin"] = "ada";
                Response.Redirect("~/HomePage.aspx");
            }
        }
        protected void btnVerifikasi_Click(object sender, EventArgs e)
        {
            panelVerifikasiLogin.Visible = false;
            labelMainForm.Text = "Daftar Dengan Email";
            panelPasswordLogin.Visible = true;
        }
        protected void btnSelesaiDaftar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HomePage.aspx");
        }
        protected void btnLupa_Click(object sender, EventArgs e)
        {
            gambarLupa.Visible = true;
            gambarLogin.Visible = false;
            labelMainForm.Text = "Lupa Password";
            panelFormLogin.Visible = false;
            panelLupaPassword.Visible = true;
        }
        
    }
}