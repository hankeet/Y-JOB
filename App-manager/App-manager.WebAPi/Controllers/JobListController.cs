using App_manager.BLL;
using App_manager.IBLL;
using App_manager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace App_manager.WebAPi.Controllers
{
    public class JobListController : ApiController
    {
        IGongZuoXinXiService jobservice = new GongZuoXinXiService();
    
       
        public List<GongZuoXinXi> JobList()
        {
            List<GongZuoXinXi> gongzuos = new List<GongZuoXinXi>();
            IQueryable<GongZuoXinXi> gongzuo = jobservice.Get(u => true);
            var data = gongzuo.ToList();

            return data;
        }
    }
}
