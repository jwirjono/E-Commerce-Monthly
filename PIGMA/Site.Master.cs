using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIGMA
{

    public partial class SiteMaster : MasterPage
    {
        private bool IsLogin = true;
        private string UserName;
        private string ImageLink;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["User"] != null)
            {
                if (Session["User"].ToString() == "ada")
                {
                    Session["User"] = "done";
                    panelUMB.Visible = true;
                }
                else
                {
                    panelUMB.Visible = false;
                    
                }
                navLoginFalsePanel.Visible = false;
                navLoginTruePanel.Visible = true;
                panelHilang.Visible = false;
                panelAkun.Visible = true;
            }
            panelFooter.Visible = true;
        }
        protected void SearchEvent(object sender, EventArgs e)
        {

        }
        protected void btnToLogin_Click(object sender, EventArgs e)
        {
            Session["Daftar"] = "ada";
            Response.Redirect("~/Login.aspx");
        }
        protected void btnLoginDone_Click(object sender, EventArgs e)
        {
            Session["Daftar"] = null;
            Response.Redirect("~/Login.aspx");
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            holup.Text = txtSearchBar.Value.ToString();
        }
        protected void btnAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account.aspx");
        }
        
        protected void btnClose(object sender, EventArgs e)
        {
            panelUMB.Visible = false;
        }
        protected void btnTB_Click(object sender, EventArgs e)
        {
            panelUMB.Visible = true;
        }


    }
}