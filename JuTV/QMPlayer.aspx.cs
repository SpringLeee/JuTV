using JuTV.API;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JuTV
{
    public partial class QMPlayer : System.Web.UI.Page
    {
        

        public Models.QuanMin.UserData UserInfo = new Models.QuanMin.UserData();
        protected void Page_Load(object sender, EventArgs e)
        {
            string uid=Request["uid"];
            string res = HttpHelper.GetJson(API.QuanMinApi.videoinfo.Replace("@uid",uid));
            UserInfo = JsonConvert.DeserializeObject<Models.QuanMin.UserData>(res);
            UserInfo.video = API.QuanMinApi.live.Replace("@uid",uid);
           


        }
    }
}