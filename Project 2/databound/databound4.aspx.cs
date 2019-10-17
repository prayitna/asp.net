using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_2.databound
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        protected void btnCari_Click(object sender, EventArgs e)
        {
            gvUnit.Visible = true;
        }

        protected void fvUnit_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            txtUnit.Text = e.Values["unit_name"].ToString();
            gvUnit.DataBind();
        }
    }
}