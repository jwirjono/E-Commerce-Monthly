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
                navLoginFalsePanel.Visible = false;
                navLoginTruePanel.Visible = true;
                panelHilang.Visible = false;
                panelAkun.Visible = true;
            }
            panelUMB.Visible = false;
            panelFooter.Visible = true;
        }
        protected void SearchEvent(object sender, EventArgs e)
        {

        }
        protected void btnToLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
        protected void btnLoginDone_Click(object sender, EventArgs e)
        {
            Session["User"] = "ada";
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            holup.Text = txtSearchBar.Value.ToString();
        }
        protected void btnAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account.aspx");
        }
        protected void btnTB_Click(object sender, EventArgs e)
        {
            panelUMB.Visible = true;
        }


    }
}