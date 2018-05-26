using Emlak.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace KitapDegerlendirmeSistemi.core
{
    public class KitapAramaActivity
    {
        private DbBaglanti db = new DbBaglanti();

        public DataTable getKitaplar(string _kitap)
        {
            return db.DataTableGetir("SELECT ID,ADI FROM KITAP WHERE ADI LIKE '%" + _kitap + "%' ");
        }
    }
}