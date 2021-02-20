using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIGMA
{
    public partial class adminpengaturan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btngantipage1(object sender, EventArgs e)
        {
            panelpengaturanakun.Visible = false;
            panelpengaturantoko.Visible = true;
        }
        protected void btngantipage2(object sender, EventArgs e)
        {
            panelpengaturantoko.Visible = false;
            panelpengaturanakun.Visible = true;
        }

    }
}