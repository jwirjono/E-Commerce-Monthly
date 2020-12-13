using PIGMA.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace PIGMA
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private string ab;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string supermarket = Session["Supermarket"].ToString();
                supaID.Value = supermarket;
                switch (supermarket)
                {
                    case "Giant":
                        break;
                    case "Grand":
                        break;
                    case "Trans":
                        break;
                    case "Ranch":
                        break;
                }
            }
            /*
            int a = 7055;
            HtmlGenericControl divcontrol = new HtmlGenericControl();
            divcontrol.Attributes["class"] = "cardFullProdukBelanjaPlus";
            divcontrol.TagName = "div";
            panelCardProduk.Controls.Add(divcontrol);

            Label question = new Label();
            question.Text = "text";
            question.ID = a + "132";
            divcontrol.Controls.Add(question);

            Button b = new Button();
            b.Text = "+";
            b.ID = "lblx";
            b.Click += btnPlus_Click;
            
            //b.OnClientClick = btnPlus_Click();
            divcontrol.Controls.Add(b);
            */
        }
        protected void btnComplete_Click(object sender, EventArgs e)
        {
            string keranjang = lblItemCard1.Text.ToString() + lblItemCard2.Text.ToString() + lblItemCard3.Text.ToString() + lblItemCard4.Text.ToString();
            Session["Keranjang"] = keranjang;
            Response.Redirect("Keranjang.aspx");
        }
        protected void btnPengiriman_Click(object sender, EventArgs e)
        {
            DataBelanja data = new DataBelanja();
            data.DataBelanjaSet(10112, "Apel Merah XiongNu", 1, 30000);
            data.DataBelanjaSet(10113, "Anggur Aquitane", 1, 30000);
            data.DataBelanjaSet(10114, "Susu Mazandran", 1, 30000);
            data.DataBelanjaSet(10114, "Susu Mazandran", 2, 30000);
            data.DataBelanjaSet(10112, "Apel Merah XiongNu", 2, 30000);
            data.DataBelanjaSet(10112, "Apel Merah XiongNu", 3, 30000);
            Session["Keranjang"] = data.ListDetailProduk;
            Response.Redirect("Keranjang.aspx");
            //panelCardProduk.Controls.Add(new Panel)
        }
        protected void btnPlus_Click(object sender, EventArgs e)
        {
            Button button = (Button)FindControl("MainContent_7055");
            button.Text = "2";
            /*
            DataBelanja data = new DataBelanja();
            data.DataBelanjaSet(10112, "Apel Merah XiongNu", 1, 30000);
            data.DataBelanjaSet(10113, "Anggur Aquitane", 1, 30000);
            data.DataBelanjaSet(10114, "Susu Mazandran", 1, 30000);
            data.DataBelanjaSet(10114, "Susu Mazandran", 2, 30000);
            data.DataBelanjaSet(10112, "Apel Merah XiongNu", 2, 30000);
            data.DataBelanjaSet(10112, "Apel Merah XiongNu", 3, 30000);
            //panelCardProduk.Controls.Add(new Panel)
            */

        }
        #region GIANT



        protected void btnAwal1_Click(object sender, EventArgs e)
        {
            ab = "12";
            panelAwalCard1.Visible = false;
            btnAwalCard1.Visible = true;
            lblItemCard1.Text = "1";
        }
        protected void btnMinus1_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCard1.Text);
            if(count == 1)
            {
                panelAwalCard1.Visible = true;
                btnAwalCard1.Visible = false;
                lblItemCard1.Text = "0";
            }
            else
            {
                count = count - 1;
                lblItemCard1.Text = count.ToString();
            }
        }
        protected void btnTambah1_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCard1.Text);
            count = count + 1;
            lblItemCard1.Text = count.ToString();
        }


        protected void btnAwal2_Click(object sender, EventArgs e)
        {
            panelAwalCard2.Visible = false;
            btnAwalCard2.Visible = true;
            lblItemCard2.Text = "1";
        }
        protected void btnMinus2_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCard2.Text);
            if (count == 1)
            {
                panelAwalCard2.Visible = true;
                btnAwalCard2.Visible = false;
                lblItemCard2.Text = "0";
            }
            else
            {
                count = count - 1;
                lblItemCard2.Text = count.ToString();
            }
        }
        protected void btnTambah2_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCard2.Text);
            count = count + 1;
            lblItemCard2.Text = count.ToString();
        }
        protected void btnAwal3_Click(object sender, EventArgs e)
        {
            panelAwalCard3.Visible = false;
            btnAwalCard3.Visible = true;
            lblItemCard3.Text = "1";
        }
        protected void btnMinus3_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCard3.Text);
            if (count == 1)
            {
                panelAwalCard3.Visible = true;
                btnAwalCard3.Visible = false;
                lblItemCard3.Text = "0";
            }
            else
            {
                count = count - 1;
                lblItemCard3.Text = count.ToString();
            }
        }
        protected void btnTambah3_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCard3.Text);
            count = count + 1;
            lblItemCard3.Text = count.ToString();
        }
        protected void btnAwal4_Click(object sender, EventArgs e)
        {
            panelAwalCard4.Visible = false;
            btnAwalCard4.Visible = true;
            lblItemCard4.Text = "1";
        }
        protected void btnMinus4_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCard4.Text);
            if (count == 1)
            {
                panelAwalCard4.Visible = true;
                btnAwalCard4.Visible = false;
                lblItemCard4.Text = "0";
            }
            else
            {
                count = count - 1;
                lblItemCard4.Text = count.ToString();
            }
        }
        protected void btnTambah4_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCard4.Text);
            count = count + 1;
            lblItemCard4.Text = count.ToString();
        }
        #endregion
    }
}