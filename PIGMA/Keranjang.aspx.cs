using PIGMA.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
                chkAllprop.Value = "1";

                if (Session["Keranjang"] != null)
                {
                    DataBelanja datab = new DataBelanja();
                    datab.ListDetailProduk = (List<DetailProduk>)Session["Keranjang"];
                    if (datab.ListDetailProduk.Count != 0)
                    {
                        panelKeranjangKosong.Visible = false;
                        panelKeranjangBelanja.Visible = true;
                        gridObject.DataSource = datab.ListDetailProduk;
                        gridObject.DataBind();
                        int count = 0;
                        foreach (GridViewRow gvRow in gridObject.Rows)
                        {
                            CheckBox cb = (CheckBox)gvRow.FindControl("chkStats");
                            Label lblharga = (Label)gvRow.FindControl("lblTotal");
                            if (cb.Checked)
                            {
                                count = count + int.Parse(lblharga.Text);
                            }
                        }
                        totalharga1.Text = count.ToString();
                        alamat1.Text = Session["Alamat"].ToString();
                        alamat2.Text = Session["Alamat"].ToString();
                    }
                }
            }
            
        }
        
        protected void Freq_Confirm(object sender, EventArgs e)
        {
            panelBerulang.Visible = false;
            if(rbFrekuensiTB.SelectedValue == "h")
            {
                string a = numberHari.Value.ToString() + " Hari";
                string b = numberFrek.Value.ToString() + " Kali";
                pilihTransaksi.Text = "Dikirim Setiap " + a + ",diulang sebanyak " + b;
                pilihTransaksi.Visible = true;
            }
            else if(rbFrekuensiTB.SelectedValue == "m")
            {
                string a = numberMinggu.Value.ToString() + " Minggu";
                string b = numberFrek.Value.ToString() + " Kali";
                pilihTransaksi.Text = "Dikirim Setiap " + a + ",diulang sebanyak " + b;
                pilihTransaksi.Visible = true;
            }
            else if(rbFrekuensiTB.SelectedValue == "b")
            {
                string a = numberBulan.Value.ToString() + " Bulan";
                string b = numberFrek.Value.ToString() + " Kali";
                pilihTransaksi.Text = "Dikirim Setiap " + a + ",diulang sebanyak " + b;
                pilihTransaksi.Visible = true;
            }
        }
        protected void Freq_Cancel(object sender, EventArgs e)
        {
            panelBerulang.Visible = false;
        }
        protected void DeleteAll_Click(object sender, EventArgs e)
        {
            panelHapus.Visible = true;
        }
        protected void DeleteAll_Confirm(object sender, EventArgs e)
        {
            Session["Keranjang"] = null;
            panelKeranjangKosong.Visible = true;
            panelKeranjangBelanja.Visible = false;
            panelHapus.Visible = false;
        }
        protected void DeleteAll_Cancel(object sender, EventArgs e)
        {
            panelHapus.Visible = false;
        }

        protected void btn_minusClick(object sender, EventArgs e)
        {
            
        }
        protected void btn_plusClick(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow rowIndex = (GridViewRow)btn.NamingContainer;
            Label id = (Label)rowIndex.FindControl("lblID");
            /* here you will get ID, which is is set as PK geerally in table*/
            DataBelanja datab = new DataBelanja();
            datab.ListDetailProduk = (List<DetailProduk>)Session["Keranjang"];
            datab.Increase(int.Parse(id.Text));
        }
        protected void btnToBelanja_Click(object sender, EventArgs e)
        {
            panelBeliKurang.Visible=false;
            Response.Redirect("Belanja.aspx");
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
            if(Session["IsLogin"] == null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Harap Login Terlebih Dahulu')", true);
                Response.Redirect("~/Login.aspx");
            }

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

            if(keranjang.ListDetailProduk.Count == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Harap Memilih Produk di Keranjang')", true);
            }
            else
            {
                int count = 0;
                foreach (GridViewRow gvRow in gridObject.Rows)
                {
                    Label lblharga = (Label)gvRow.FindControl("lblTotal");
                    CheckBox cb = (CheckBox)gvRow.FindControl("chkStats");
                    if (cb.Checked)
                    {
                        count = count + int.Parse(lblharga.Text);
                    }
                }
                if(count < 100000)
                {
                    panelBeliKurang.Visible = true;
                }
                else
                {
                    txtTotal1.Text = count.ToString();
                    txtTotal1max.Text = count.ToString();
                    txtTotal2.Text = count.ToString();
                    txtTotal2max.Text = count.ToString();
                    txtTotal3.Text = count.ToString();
                    txtTotal3max.Text = count.ToString();
                    Session["Pembayaran"] = keranjang;
                    panelKeranjangBelanja.Visible = false;
                    panelPembelianBelanja.Visible = true;
                    lblMainHeader.Text = "Pembelian";
                    lblsupa.Text = Session["Supermarket"].ToString();
                    lblsupa.Visible = true;
                }
                
                
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
            panelKeranjangBelanja.Visible = false;
        }
        protected void btnNext2_Click(object sender, EventArgs e)
        {
            panel2.Visible = false;
            panel3.Visible = true;
            panelKeranjangBelanja.Visible = false;
        }
        protected void btnNextClose(object sender, EventArgs e)
        {
            panelKonfirm.Visible = false;
        }
        protected void btnNextOpen(object sender, EventArgs e)
        {
            panelKonfirm.Visible = true;
        }
        
        protected void btnNext3_Click(object sender, EventArgs e)
        {
            DataBelanja datab = new DataBelanja();
            DataBelanja datanew = new DataBelanja();
            datab.ListDetailProduk = (List<DetailProduk>)Session["Keranjang"];
            using (SqlConnection conn = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=Monthly;Integrated Security=True"))
            {

                //retrieve the SQL Server instance version
                string query = string.Format(@"  insert into [Monthly].[dbo].[Transaction] select
                max(trans_id)+1,getdate(),1,1,1,'{0}',0,'Tunai','Diproses' from [Monthly].[dbo].[Transaction];", txtTotal3.Text);
                //create the SqlCommand object
                SqlCommand cmd = new SqlCommand(query, conn);

                //open connection
                conn.Open();

                //execute the SQL Command (UPDATE)
                cmd.ExecuteNonQuery();

                //close connection
                conn.Close();

            }
            foreach (GridViewRow gvRow in gridObject.Rows)
            {
                CheckBox cb = (CheckBox)gvRow.FindControl("chkStats");
                Label lblid = (Label)gvRow.FindControl("lblID");
                Label lblnama = (Label)gvRow.FindControl("lblNamaProduk");
                Label lblkuantitas = (Label)gvRow.FindControl("lblKuantitas");
                Label lblharga = (Label)gvRow.FindControl("lblHarga");
                if (cb.Checked)
                {
                    datanew.DataBelanjaSet(int.Parse(lblid.Text), lblnama.Text, int.Parse(lblkuantitas.Text), int.Parse(lblharga.Text));
                    using (SqlConnection conn = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=Monthly;Integrated Security=True"))
                    {

                        //retrieve the SQL Server instance version
                        string query = string.Format(@"  insert into [Monthly].[dbo].[PurchaseGoods] select
                        max(trans_id),{0},{1},{2} from [Monthly].[dbo].[Transaction];", lblid.Text,lblkuantitas.Text,lblharga.Text);
                        //create the SqlCommand object
                        SqlCommand cmd = new SqlCommand(query, conn);

                        //open connection
                        conn.Open();

                        //execute the SQL Command (UPDATE)
                        cmd.ExecuteNonQuery();

                        //close connection
                        conn.Close();

                    }
                }
            }
            datanew.SetReceipt(alamat2.Text, int.Parse(txtTotal3max.Text));
            
            Session["ProdukFinal"] = datanew.ListDetailProduk;
            Session["Receipt"] = datanew.ListDetailReceipt;
            Response.Redirect("Account.aspx");
        }
        protected void btnCalendar_Open(object sender, EventArgs e)
        {
            panelCalendar.Visible = true;
            
        }
        protected void btnCalendar_Close(object sender, EventArgs e)
        {
            panelCalendar.Visible = false;
        }
        protected void btnCalendar_Complete(object sender, EventArgs e)
        {
            panelCalendar.Visible = false;
            pilihTanggal.Visible = true;
            pilihTanggal.Text = literalyCalendar.SelectedDate.ToString("dd-MM-yyyy");
        }

        protected void btnBerulang_Open(object sender, EventArgs e)
        {
            panelBerulang.Visible = true;
        }

    }
    
    
}