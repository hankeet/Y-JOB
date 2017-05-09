
using App_manager.DAO;
using App_manager.IDAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_manager.DalFactory
{
   public class DbSession:IDbSession
    {
        public IXueShengXinXiDao XueShengXinxi
        {
            get { return new XueShengXinxiDao(); }
        }
        public IGongZuoXinXiDao GongZuoXinXi
        {
            get { return new GongZuoXinXiDao(); }
        }
        public IShangJiaXinXiDao ShangJiaXinXi
        {
            get { return new ShangJiaXinXiDao(); }
        }
        public int SaveChanges()
        {
            return DbContextFactory.GetCurrentDbContext().SaveChanges();
        }
    }
}
