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
            public string NamaProduk { get; set; }
            public int Kuantitas { get; set; }
            public int Harga { get; set; }
        }
        public List<DetailProduk> ListDetailProduk { get; set; }
    }
}