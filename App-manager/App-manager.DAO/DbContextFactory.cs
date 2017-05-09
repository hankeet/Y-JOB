using App_manager.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace App_manager.DAO
{
   public class DbContextFactory
    {

        public static DbContext GetCurrentDbContext()
        {
            DbContext db = CallContext.GetData("DbContext") as DbContext;
            if (db == null)
            {
                db = new JianZhiEntities();
                CallContext.SetData("DbContext", db);
            }
            return db;
        }
    }
}
