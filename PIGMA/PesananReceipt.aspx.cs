using PIGMA.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIGMA
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataAdminReceipt datab = new DataAdminReceipt();
            datab.DataBelanjaSet(4700, "Sophi", 2, 20000, "gram", 2000);
            datab.DataBelanjaSet(4701, "Sophi", 2, 40000, "gram", 2000);
            datab.DataBelanjaSet(4702, "Sophi", 2, 50000, "gram", 2000);
            datab.DataBelanjaSet(4703, "Sophi", 2, 60000, "gram", 2000);

            datab.SetReceipt("Transmart Dago", "Jl. Pasir Kaliki no 27, Kebon Kaung, Bandung, 40131", "27 Desember 2020 waktu kirim disesuaikan", 3000000, 20000, 5000, 25000);

            

            gridObject.DataSource = datab.ListDetailProduk;
            gridObject.DataBind();

            kodepemesanan.Text = Convert.ToString(datab.ListDetailReceipt[0].IDReceipt);
            penjual.Text = datab.ListDetailReceipt[0].Penjual;
            tanggalpengiriman.Text = datab.ListDetailReceipt[0].WaktuPengiriman;
            alamatpenerima.Text = datab.ListDetailReceipt[0].AlamatPengiriman;

            txtHarga.Text = "Rp. " + datab.ListDetailReceipt[0].TotalHarga.ToString();
            txtKemasan.Text = "Rp. " + datab.ListDetailReceipt[0].Biayakardus.ToString();
            txtPengiriman.Text = "Rp. " + datab.ListDetailReceipt[0].TotalBiayaPengiriman.ToString();
            txtDiskon.Text = "-Rp. " + datab.ListDetailReceipt[0].TotalDiskon.ToString();
            txtTotal.Text    = "Rp. " + ((datab.ListDetailReceipt[0].TotalHarga + datab.ListDetailReceipt[0].Biayakardus + datab.ListDetailReceipt[0].TotalBiayaPengiriman) - datab.ListDetailReceipt[0].TotalDiskon).ToString();
        }
        protected void btnBack1_Click(object sender, EventArgs e)
        {
            panelPembelianBelanja.Visible = false;

        }
        protected void btnNext1_Click(object sender, EventArgs e)
        {
            panel1.Visible = false;
        }
    }
}