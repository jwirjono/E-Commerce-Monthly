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
            public int Total { get; set; }
            public string TotalRP { get; set; }
        }
        public class DetailReceipt
        {
            public int IDReceipt { get; set; }
            public string AlamatPengiriman { get; set; }
            public string WaktuPengiriman { get; set; }
            public string Status { get; set; }
            public int Total { get; set; }
            public string TotalRP { get; set; }
        }
        public List<DetailReceipt> ListDetailReceipt { get; set; }
        public List<DetailProduk> ListDetailProduk { get; set; }
        


        public DataBelanja()
        {
            this.ListDetailProduk = new List<DetailProduk>();
            this.ListDetailReceipt = new List<DetailReceipt>();
        }
        public void SetReceipt(string alamat, int harga)
        {
            DetailReceipt det = new DetailReceipt();
            Random r = new Random();
            int genRand = r.Next(100000, 999999);
            det.IDReceipt = 100 + genRand;
            det.AlamatPengiriman = alamat;
            det.Total = harga;
            det.TotalRP = "Rp. " + harga.ToString();
            ListDetailReceipt.Add(det);
        }

        

        public void Increase(int id)
        {
            foreach(DetailProduk item in ListDetailProduk)
            {
                if(item.IDProduk == id)
                {
                    item.Kuantitas += 1;
                }
            }

        }
        public void Decrease(int id)
        {
            foreach (DetailProduk item in ListDetailProduk)
            {
                if (item.IDProduk == id)
                {
                    item.Kuantitas -= 1;
                }
            }

        }
        public void DataBelanjaSet(int id,string nama, int kuantitas,int harga)
        {
            bool IsDuplicate = false;
            if(kuantitas != 0)
            {
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
                    det.Total = kuantitas * harga;
                    det.TotalRP = "Rp. " + (kuantitas * harga).ToString();
                    ListDetailProduk.Add(det);
                }
            }
            
        }

    }
}