using System;
using System.Collections.Generic;
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