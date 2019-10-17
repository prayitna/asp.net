using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_2.databound
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void sdsUnit_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.AffectedRows == 0)
            {
                lblInfo.Text = "Tidak dapat mengupdate data";
            } else
            {
                lblInfo.Text = "Data berhasil di update";
            }
        }
    }
}