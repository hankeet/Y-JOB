using App_manager.DAO;
using App_manager.IBLL;
using App_manager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_manager.BLL
{
  public  class XueShengXinXiService:BaseService<XueShengXinXi>,IXueShengXinXiService
    {
        public override void SetCurrentDal()
        {
            CurrentDal = new XueShengXinxiDao();
        }
    }
}
