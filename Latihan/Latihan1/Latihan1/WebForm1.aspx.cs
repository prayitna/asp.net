using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latihan1
{
    public partial class WebForm1 : System.Web.UI.Page
    {



        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            if (txtNama.Text != "" && txtPassword.Text != "")
            {
                lblInfo.Text = "Selamat datang " + txtNama.Text;
            }
            else
            {
                lblInfo.Text = "";
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}