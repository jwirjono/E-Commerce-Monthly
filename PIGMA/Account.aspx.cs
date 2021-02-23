using PIGMA.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static PIGMA.Classes.DataBelanja;

namespace PIGMA
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Receipt"] != null)
                {
                    detailReceipt.Visible = true;
                    panelPesanan.Visible = false;
                    lblsupa.Text = Session["Supermarket"].ToString();
                    DataBelanja datab = new DataBelanja();
                    datab.ListDetailProduk = (List<DetailProduk>)Session["ProdukFinal"];
                    datab.ListDetailReceipt = (List<DetailReceipt>)Session["Receipt"];
                    gridObject.DataSource = datab.ListDetailProduk;
                    gridObject.DataBind();

                    txtHarga.Text = datab.ListDetailReceipt[0].TotalRP;
                    txtTotal.Text = datab.ListDetailReceipt[0].TotalRP;
                    lblPengiriman.Text = datab.ListDetailReceipt[0].AlamatPengiriman;
                    lblWaktu.Text = datab.ListDetailReceipt[0].WaktuPengiriman;
                }
            }
        }
        
        protected void tb_click(object sender, EventArgs e)
        {
            btnxx0.Visible = true; 
            btnxx1.Visible = true;
        }
        protected void tbPlus_click(object sender, EventArgs e)
        {
            detailReceipt.Visible = false;
            panelTB.Visible = true;
        }
        protected void btnBerulang_Open(object sender, EventArgs e)
        {
            panelBerulang.Visible = true;
        }
        protected void Freq_Confirm(object sender, EventArgs e)
        {
            panelBerulang.Visible = false;
            if (rbFrekuensiTB.SelectedValue == "h")
            {
                string a = numberHari.Value.ToString() + " Hari";
                string b = numberFrek.Value.ToString() + " Kali";
                lblWaktu.Text = "Dikirim Setiap " + a + ",diulang sebanyak " + b;
            }
            else if (rbFrekuensiTB.SelectedValue == "m")
            {
                string a = numberMinggu.Value.ToString() + " Minggu";
                string b = numberFrek.Value.ToString() + " Kali";
                lblWaktu.Text = "Dikirim Setiap " + a + ",diulang sebanyak " + b;
            }
            else if (rbFrekuensiTB.SelectedValue == "b")
            {
                string a = numberBulan.Value.ToString() + " Bulan";
                string b = numberFrek.Value.ToString() + " Kali";
                lblWaktu.Text = "Dikirim Setiap " + a + ",diulang sebanyak " + b;
            }
        }
        protected void Freq_Cancel(object sender, EventArgs e)
        {
            panelBerulang.Visible = false;
        }
    }
}