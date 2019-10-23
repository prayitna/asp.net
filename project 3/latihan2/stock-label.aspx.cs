using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace project_3.latihan
{
    public partial class stock1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string urlStock = "http://localhost/stock.xml";
            Label1.Text = "";
            XmlTextReader reader = new XmlTextReader(urlStock);
            while (reader.Read())
            {
                switch (reader.NodeType)
                {
                    case XmlNodeType.Element:
                        Label1.Text += "<" + reader.Name;
                        while (reader.MoveToNextAttribute()) // baca atribute jika ada
                            Label1.Text += " " + reader.Name + "='" + reader.Value + "'";
                        Label1.Text += ">";
                        break;
                    case XmlNodeType.Text:
                        Label1.Text += reader.Value;
                        break;
                    case XmlNodeType.EndElement:
                        Label1.Text += "</" + reader.Name + ">";
                        break;
                }
                
            }            
        }
    }
}