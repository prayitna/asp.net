using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Project_1.databind
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> strProfesi = new List<string>();
            strProfesi.Add("Administrator");
            strProfesi.Add("Sys Admin");
            strProfesi.Add("Operator");
            strProfesi.Add("Guest");
            ddlSebagai.DataSource = strProfesi;
            ddlSebagai.DataBind();

    
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            

        }
    }
}