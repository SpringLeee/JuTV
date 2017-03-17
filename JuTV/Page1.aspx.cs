using JuTV.API;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace JuTV
{
    public partial class Page1 : System.Web.UI.Page
    {
        public List<Models.itemdata> ListData;
        public List<Models.item> ListBanner;
        protected void Page_Load(object sender, EventArgs e)
        {
          string res = HttpHelper.GetJson(bilibiliApi.zhibolist.Replace("@page","1"));
          string respage2 = HttpHelper.GetJson(bilibiliApi.zhibolist.Replace("@page", "2"));
          string respage3 = HttpHelper.GetJson(bilibiliApi.zhibolist.Replace("@page", "3"));
          ListData = JsonConvert.DeserializeObject<Models.bilibili>(res).data;
          ListData.AddRange(JsonConvert.DeserializeObject<Models.bilibili>(respage2).data);
          ListData.AddRange(JsonConvert.DeserializeObject<Models.bilibili>(respage3).data);

          string res1 = HttpHelper.GetJson(bilibiliApi.banner);
          ListBanner =  JsonConvert.DeserializeObject<Models.BannerData>(res1).data.banner;

         

        }
    }
}