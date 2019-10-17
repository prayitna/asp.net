using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1.databind
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        protected void btnNew_Click(object sender, EventArgs e)
        {
            sdsUser.InsertParameters[0].DefaultValue = txtUserID.Text;
            sdsUser.InsertParameters[1].DefaultValue = txtUserNAme.Text;
            sdsUser.InsertParameters[2].DefaultValue = ddlUnit.SelectedValue;
            sdsUser.InsertParameters[3].DefaultValue = txtPassword.Text;
            sdsUser.InsertParameters[4].DefaultValue = cbAktif.Checked.ToString();

            sdsUser.Insert();
        }
    }
}