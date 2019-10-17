using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Project_1.dasar
{


    public partial class WebForm7 : System.Web.UI.Page
    {
        bool isImage(string filename)
        {
            string ext = Path.GetExtension(filename).ToLower();
            switch (ext)
            {
                case ".gif":
                case ".jpg":
                case ".jpeg":
                case ".png":
                    return true;
                default:
                    return false;
            }
        }

        protected void Page_PreRender()
        {
            string strUpload = MapPath("~/dasar/images/");
            DirectoryInfo dir = new DirectoryInfo(strUpload);
            dlGambar.DataSource = dir.GetFiles();
            dlGambar.DataBind();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fuGambar.HasFile)
            {
                if (isImage(fuGambar.FileName)){
                    string strUpload = Path.Combine("~/dasar/images/", fuGambar.FileName);
                    strUpload = MapPath(strUpload);
                    fuGambar.SaveAs(strUpload);
                    Response.Write("File berhasil diupload!");
                }
            }
        }

    }
}