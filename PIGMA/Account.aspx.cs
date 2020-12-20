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
    }
}