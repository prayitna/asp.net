using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1.dasar
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.PreviousPage != null) {
                TextBox userID = (TextBox)PreviousPage.FindControl("txtUserID");
                if (userID != null)
                {
                    lblInfo.Text = "Hasil:" + userID.Text;
                }
            }
        }
    }
}