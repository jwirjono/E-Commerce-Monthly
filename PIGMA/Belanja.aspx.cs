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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string supermarket = Session["Supermarket"].ToString();
                supaID.Value = supermarket;
                lblAlamat.Text= Session["Alamat"].ToString();
                switch (supermarket)
                {
                    case "Lotte Mart":
                        lblSupa.Text = "Lotte Mart";
                        panelProdukKosong.Visible = false;
                        panelCardProdukGiant.Visible = true;
                        break;
                    case "Grand Lucky":
                        lblSupa.Text = "Grand Lucky";
                        panelProdukKosong.Visible = false;
                        panelCardProdukGrandLucky.Visible = true;
                        break;
                    case "Transmart":
                        lblSupa.Text = "Transmart";
                        panelProdukKosong.Visible = true;
                        break;
                    case "Ranch Market":
                        lblSupa.Text = "Ranch Market";
                        panelProdukKosong.Visible = false;
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
        #region btn prod
        protected void btnProdAll_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = true;
            pnlHistory.Visible = true;
            if (supaID.Value == "Lotte Mart")
            {
                panelProdukKosong.Visible = false;
                panelCardProdukGiant.Visible = true;
            }
            else if(supaID.Value == "Grand Lucky")
            {
                panelProdukKosong.Visible = false;
                panelCardProdukGrandLucky.Visible = true;
            }
        }
        protected void btnProd1_Click(object sender, EventArgs e)
        {
            panelCardProdukGiant.Visible = false;
            panelCardProdukGrandLucky.Visible = false;
            panelProdukKosong.Visible = true;
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
        }
        protected void btnProd2_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
            if (supaID.Value == "Lotte Mart")
            {
                panelProdukKosong.Visible = false;
                panelCardProdukGiant.Visible = true;
            }
            else if (supaID.Value == "Grand Lucky")
            {
                panelProdukKosong.Visible = false;
                panelCardProdukGrandLucky.Visible = true;
            }
        }
        protected void btnProd3_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
            panelCardProdukGiant.Visible = false;
            panelCardProdukGrandLucky.Visible = false;
            panelProdukKosong.Visible = true;
        }
        protected void btnProd4_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
            panelCardProdukGiant.Visible = false;
            panelCardProdukGrandLucky.Visible = false;
            panelProdukKosong.Visible = true;
        }
        protected void btnProd5_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
            panelCardProdukGiant.Visible = false;
            panelCardProdukGrandLucky.Visible = false;
            panelProdukKosong.Visible = true;
        }
        protected void btnProd6_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
            panelCardProdukGiant.Visible = false;
            panelCardProdukGrandLucky.Visible = false;
            panelProdukKosong.Visible = true;
        }
        protected void btnProd7_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
            panelCardProdukGiant.Visible = false;
            panelCardProdukGrandLucky.Visible = false;
            panelProdukKosong.Visible = true;
        }
        protected void btnProd8_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
            panelCardProdukGiant.Visible = false;
            panelCardProdukGrandLucky.Visible = false;
            panelProdukKosong.Visible = true;
        }
        protected void btnProd9_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
            panelCardProdukGiant.Visible = false;
            panelCardProdukGrandLucky.Visible = false;
            panelProdukKosong.Visible = true;
        }
        protected void btnProd10_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
            panelCardProdukGiant.Visible = false;
            panelCardProdukGrandLucky.Visible = false;
            panelProdukKosong.Visible = true;
        }
        protected void btnProd11_Click(object sender, EventArgs e)
        {
            lblHistory.Visible = false;
            pnlHistory.Visible = false;
            panelCardProdukGiant.Visible = false;
            panelCardProdukGrandLucky.Visible = false;
            panelProdukKosong.Visible = true;
        }
        #endregion

        protected void btnComplete_Click(object sender, EventArgs e)
        {
            if (Session["Supermarket"].ToString() == "Lotte Mart")
            {
                DataBelanja data = new DataBelanja();
                data.DataBelanjaSet(10111, "Shabu Shabu", int.Parse(lblItemCard1.Text), 30000);
                data.DataBelanjaSet(10112, "Beef Yakiniku", int.Parse(lblItemCard2.Text), 25000);
                data.DataBelanjaSet(10113, "Beef Bulgogi", int.Parse(lblItemCard3.Text), 35000);
                data.DataBelanjaSet(10114, "Salmon Fillet", int.Parse(lblItemCard4.Text), 50000);
                Session["Keranjang"] = data.ListDetailProduk;
                Response.Redirect("Keranjang.aspx");
            }
            else if (Session["Supermarket"].ToString() == "Grand Lucky")
            {
                DataBelanja data = new DataBelanja();
                data.DataBelanjaSet(10121, "Apel Hijau Xilin Gol", int.Parse(lblItemCardb1.Text), 70000);
                data.DataBelanjaSet(10122, "Nangka Gazikumukh", int.Parse(lblItemCardb2.Text), 15000);
                data.DataBelanjaSet(10123, "Jeruk Mong", int.Parse(lblItemCardb3.Text), 45000);
                Session["Keranjang"] = data.ListDetailProduk;
                Response.Redirect("Keranjang.aspx");
            }
            
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
        #region GRAND LUCKY
        protected void btnAwalb1_Click(object sender, EventArgs e)
        {
            panelAwalCardb1.Visible = false;
            btnAwalCardb1.Visible = true;
            lblItemCardb1.Text = "1";
        }
        protected void btnMinusb1_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCardb1.Text);
            if (count == 1)
            {
                panelAwalCardb1.Visible = true;
                btnAwalCardb1.Visible = false;
                lblItemCardb1.Text = "0";
            }
            else
            {
                count = count - 1;
                lblItemCardb1.Text = count.ToString();
            }
        }
        protected void btnTambahb1_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCardb1.Text);
            count = count + 1;
            lblItemCardb1.Text = count.ToString();
        }


        protected void btnAwalb2_Click(object sender, EventArgs e)
        {
            panelAwalCardb2.Visible = false;
            btnAwalCardb2.Visible = true;
            lblItemCardb2.Text = "1";
        }
        protected void btnMinusb2_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCardb2.Text);
            if (count == 1)
            {
                panelAwalCardb2.Visible = true;
                btnAwalCardb2.Visible = false;
                lblItemCardb2.Text = "0";
            }
            else
            {
                count = count - 1;
                lblItemCardb2.Text = count.ToString();
            }
        }
        protected void btnTambahb2_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCardb2.Text);
            count = count + 1;
            lblItemCardb2.Text = count.ToString();
        }
        protected void btnAwalb3_Click(object sender, EventArgs e)
        {
            panelAwalCardb3.Visible = false;
            btnAwalCardb3.Visible = true;
            lblItemCardb3.Text = "1";
        }
        protected void btnMinusb3_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCardb3.Text);
            if (count == 1)
            {
                panelAwalCardb3.Visible = true;
                btnAwalCardb3.Visible = false;
                lblItemCardb3.Text = "0";
            }
            else
            {
                count = count - 1;
                lblItemCardb3.Text = count.ToString();
            }
        }
        protected void btnTambahb3_Click(object sender, EventArgs e)
        {
            int count = int.Parse(lblItemCardb3.Text);
            count = count + 1;
            lblItemCardb3.Text = count.ToString();
        }
        #endregion
    }
}