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
    public class RegistController : ApiController
    {
        IXueShengXinXiService userservice = new XueShengXinXiService();
        IShangJiaXinXiService bservice = new ShangJiaXinXiService();
        [HttpGet]
        public string Regist(string regist)
        {

            DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(XueShengXinXi));
            XueShengXinXi user = new XueShengXinXi();
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(regist));
            XueShengXinXi obj = (XueShengXinXi)ser.ReadObject(ms);
            string dd = obj.name;

            IQueryable<XueShengXinXi> query = userservice.Get(u => u.name == dd);

            if (query.Count() > 0)
            {
                return "用户名已经存在";

            }
            user.name = obj.name;
            user.pass = obj.pass;
            user.phone = obj.phone;
            userservice.Add(user);
            return "ok";
        }
        [HttpPost]
        public string RegistBusiness(string regist)
        {

            DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(ShangJiaXinXi));
            ShangJiaXinXi user = new ShangJiaXinXi();
            MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(regist));
            ShangJiaXinXi obj = (ShangJiaXinXi)ser.ReadObject(ms);
            string dd = obj.gongSi;

            IQueryable<ShangJiaXinXi> query = bservice.Get(u => u.gongSi == dd);

            if (query.Count() > 0)
            {
                return "用户名已经存在";

            }
            user.gongSi = obj.gongSi;
            user.pass = obj.pass;
            user.phone = obj.phone;
            user.fuZeRen = obj.fuZeRen;
            user.diZhi = obj.diZhi;
            user.leiXing = obj.leiXing;
            user.zhengJianHao = obj.zhengJianHao;
            bservice.Add(user);
            return obj.gongSi;
        }
    }
}