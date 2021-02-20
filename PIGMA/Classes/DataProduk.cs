using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PIGMA.Classes
{
    public class DataProduk
    {
        public class DetailProduk
        {
            public int IDProduk { get; set; }
            public string LinkGambar { get; set; }
            public string Kategori { get; set; }
            public string NamaProduk { get; set; }
            public int TotalView { get; set; }
            public int TotalBeli { get; set; }
            public int Harga { get; set; }
            public int totalproduk { get; set; }
        }
        public List<DetailProduk> ListDetailProduk { get; set; }

        public DataProduk()
        {
            this.ListDetailProduk = new List<DetailProduk>();
        }
        public void DataBelanjaSet(int id, string nama, string kategori, int harga, string linkgambar, int totalview, int totalbeli)
        {
            
            DetailProduk det = new DetailProduk();
            det.IDProduk = id;
            det.NamaProduk = nama;
            det.Kategori = kategori;
            det.Harga = harga;
            det.LinkGambar = linkgambar;
            det.TotalView = totalview;
            det.TotalBeli = totalbeli;
            int hitung =  + 1;
            ListDetailProduk.Add(det);
            det.totalproduk = hitung;
        }
    }
}