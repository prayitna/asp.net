using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_3.latihan_xml
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                string[] keys = Request.Form.AllKeys;
                if (Request.Form["ip"] == null)
                {
                    Response.Write("<data><result>False</result><INFO>Alamat IP harus disertakan</INFO></data>");
                }
                else if (Request.Form["host"] == null)
                {
                    Response.Write("<data><result>False</result><INFO>Host harus disertakan</INFO></data>");
                }
                else if (Request.Form["app"] == null)
                {
                    Response.Write("<data><result>False</result><INFO>Aplikasi harus disertakan</INFO></data>");
                }
                else if (Request.Form["user"] == null || Request.Form["password"] == null)
                {
                    Response.Write("<data><result>False</result><INFO>User dan Password harus disertakan</INFO></data>");
                }
                else
                {
                    Response.Write("<data><result>True</result><INFO>Login berhasil</INFO>");
                    for (int i = 0; i < keys.Length; i++)
                    {
                        Response.Write("<" + keys[i] + ">" + Request.Form[keys[i]] + "</" + keys[i] + ">");
                    }
                    Response.Write("</data>");
                }
            } else
            {
                Response.Write("<data><result>True</result><INFO>Sudah login sebagai "+Session["id"]+"</INFO></data>");
            }
        }
    }
}