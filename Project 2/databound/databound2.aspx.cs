using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_2.databound
{
    public partial class WebForm2 : System.Web.UI.Page
    {


        protected void Button1_Click(object sender, EventArgs e)
        {
            lblMaster.Text = "Master data " + gvUnit.SelectedRow.Cells[1].Text;
            lblMaster.Text += " : " + gvUnit.SelectedRow.Cells[2].Text;
        }

        protected void gvUnit_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int idx = Convert.ToInt32(e.CommandArgument.ToString());
                lblMaster.Text = "Master data " + gvUnit.DataKeys[idx].Value.ToString();
                lblMaster.Text += " : " + gvUnit.DataKeys[idx].Values[1].ToString();
            }
        }
    }
}