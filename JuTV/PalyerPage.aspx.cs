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
    
    
    public partial class PalyerPage : System.Web.UI.Page
    {
        public string link = string.Empty;
        public Models.bbUserInfo_data UserInfo = new Models.bbUserInfo_data();
        protected void Page_Load(object sender, EventArgs e)
        {
            link = Request["link"] +"&wsTime="+ Request["wsTime"];
            string roomid=Request["roomid"];
            string res = HttpHelper.GetJson(bilibiliApi.zhuboInfo.Replace("@1",roomid));
            UserInfo= JsonConvert.DeserializeObject<Models.bbUserInfo>(res).data;
           
        }
    }
}