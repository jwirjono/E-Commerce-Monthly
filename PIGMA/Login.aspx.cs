using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            using (SqlConnection conn = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=Monthly;Integrated Security=True"))
            {

                //retrieve the SQL Server instance version
                string query = @"SELECT email,password from Customer;";
                //define the SqlCommand object
                SqlCommand cmd = new SqlCommand(query, conn);

                //open connection
                conn.Open();

                //execute the SQLCommand
                SqlDataReader dr = cmd.ExecuteReader();

                int val = 0;
                //check if there are records
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        if(pnlUsername.Value == dr.GetString(0))
                        {
                            if(pnlPassword.Value == "admin")
                            {
                                Response.Redirect("~/admin.aspx");
                            }
                            else if (pnlPassword.Value == dr.GetString(1))
                            {
                                Session["User"] = "ada";
                                Session["IsLogin"] = "ada";
                                Response.Redirect("~/HomePage.aspx");
                            }
                            else
                            {
                                pnlValidasiPass.Visible = true;
                                val = 1;
                            }
                        }
                    }
                }
                if(val == 0)
                {
                    pnlValidasiUser.Visible = true;
                }
                

                //close data reader
                dr.Close();

                //close connection
                conn.Close();
            }

            /*
            if (pnlUsername.Value == "admin@admin.com" && pnlPassword.Value == "admin")
            {
                Response.Redirect("~/admin.aspx");
            }
            else if(pnlUsername.Value == "sosis@sonice.com" && pnlPassword.Value == "smash")
            {
                Session["User"] = "ada";
                Session["IsLogin"] = "ada";
                Response.Redirect("~/HomePage.aspx");
            }
            */
        }
        protected void btnVerifikasi_Click(object sender, EventArgs e)
        {
            panelDaftarLogin.Visible = false;
            panelVerifikasiLogin.Visible = false;
            labelMainForm.Text = "Daftar Dengan Email";
            panelPasswordLogin.Visible = true;
        }
        protected void btnSelesaiDaftar_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=Monthly;Integrated Security=True"))
            {

                //retrieve the SQL Server instance version
                string query = string.Format(@"INSERT INTO Customer select
  max(customer_id)+1,'','{0}',000000,'{1}',1,'' from Customer", inputDaftarID.Value,inputDaftarPassword.Value);
                //create the SqlCommand object
                SqlCommand cmd = new SqlCommand(query, conn);

                //open connection
                conn.Open();

                //execute the SQL Command (UPDATE)
                cmd.ExecuteNonQuery();

                //close connection
                conn.Close();

            }
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