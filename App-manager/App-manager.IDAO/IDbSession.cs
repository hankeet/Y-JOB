using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App_manager.IDAO
{
  public  interface IDbSession
    {        
        IXueShengXinXiDao XueShengXinxi { get; }
        IGongZuoXinXiDao GongZuoXinXi { get; }
        int SaveChanges();  
    }
}
