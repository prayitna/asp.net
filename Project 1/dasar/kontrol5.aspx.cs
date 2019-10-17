using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_1.dasar
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void mnuSatu_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Convert.ToInt16(mnuSatu.SelectedItem.Value);
            mvSatu.ActiveViewIndex = index;
        }
    }
}