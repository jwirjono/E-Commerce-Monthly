using PIGMA.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIGMA
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Keranjang"] != null)
            {
                string ab = Session["Keranjang"].ToString();
            }
        }
        protected void btnCoba_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=Monthly;Integrated Security=True"))
            {

                //retrieve the SQL Server instance version
                string query = @"SELECT * from location";

                //define the SqlCommand object
                SqlCommand cmd = new SqlCommand(query, conn);

                //open connection
                conn.Open();

                //execute the SQLCommand
                SqlDataReader dr = cmd.ExecuteReader();

                DataBelanja receipt = new DataBelanja();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        DataBelanja.DetailReceipt res = new DataBelanja.DetailReceipt();
                        res.IDReceipt = 1;
                        res.Total = dr.GetInt32(1);
                        res.WaktuPengiriman = dr.GetString(3);

                        receipt.ListDetailReceipt.Add(res);
                    }
                }
                else
                {
                    Console.WriteLine("No data found.");
                }
                //close data reader
                dr.Close();

                //close connection
                conn.Close();
            }

        }
        protected void btnMap_Click(object sender, EventArgs e)
        {
            if (txtSearchBar.Value.ToString() == "")
            {
                pnlAlamatKosong.Visible = true;
            }
            else
            {
                pnlAlamatKosong.Visible = false;
                panelSupermarketTerdekat.Visible = true;
                lbltext1.Visible = true;
            }
            
        }
        protected void btnGiant_Click(object sender, EventArgs e)
        {
            Session["Supermarket"] = "Lotte Mart";
            Session["Alamat"] = txtSearchBar.Value.ToString();
            Response.Redirect("Belanja.aspx");
        }
        protected void btnGrandLucky_Click(object sender, EventArgs e)
        {
            Session["Supermarket"] = "Grand Lucky";
            Session["Alamat"] = txtSearchBar.Value.ToString();
            Response.Redirect("Belanja.aspx");
        }
        protected void btnTransmart_Click(object sender, EventArgs e)
        {
            Session["Supermarket"] = "Transmart";
            Session["Alamat"] = txtSearchBar.Value.ToString();
            Response.Redirect("Belanja.aspx");
        }
        protected void btnRanchMarket_Click(object sender, EventArgs e)
        {
            Session["Supermarket"] = "Ranch Market";
            Session["Alamat"] = txtSearchBar.Value.ToString();
            Response.Redirect("Belanja.aspx");
        }


    }
}