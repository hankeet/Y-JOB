using App_manager.BLL;
using App_manager.IBLL;
using App_manager.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.SessionState;

namespace App_manager.WebAPi
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler,IRequiresSessionState
    {
        IGongZuoXinXiService jobservice = new GongZuoXinXiService();
        IXueShengXinXiService xuesheng = new XueShengXinXiService();
        IShangJiaXinXiService bservice = new ShangJiaXinXiService();
        public void ProcessRequest(HttpContext context)
        {

            string path = context.Request["action"].ToString();
            context.Response.ContentType = "text/plain";
            if (path == "JobMain")
            {
                string id = context.Request["id"].ToString();
                GongZuoXinXi js= JobMain(int.Parse(id));
                
        
                context.Response.Write(new JavaScriptSerializer().Serialize(js));
            }
            if(path== "JobList")
            {
                List<GongZuoXinXi> gongzuos = JobList();
                context.Response.Write(new JavaScriptSerializer().Serialize(gongzuos));
            }
            if(path== "weekjob")
            {
                List<GongZuoXinXi> gongzuos = WeekJob();
                context.Response.Write(new JavaScriptSerializer().Serialize(gongzuos));
            }
          
            if (path == "studentlogin")
            {
                string name = context.Request["name"].ToString();
                string pwd = context.Request["pwd"].ToString();
                XueShengXinXi dd = loginStudent(name, pwd);
                if (dd == null)
                {
                    context.Response.Write("no");
                }
                context.Session["user"] = dd;
                XueShengXinXi user = (XueShengXinXi)context.Session["user"];
                context.Response.Write(new JavaScriptSerializer().Serialize(user));
            }
            if (path == "MyHome")
            {
                XueShengXinXi user = (XueShengXinXi)context.Session["user"];
                context.Response.Write(new JavaScriptSerializer().Serialize(user));
            }
            if (path == "businesslogin")
            {
                string name = context.Request["name"].ToString();
                string pwd = context.Request["pwd"].ToString();
                ShangJiaXinXi dd = loginBusiness(name, pwd);
                if (dd == null)
                {
                    context.Response.Write("no");
                }



                context.Response.Write(new JavaScriptSerializer().Serialize(dd));


            }

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
        public GongZuoXinXi JobMain(int id)
        {
            IQueryable<GongZuoXinXi> gongzuo = jobservice.Get(u => u.id == id);
            GongZuoXinXi gong = gongzuo.FirstOrDefault();
            return gong;
        }
        public List<GongZuoXinXi> JobList()
        {
            List<GongZuoXinXi> gongzuos = new List<GongZuoXinXi>();
            IQueryable<GongZuoXinXi> gongzuo = jobservice.Get(u => true);
            var data = gongzuo.ToList();

            return data;
        }

        public List<GongZuoXinXi> WeekJob()
        {
            List<GongZuoXinXi> gongzuos = new List<GongZuoXinXi>();
            IQueryable<GongZuoXinXi> gongzuo = jobservice.Get(u =>u.zhouMoJianZhi=="是");
            var data = gongzuo.ToList();

            return data;
        }
        public XueShengXinXi loginStudent(string name, string pwd)
        {
            IQueryable<XueShengXinXi> userinfo = xuesheng.Get(u => u.name == name && u.pass == pwd);

            XueShengXinXi newxue = userinfo.FirstOrDefault();
            return newxue;
        }
        public ShangJiaXinXi loginBusiness(string name, string pwd)
        {
            IQueryable<ShangJiaXinXi> userinfo = bservice.Get(u => u.gongSi == name && u.pass == pwd);

            ShangJiaXinXi shangjia = userinfo.FirstOrDefault();
          


            return shangjia;
        }
    }
}