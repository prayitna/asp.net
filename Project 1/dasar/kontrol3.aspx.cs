using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1.dasar
{
    public partial class WebForm3 : System.Web.UI.Page
    {


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            lblInfo.Text = "Selamat datang " + txtUserID.Text;
        }


    }
}