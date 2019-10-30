using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;

namespace project_3.latihan2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = "";
            string desc = "";
            string gender = "";
            double price = 0;
            int stock = 0;
            int  index = 0;
            Label1.Text = "";
            string dataXML = "<data>\n";
            // Baca URL
            string urlStock = "http://localhost/stock.xml";
            XmlTextReader reader = new XmlTextReader(urlStock);
            // Proses
            while (reader.Read())
            {
                switch (reader.NodeType)
                {
                    case XmlNodeType.Element:
                        if (reader.Name== "product")
                        {
                            id = "";
                            desc = "";
                            gender = "";
                            price = 0;
                            stock = 0;
                        }
                        switch (reader.Name[0])
                        {
                            case 'd':
                                index = 1;
                                break;
                            case 'i':
                                index = 2;
                                break;
                            case 'g':
                                index = 3;
                                break;
                            case 'p':
                                index = 4;
                                break;
                            case 's':
                                index = 5;
                                break;
                            default:
                                index = 0;
                                break;
                        }
                        break;
                    case XmlNodeType.Text:
                        switch (index)
                        {
                            case 1:
                                desc = reader.Value;
                                break;
                            case 2:
                                id = reader.Value;
                                break;
                            case 3:
                                gender = reader.Value;
                                break;
                            case 4:
                                price =  Convert.ToDouble( reader.Value);
                                break;
                            case 5:
                                stock = Convert.ToInt32( reader.Value);
                                break;
                        }
                        break;
                    case XmlNodeType.EndElement:
                        if (index == 5)
                        {
                            dataXML += "<item id=\"" +  id + "\" desc=\"" + desc + "\" stok=\"" + stock + "\" price=\"" + price+"\"/>\n";
                            Label1.Text += "<br>ID: " + id + " : " + desc + " Stok:" + stock + " Price:" + price;
                            index = 0;
                        }
                        break;
                }
            }


            // Simpan ke file
            dataXML += "</data>";
            string aDataFile = MapPath("~/latihan01/data.xml");
            File.WriteAllText(aDataFile, dataXML);
            

        }
    }
}