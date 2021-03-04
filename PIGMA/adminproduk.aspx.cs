using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PIGMA.Classes;
using System.Data.SqlClient;
using System.Data;

namespace PIGMA
{
    public partial class adminproduk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataProduk datab = new DataProduk();


            using (SqlConnection connection = new SqlConnection("Server=(localdb)\\MsSqlLocalDB;Database=Monthly;Integrated Security=true"))
            {
                string query = @"select p.product_id, p.product_name, c.category_name, p.price, p.image_link, p.total_beli, p.total_view 
    from Product p join Category c on p.category_id = c.category_id
                                     ";
                //define the SqlCommand object
                SqlCommand cmd = new SqlCommand(query, connection);

                //open connection
                connection.Open();

                //execute the SQLCommand
                SqlDataReader dr = cmd.ExecuteReader();
                var productID = 0;
                var productName = string.Empty;
                var category = string.Empty;
                var harga = 0;
                var gambar = string.Empty;
                var totalBeli = 0;
                var totalView = 0;
                //check if there are records
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        productID = dr.GetInt32(0);
                        productName = dr.GetString(1);
                        category = dr.GetString(2);
                        harga = dr.GetInt32(3);
                        gambar = dr.GetString(4);
                        totalBeli = dr.GetInt32(5);
                        totalView = dr.GetInt32(6);
                        datab.DataBelanjaSet(productID, productName, category, harga, gambar, totalBeli, totalView);

                    }
                }

            }


            gridObject.DataSource = datab.ListDetailProduk;
            gridObject.DataBind();

        }
        protected void chkRef_Click(object sender, EventArgs e)
        {

        }

    }
}