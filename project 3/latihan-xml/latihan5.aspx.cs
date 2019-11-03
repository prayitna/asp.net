using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Xml;
using System.Text;
using System.Collections.Specialized;

namespace project_3.latihan_xml
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            XmlDocument xmlDoc = new XmlDocument();            
            string URI = "http://localhost:81/latihan-xml/latihan5-hasil.aspx";
            string Method = "POST";
            string Param = "user=00311001&password=tes&ip=192.168.0.1&host=kuspc&app=latihan";
            using (WebClient client = new WebClient())
            {
                client.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";
                string result = client.UploadString(URI, Method, Param);
                xmlDoc.LoadXml(result);
            }
            XmlNodeList nodes = xmlDoc.DocumentElement.SelectNodes("/data");
            Label1.Text = "Result: " + nodes[0].SelectSingleNode("result").InnerText;
            Label1.Text += "<br>Info: " + nodes[0].SelectSingleNode("INFO").InnerText;
            
            if (nodes[0].SelectSingleNode("result").InnerText == "True")
            {
                Session["id"] = "00311001";
            }
        }
    }
}