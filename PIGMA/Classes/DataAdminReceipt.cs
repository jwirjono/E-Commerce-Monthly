using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PIGMA.Classes
{
    public class DataAdminReceipt
    {
        public class DetailProduk
        {
            public int IDProduk { get; set; }
            public string NamaProduk { get; set; }
            public int Kuantitas { get; set; }
            public string Satuan { get; set; }
            public int Harga { get; set; }
            public int Diskon { get; set; }
            public string DiskonRP { get; set; }
            public string HargaRP { get; set; }
            
            public int Total { get; set; }
            public string TotalRP { get; set; }
        }
        public class DetailReceipt
        {
            public int IDReceipt { get; set; }
            public string pembeli { get; set; }
            public string notelp { get; set; }
            public string Penjual { get; set; }
            public string AlamatPengiriman { get; set; }
            public string WaktuPengiriman { get; set; }
            public string Status { get; set; }
            public int Biayakardus { get; set; }
            public int TotalDiskon { get; set; }
            public int TotalBiayaPengiriman { get; set; }
            public int TotalHarga { get; set; }

        }
        public List<DetailReceipt> ListDetailReceipt { get; set; }
        public List<DetailProduk> ListDetailProduk { get; set; }



        public DataAdminReceipt()
        {
            this.ListDetailProduk = new List<DetailProduk>();
            this.ListDetailReceipt = new List<DetailReceipt>();
        }
        public void SetReceipt(string pembeli, string notelp,string penjual, string alamat,string tanggal,int harga, int diskon, int kardus, int pengiriman)
        {
            DetailReceipt det = new DetailReceipt();
            Random r = new Random();
            int genRand = r.Next(100000, 999999);
            det.pembeli = pembeli;
            det.notelp = notelp;
            det.Penjual = penjual;
            det.IDReceipt = 100 + genRand;
            det.AlamatPengiriman = alamat;
            det.WaktuPengiriman = tanggal;
            det.TotalDiskon = diskon;
            det.Biayakardus = kardus;
            det.TotalBiayaPengiriman = pengiriman;
            det.TotalHarga = harga;
            ListDetailReceipt.Add(det);

        }
        public void DataBelanjaSet(int id, string nama, int kuantitas, int harga, string satuan, int diskon)
        {
            bool IsDuplicate = false;
            if (kuantitas != 0)
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
                    det.Satuan = satuan;
                    det.Harga = harga;
                    det.Diskon = diskon;
                    det.DiskonRP = "Rp. " + diskon.ToString();
                    det.HargaRP = "Rp. " + harga.ToString();
                    det.Total = (kuantitas * harga) - diskon;
                    det.TotalRP = "Rp. " + ((kuantitas * harga) - diskon).ToString();
                    ListDetailProduk.Add(det);
                }
            }

        }

    }
}