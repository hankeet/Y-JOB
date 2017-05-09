using App_manager.DalFactory;
using App_manager.IDAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Text;
using System.Threading.Tasks;

namespace App_manager.DalFactory
{
    public class DbSessionFactory
    {
        public static IDbSession GetCurrentDbSession()
        {
            IDbSession db = CallContext.GetData("IDbSession") as IDbSession;
            if (db == null)
            {
                db = new DbSession();
                CallContext.SetData("IDbSession", db);
            }
            return db;
        }
    }
}
