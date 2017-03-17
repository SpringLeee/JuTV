using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Text;

namespace JuTV.API
{
    public class HttpHelper
    {
        public static string GetJson(string url)
        {
            WebClient wc = new WebClient();
            byte[] bResponse = wc.DownloadData(url);
            string strResponse = Encoding.ASCII.GetString(bResponse);
            return strResponse;
            
        }
    }
}