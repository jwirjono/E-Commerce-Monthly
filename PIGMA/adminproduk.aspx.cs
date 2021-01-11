using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PIGMA.Classes;

namespace PIGMA
{
    public partial class adminproduk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataProduk datab = new DataProduk();
            datab.DataBelanjaSet(40721, "Beef Bulgogi", "Makanan", 53500, "AdminContent/Beef Bulgogi.png", 20, 20);
            datab.DataBelanjaSet(40721, "Beef Bulgogi", "Makanan", 53500, "AdminContent/Beef Bulgogi.png", 30, 30);
            datab.DataBelanjaSet(40721, "Beef Bulgogi", "Makanan", 53500, "AdminContent/Beef Bulgogi.png", 40, 20);
            gridObject.DataSource = datab.ListDetailProduk;
            gridObject.DataBind();

        }
        protected void chkRef_Click(object sender, EventArgs e)
        {

        }
        protected void btnComplete_Click(object sender, EventArgs e)
        {
            DataProduk datab = new DataProduk();
            foreach (GridViewRow gvrow in gridObject.Rows)
            {
                CheckBox cb = (CheckBox)gvrow.FindControl("chkStats");
                if (cb.Checked == true)
                {
                    Label lblid = (Label)gvrow.FindControl("lblID");
                    Label lblnama = (Label)gvrow.FindControl("lblNamaProduk");
                    Label lblkuantitas = (Label)gvrow.FindControl("lblKuantitas");
                    Label lblharga = (Label)gvrow.FindControl("lblHarga");
                    datab.DataBelanjaSet(40721, "Beef Bulgogi", "Makanan", 53500, "AdminContent / Beef Bulgogi.png", 40, 30);
                }
            }

            if (datab.ListDetailProduk.Count == 0)
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

            }
        }
    }
}