using PIGMA.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

                    lblStatus.Text = datab.ListDetailReceipt[0].Status;
                    txtHarga.Text = datab.ListDetailReceipt[0].TotalRP;
                    txtTotal.Text = datab.ListDetailReceipt[0].TotalRP;
                    lblPengiriman.Text = datab.ListDetailReceipt[0].AlamatPengiriman;
                    lblWaktu.Text = datab.ListDetailReceipt[0].WaktuPengiriman;
                }
                else
                {
                    daftarReceipt.Visible = true;
                    
                    if(Session["ListReceipt"] == null)
                    {
                        List<DetailReceipt> a = new List<DetailReceipt>();
                        using (SqlConnection conn = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=Monthly;Integrated Security=True"))
                        {

                            //retrieve the SQL Server instance version
                            string query = @"select trans_id, l.kode_pos, status,price,trans_date from [Monthly].[dbo].[Transaction] t INNER JOIN Location l on t.location_id = l.location_id";
                            //define the SqlCommand object
                            SqlCommand cmd = new SqlCommand(query, conn);

                            //open connection
                            conn.Open();

                            //execute the SQLCommand
                            SqlDataReader dr = cmd.ExecuteReader();

                            int val = 0;
                            //check if there are records
                            if (dr.HasRows)
                            {
                                while (dr.Read())
                                {
                                    DetailReceipt b = new DetailReceipt();
                                    b.IDReceipt = dr.GetInt32(0);
                                    b.AlamatPengiriman = dr.GetString(1);
                                    b.Status = dr.GetString(2);
                                    b.Total = dr.GetInt32(3);
                                    b.WaktuPengiriman = dr.GetDateTime(4).ToString();
                                    b.TotalRP = "Rp." + b.Total;
                                    a.Add(b);
                                }
                            }

                            Session["ListReceipt"] = a;

                            //close data reader
                            dr.Close();

                            //close connection
                            conn.Close();
                        }
                        GridView1.DataSource = a;
                        GridView1.DataBind();
                    }
                    else
                    {
                        List<DetailReceipt> niu = (List<DetailReceipt>)Session["ListReceipt"];

                        GridView1.DataSource = niu;
                        GridView1.DataBind();
                    }

                }
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //verify tran_nr
            string id = e.CommandArgument.ToString();

            if (e.CommandName == "Lihat")
            {
                using (SqlConnection conn = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=Monthly;Integrated Security=True"))
                {
                    List<DetailReceipt> bb = new List<DetailReceipt>();
                    //retrieve the SQL Server instance version
                    string query = string.Format(@"select trans_id, l.kode_pos, status,price,trans_date from [Monthly].[dbo].[Transaction] t INNER JOIN Location l on t.location_id = l.location_id where trans_id = {0}",id);
                    //define the SqlCommand object
                    SqlCommand cmd = new SqlCommand(query, conn);

                    //open connection
                    conn.Open();

                    //execute the SQLCommand
                    SqlDataReader dr = cmd.ExecuteReader();

                    //check if there are records
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            DetailReceipt b = new DetailReceipt();
                            b.IDReceipt = dr.GetInt32(0);
                            b.AlamatPengiriman = dr.GetString(1);
                            b.Status = dr.GetString(2);
                            b.Total = dr.GetInt32(3);
                            b.WaktuPengiriman = dr.GetDateTime(4).ToString();
                            b.TotalRP = "Rp." + b.Total;
                            bb.Add(b);
                        }
                    }

                    //close data reader
                    dr.Close();

                    //close connection
                    conn.Close();

                    Session["Receipt"] = bb;
                }
                using (SqlConnection conn = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=Monthly;Integrated Security=True"))
                {
                    List<DetailProduk> cc = new List<DetailProduk>();
                    //retrieve the SQL Server instance version
                    string query = string.Format(@"  select g.product_id, CAST((g.quantity * p.price) as int) as total , product_name , 'Rp.' + CAST(p.price as varchar) , g.quantity , 'Rp.' + CAST((g.quantity * p.price) as varchar) as totalrp
                    from [Monthly].[dbo].[PurchaseGoods] g INNER JOIN [Monthly].[dbo].[Product] p on g.product_id = p.product_id where g.trans_id={0} order by product_id ", id);
                    //define the SqlCommand object
                    SqlCommand cmd = new SqlCommand(query, conn);

                    //open connection
                    conn.Open();

                    //execute the SQLCommand
                    SqlDataReader dr = cmd.ExecuteReader();

                    int val = 0;
                    //check if there are records
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            DetailProduk c = new DetailProduk();
                            c.IDProduk = dr.GetInt32(0);
                            c.Total = dr.GetInt32(1);
                            c.NamaProduk = dr.GetString(2);
                            c.HargaRP = dr.GetString(3);
                            c.Kuantitas = dr.GetInt32(4);
                            c.TotalRP = dr.GetString(5);
                            cc.Add(c);
                        }
                    }
                    //close data reader
                    dr.Close();

                    //close connection
                    conn.Close();

                    Session["ProdukFinal"] = cc;
                }
                Session["Supermarket"] = "Lotte Mart";
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