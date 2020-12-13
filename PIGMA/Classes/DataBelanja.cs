using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PIGMA.Classes
{
    public class DataBelanja
    {
        public class DetailProduk
        {
            public int IDProduk { get; set; }
            public string NamaProduk { get; set; }
            public int Kuantitas { get; set; }
            public int Harga { get; set; }
            public string HargaRP { get; set; }
        }
        public List<DetailProduk> ListDetailProduk { get; set; }
        
        
        public DataBelanja()
        {
            this.ListDetailProduk= new List<DetailProduk>();
        }
        
        public void DataBelanjaSet(int id,string nama, int kuantitas,int harga)
        {
            bool IsDuplicate = false;
            if (ListDetailProduk != null)
            {
                for (int i = 0; i < ListDetailProduk.Count(); i++)
                {
                    if (ListDetailProduk[i].IDProduk == id)
                    {
                        IsDuplicate = true;
                        ListDetailProduk[i].Kuantitas = kuantitas;
                        break;
                    }
                }
            }
            if (!IsDuplicate)
            {
                DetailProduk det = new DetailProduk();
                det.IDProduk = id;
                det.NamaProduk = nama;
                det.Kuantitas = kuantitas;
                det.Harga = harga;
                det.HargaRP = "Rp. " + harga.ToString();
                ListDetailProduk.Add(det);
            }
        }

    }
}