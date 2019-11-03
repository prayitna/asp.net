using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace project_3.latihan_xml
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string data = "";
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load("http://localhost/unit.xml");
            foreach (XmlNode node in xmlDoc.DocumentElement.ChildNodes)
            {
                data += node.Attributes["unit_id"].Value +
                    " : "+ node.Attributes["unit_name"].Value+"<br>";
                
            }
            Label1.Text = data;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string data = "";
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load("http://localhost/unit2.xml");         
            foreach (XmlNode node in xmlDoc.DocumentElement.ChildNodes)
            {
                data += node.SelectSingleNode("unit_id").InnerText +
                    " : " + node.SelectSingleNode("unit_name").InnerText + "<br>";
            }
            Label1.Text = data;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string data = "";
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load("http://localhost/rates.xml");
            foreach (XmlNode node in xmlDoc.DocumentElement.ChildNodes[2].ChildNodes[0].ChildNodes)
            {
                data += node.Attributes["currency"].Value +
                    " : " + node.Attributes["rate"].Value + "<br>";

            }
            Label1.Text = data;
        }
    }
}