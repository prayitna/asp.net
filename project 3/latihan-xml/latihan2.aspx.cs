using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using System.Xml.Xsl;

namespace project_3.latihan_xml
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSImpan_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string dbconnstring = "Data Source=DESKTOP-52BJLFO\\SQLEXPRESS;Initial Catalog=dbUser;Integrated Security=True";
            try
            {
                SqlConnection dbconn = new SqlConnection(dbconnstring);
                string sql = "select * from tr_unit";
                SqlDataAdapter da = new SqlDataAdapter(sql, dbconn);
                da.Fill(ds, "data");
                
                XmlDataDocument doc = new XmlDataDocument(ds);
                doc.Save(MapPath("~/latihan-xml/unit2.xml"));

                Xml1.Document = doc;

                XslTransform transform = new XslTransform();
                transform.Load(MapPath("~/latihan-xml/style.xslt"));
                Xml1.Transform = transform;
                Label1.Text = "Proses selesai!";
            }
            catch
            {
                Label1.Text = "Error connecting database!";
            }

        }
    }
}