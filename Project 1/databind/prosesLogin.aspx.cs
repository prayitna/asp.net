using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1.databind
{
    public partial class prosesLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.PreviousPage != null)
            {
                TextBox userID = (TextBox)PreviousPage.FindControl("txtUserID");
                if (userID != null)
                {
                    lblInfo.Text = "Hasil:" + userID.Text;
                } else
                {
                    lblInfo.Text = "Hasil : kosong";
                }
            } else
            {
                Response.Redirect("~/databind/login.aspx");
            }
        }
    }
}