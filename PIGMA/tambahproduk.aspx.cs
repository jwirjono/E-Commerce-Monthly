using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using PIGMA.Classes;

namespace PIGMA
{
    public partial class tambahproduk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ClientScript.GetPostBackEventReference(this, "");




        }
        public void addproduct(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection("Server=(localdb)\\MsSqlLocalDB;Database=Monthly;Integrated Security=true"))
            {

                var productID = Random.Equals(1, 100);
                var productName = namaproduk.Text;
                var category = kategori.SelectedValue;
                var partnerID = 0;
                var is_empty = 0;
                var max_pesan = maxpemesanan.Text;
                var keterangan = deskripsi.Text;
                var image_link = "AdminContent/Beef Bulgogi.png";
                var harga = hargasatuan.Text;
                var gambar = string.Empty;
                var totalBeli = 0;
                var totalView = 0;


                string query = @"insert into product values (@productid,
                                @productname,
                                @category,
                                @partnerid,
                                @is_empty,
                                @max_pesan,
                                @keterangan,
                                @image_link,
                                @harga,
                                @gambar,
                                @totalbeli,
                                @totalview)";



                ;
                //define the SqlCommand object
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@productid", productID);
                cmd.Parameters.AddWithValue("@productname", productName);
                cmd.Parameters.AddWithValue("@category", category);
                cmd.Parameters.AddWithValue("@partnerid", partnerID);
                cmd.Parameters.AddWithValue("@is_empty", is_empty);
                cmd.Parameters.AddWithValue("@max_pesan", max_pesan);
                cmd.Parameters.AddWithValue("@category", "25 May 2017");
                cmd.Parameters.AddWithValue("@productname", productName);
                cmd.Parameters.AddWithValue("@category", "25 May 2017");
                //open connection
                connection.Open();

                //execute the SQLCommand
                cmd.ExecuteNonQuery();
                connection.Close();
                //check if there are records


            }

        }
    }
}