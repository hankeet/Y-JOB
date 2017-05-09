using App_manager.BLL;
using App_manager.IBLL;
using App_manager.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Web;
using System.Web.Http;

namespace App_manager.WebAPi.Controllers
{
   
    public class JobController : ApiController
    {
        // GET: Job
        JianZhiEntities js = new JianZhiEntities();
        IGongZuoXinXiService jobservice = new GongZuoXinXiService();
        [HttpPost]
        public string PushJob([FromBody]string pushjob)
        {
         
            DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(GongZuoXinXi));
            GongZuoXinXi job = new GongZuoXinXi();
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(pushjob));
            GongZuoXinXi obj = (GongZuoXinXi)ser.ReadObject(ms);
            job.zhaopinbiaoti = obj.zhaopinbiaoti;
            job.gongZuoLeiXing = obj.gongZuoLeiXing;
            job.chengShiQuYu = obj.chengShiQuYu;
            job.gongZuoDiZhi = obj.gongZuoDiZhi;
            job.kaiShiShiJian = obj.kaiShiShiJian;
            job.jieZhiShiJian = obj.jieZhiShiJian;
            job.lianXiFangShi = obj.lianXiFangShi;
            job.sex = obj.sex;
            job.xinChouShuLiang = obj.xinChouShuLiang;
            job.zhaoPinRenShu = obj.zhaoPinRenShu;
            job.zhouMoJianZhi = obj.zhouMoJianZhi;
            jobservice.Add(obj);
            return "ok";
        }
   [HttpGet]
        public GongZuoXinXi JobMain(int id)
        {
            IQueryable<GongZuoXinXi> gongzuo = jobservice.Get(u => u.id == id);
            GongZuoXinXi gong = gongzuo.FirstOrDefault();
            return gong;
        }
        [HttpGet]
        public List<GongZuoXinXi> JobList(string gongZuoLeiXing)
        {
            List<GongZuoXinXi> gongzuos = new List<GongZuoXinXi>();
            IQueryable<GongZuoXinXi> gongzuo = jobservice.Get(u =>true);
          var data=  gongzuo.ToList();
            
            return data;
        }
    }
}