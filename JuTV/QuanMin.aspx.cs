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
    public partial class QuanMin : System.Web.UI.Page
    {
      
        public List<Models.QuanMin.QmbannerItem> ListBanner = new List<Models.QuanMin.QmbannerItem>();
        public List<Models.QuanMin.VideoItem> ListVideo = new List<Models.QuanMin.VideoItem>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string bannerRes = HttpHelper.GetJson(API.QuanMinApi.banner).Replace("-","_"); ;
            ListBanner = JsonConvert.DeserializeObject<Models.QuanMin.QMBannerData>(bannerRes).app_focus;

            string videores = HttpHelper.GetJson(API.QuanMinApi.zhuboList);
            ListVideo = JsonConvert.DeserializeObject<Models.QuanMin.VideoData>(videores).data;
          
        }
    }
}