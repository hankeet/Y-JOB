using App_manager.BLL;
using App_manager.Common;
using App_manager.DAO;
using App_manager.IBLL;
using App_manager.IDAO;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Mvc;

namespace App_manager.WebAPi.Controllers
{
    public class loginController : Controller
    {
        IXueShengXinXiService xuesheng = new XueShengXinXiService();
        IShangJiaXinXiService bservice = new ShangJiaXinXiService();
        [HttpGet]
        public string loginStudent(string name, string pwd)
        {
            var userinfo = xuesheng.Get(u => u.name == name && u.pass == pwd).FirstOrDefault();
            if (userinfo == null)
            {
                return "用户名账号密码错误";
            }
            Session["username"] = userinfo.name;

            return "ok";
        }
        [HttpPost]
        public string loginBusiness(string name,string pwd)
        {
            var userinfo = bservice.Get(u => u.gongSi == name && u.pass == pwd).FirstOrDefault();
            if (userinfo == null)
            {
                return "用户名账号密码错误";
            }
            Session["username"] = userinfo.gongSi;

            return "ok";
        }
        public string VerificationCode()
        {
            string verificationCode = Security.CreateVerificationText(6);
            Bitmap _img = CreateVerification.CreateVerificationImage(verificationCode, 160, 30);
            _img.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
            TempData["VerificationCode"] = verificationCode.ToUpper();
            return null;
        }
    }
}
