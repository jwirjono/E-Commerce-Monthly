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
            this.data();
        }
        protected void data()
        {
            DataAdminReceipt datab = new DataAdminReceipt();
            datab.DataBelanjaSet(4700, "Nama Produk", 2, 20000, "gram", 2000);
            datab.DataBelanjaSet(4701, "Nama Produk", 2, 40000, "gram", 2000);
            datab.DataBelanjaSet(4702, "Nama Produk", 2, 50000, "gram", 2000);
            datab.DataBelanjaSet(4703, "Nama Produk", 2, 60000, "gram", 2000);
            datab.DataBelanjaSet(4704, "Nama Produk", 1, 60000, "gram", 2000);
            datab.DataBelanjaSet(4705, "Nama Produk", 3, 15000, "gram", 2000);
            datab.DataBelanjaSet(4706, "Nama Produk", 4, 10000, "gram", 2000);
            datab.DataBelanjaSet(4707, "Nama Produk", 5, 5000, "gram", 2000);
            datab.DataBelanjaSet(4708, "Nama Produk", 6, 5000, "gram", 2000);
            datab.DataBelanjaSet(4709, "Nama Produk", 2, 30000, "gram", 2000);
            datab.DataBelanjaSet(4710, "Nama Produk", 1, 60000, "gram", 2000);
            datab.DataBelanjaSet(4711, "Nama Produk", 8, 6000, "gram", 2000);


            datab.SetReceipt("Sophi Nuareni", "08133330405", "Transmart Dago", "Jl. Pasir Kaliki no 27, Kebon Kaung, Bandung, 40131", "27 Desember 2020 waktu kirim disesuaikan", 684000, 20000, 5000, 25000);



            gridObject.DataSource = datab.ListDetailProduk;
            gridObject.DataBind();

            kodepemesanan.Text = Convert.ToString(datab.ListDetailReceipt[0].IDReceipt);
            pengirim.Text = datab.ListDetailReceipt[0].pembeli + ", " + datab.ListDetailReceipt[0].notelp;
            penjual.Text = datab.ListDetailReceipt[0].Penjual;
            tanggalpengiriman.Text = datab.ListDetailReceipt[0].WaktuPengiriman;
            alamatpenerima.Text = datab.ListDetailReceipt[0].AlamatPengiriman;

            txtHarga.Text = "Rp. " + datab.ListDetailReceipt[0].TotalHarga.ToString();
            txtKemasan.Text = "Rp. " + datab.ListDetailReceipt[0].Biayakardus.ToString();
            txtPengiriman.Text = "Rp. " + datab.ListDetailReceipt[0].TotalBiayaPengiriman.ToString();
            txtDiskon.Text = "-Rp. " + datab.ListDetailReceipt[0].TotalDiskon.ToString();
            txtTotal.Text = "Rp. " + ((datab.ListDetailReceipt[0].TotalHarga + datab.ListDetailReceipt[0].Biayakardus + datab.ListDetailReceipt[0].TotalBiayaPengiriman) - datab.ListDetailReceipt[0].TotalDiskon).ToString();
        }
        protected void btnNext1_Click(object sender, EventArgs e)

        {
            this.data();
            panel1.Visible = false;
            
        }
        protected void btnubah_Click(object sender, EventArgs e)

        {
           

        }
        protected void btnkirim_Click(object sender, EventArgs e)

        {


        }
    }
}