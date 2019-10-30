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


namespace project_3.latihan03
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string dbconnstring = "Data Source=DESKTOP-52BJLFO\\SQLEXPRESS;Initial Catalog=dbUser;Integrated Security=True";
            try
            {
                SqlConnection dbconn = new SqlConnection(dbconnstring);
                string sql = "select * from tr_unit";
                SqlDataAdapter da = new SqlDataAdapter(sql, dbconn);
                da.Fill(ds, "data");
                Label1.Text = "Berhasil koneksi ke database";
            }
            catch
            {
                Label1.Text = "Error connecting database!";
            }

            XmlDataDocument doc = new XmlDataDocument(ds);
            doc.Save(MapPath("~/latihan03/tr_unit.xml"));
            Xml1.Document = doc;

            XslTransform transform = new XslTransform();
            transform.Load(MapPath("~/latihan03/style.xslt"));
            Xml1.Transform = transform;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}