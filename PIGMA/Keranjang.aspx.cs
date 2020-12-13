using PIGMA.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static PIGMA.Classes.DataBelanja;

namespace PIGMA
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                chkAllprop.Value = "0";
                if (Session["Keranjang"] !=null)
                {
                    panelKeranjangKosong.Visible = false;
                    panelKeranjangBelanja.Visible = true;

                    DataBelanja datab = new DataBelanja();
                    datab.ListDetailProduk = (List<DetailProduk>)Session["Keranjang"];
                    datab.DataBelanjaSet(10121, "a", 1, 50000);
                    datab.DataBelanjaSet(10122, "a", 1, 50000);

                    gridObject.DataSource = datab.ListDetailProduk;
                    gridObject.DataBind();

                    int count = 0;
                    foreach (GridViewRow gvRow in gridObject.Rows)
                    {
                        CheckBox cb = (CheckBox)gvRow.FindControl("chkStats");
                        Label lblharga = (Label)gvRow.FindControl("lblHarga");
                        if (cb.Checked)
                        {
                            count = count + int.Parse(lblharga.Text);
                        }
                    }
                    if (count == 0)
                    {
                        totalharga1.Text = "-";
                    }
                    else
                    {
                        totalharga1.Text = count.ToString();
                    }
                }
            }
            

        }
        protected void btn_mulaibelanja(object sender, EventArgs e)
        {
            Response.Redirect("Belanja.aspx");
        }
        protected void chkRef_Click(object sender, EventArgs e)
        {
            
        }
        
        protected void chkAll_CheckedChanged(object sender,EventArgs e)
        {
            if(chkAllprop.Value == "0")
            {
                foreach (GridViewRow gvRow in gridObject.Rows)
                {
                    CheckBox cb = (CheckBox)gvRow.FindControl("chkStats");
                    cb.Checked = true;
                }
                chkAllprop.Value = "1";
            }
            else
            {
                foreach (GridViewRow gvRow in gridObject.Rows)
                {
                    CheckBox cb = (CheckBox)gvRow.FindControl("chkStats");
                    cb.Checked = false;
                }
                chkAllprop.Value = "0";
            }
            
        }
        protected void btnComplete_Click(object sender, EventArgs e)
        {
            DataBelanja keranjang = new DataBelanja();
            foreach (GridViewRow gvrow in gridObject.Rows)
            {
                CheckBox cb = (CheckBox)gvrow.FindControl("chkStats");
                if (cb.Checked == true)
                {
                    Label lblid = (Label)gvrow.FindControl("lblID");
                    Label lblnama = (Label)gvrow.FindControl("lblNamaProduk");
                    Label lblkuantitas = (Label)gvrow.FindControl("lblKuantitas");
                    Label lblharga = (Label)gvrow.FindControl("lblHarga");
                    keranjang.DataBelanjaSet(int.Parse(lblid.Text), lblnama.Text, int.Parse(lblkuantitas.Text), int.Parse(lblharga.Text));
                }
            }

            if(keranjang.ListDetailProduk != null)
            {
                Session["Pembayaran"] = keranjang;
                panelKeranjangBelanja.Visible = false;
                panelPembelianBelanja.Visible = true;
                lblMainHeader.Text = "Pembelian";
                lblsupa.Text= Session["Supermarket"].ToString();
                lblsupa.Visible = true;

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Harap Memilih Produk di Keranjang')", true);
            }
        }
        protected void btnBack1_Click(object sender, EventArgs e)
        {
            panelPembelianBelanja.Visible = false;
            panelKeranjangBelanja.Visible = true;
            Session["Pembayaran"] = null;
        }
        protected void btnBack2_Click(object sender, EventArgs e)
        {
            panel1.Visible = true;
            panel2.Visible = false;
        }
        protected void btnBack3_Click(object sender, EventArgs e)
        {
            panel2.Visible = true;
            panel3.Visible = false;
        }
        protected void btnNext1_Click(object sender, EventArgs e)
        {
            panel1.Visible = false;
            panel2.Visible = true;
        }
        protected void btnNext2_Click(object sender, EventArgs e)
        {
            panel2.Visible = false;
            panel3.Visible = true;
        }
        protected void btnNext3_Click(object sender, EventArgs e)
        {
        }

    }
}