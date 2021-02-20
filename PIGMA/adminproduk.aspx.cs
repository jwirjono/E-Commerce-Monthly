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
            datab.DataBelanjaSet(40722, "Salmon Teriyaki", "Makanan", 63500, "AdminContent/Salmon Teriyaki.png", 30, 30);
            datab.DataBelanjaSet(40723, "Yakiniku Shortplate", "Makanan", 55500, "AdminContent/Yakiniku Shortplate.png", 40, 20);
            datab.DataBelanjaSet(40724, "Daging Cincang", "Makanan", 30500, "AdminContent/Beef Bulgogi.png", 40, 20);
            datab.DataBelanjaSet(40724, "Daging Rendang", "Makanan", 40500, "AdminContent/Beef Bulgogi.png", 40, 20);
            datab.DataBelanjaSet(40724, "Daging Giling", "Makanan", 20500, "AdminContent/Beef Bulgogi.png", 40, 20);

            gridObject.DataSource = datab.ListDetailProduk;
            gridObject.DataBind();

        }
        protected void chkRef_Click(object sender, EventArgs e)
        {

        }
        
    }
}