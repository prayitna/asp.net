using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_2.databound
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void btnPilih_Click(object sender, EventArgs e)
        {
            lblInfo1.Text = "Drop Down List: "+ ddlUser.SelectedValue + " : "+ddlUser.SelectedItem.Text;
            if ( rblUser.SelectedItem != null)
            lblInfo2.Text = "Radio Button List: " + rblUser.SelectedValue+ " : "+ rblUser.SelectedItem.Text;
            if (lbUser.SelectedItem != null)
            lblInfo3.Text = "ListBox: " + lbUser.SelectedValue + " : " + lbUser.SelectedItem.Text;
        }

        protected void ddlUser_TextChanged(object sender, EventArgs e)
        {
        
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            rblUser.SelectedIndex = 0;
            lbUser.SelectedIndex = 0;
        }
    }
}