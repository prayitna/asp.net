using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1.dasar
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calBulan_SelectionChanged(object sender, EventArgs e)
        {
            lblInfo.Text = "Hari dipilih :" + calBulan.SelectedDate.ToString("dd/M/yyyy");
        }
    }
}