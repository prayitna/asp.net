using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace project_3.latihan_xml
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string aFile = "~/latihan-xml/unit.xml";
            string data = "<data>\n";
            foreach (GridViewRow row in gvUnit.Rows)
            {
                data += "<unit>\n";
                for (int i =0; i < gvUnit.Columns.Count ;i++)
                {
                    if (gvUnit.Columns[i].HeaderText != "")
                    {
                        data += "<" + gvUnit.Columns[i].HeaderText + ">";
                        data += row.Cells[i].Text;
                        data += "</" + gvUnit.Columns[i].HeaderText + ">";
                    }
                }
                data += "</unit>\n";
            }
            data += "</data>";
            data.Replace("&", "&amp;");
            data.Replace("<", "&lt;");
            data.Replace(">", "&gt;");
            File.WriteAllText(MapPath(aFile),data);
        }
    }
}