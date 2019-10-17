using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_2.databound
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvUnit2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idx = Convert.ToInt32(e.CommandArgument.ToString());
            string unit_id = (string) gvUnit2.DataKeys[idx].Values[0];
            int posisi = (int) gvUnit2.DataKeys[idx].Values[1];
            switch (e.CommandName)
            {
                case "Up":
                    posisi--;
                    break;
                case "Down":
                    posisi++;
                    break;
            }
            sdsUnit2.UpdateParameters["unit_id"].DefaultValue = unit_id.ToString();
            sdsUnit2.UpdateParameters["posisi"].DefaultValue = posisi.ToString();
            sdsUnit2.Update();
        }
    }
}