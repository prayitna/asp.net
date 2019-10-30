using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Xsl;


namespace project_3.dataxml
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click1(object sender, EventArgs e)
        {
            XslTransform t = new XslTransform();
            t.Load(MapPath("~/dataxml/style2.xslt"));
            Xml1.Transform = t;
            
         }
    }
}