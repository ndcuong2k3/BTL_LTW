using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_G15
{
    public partial class Chitiettintuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session[Global.USERNAME] as string;

            System.Web.UI.HtmlControls.HtmlGenericControl para = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("loguser");
            para.InnerHtml = a;
            int id = Convert.ToInt32(Request["ID"]);
            var lstCTTT = Application[Global.DANHSACHCTTT] as List<CTTintuc>;
            var cttt = lstCTTT.FirstOrDefault(item => item.ID == id);

            if (cttt != null)
            {
                System.Web.UI.HtmlControls.HtmlImage Banner = (System.Web.UI.HtmlControls.HtmlImage)FindControl("Banner");
                Banner.Src = cttt.BannerUrl;
                System.Web.UI.HtmlControls.HtmlImage Image = (System.Web.UI.HtmlControls.HtmlImage)FindControl("Image");
                Image.Src = cttt.ImageUrl;
                System.Web.UI.HtmlControls.HtmlGenericControl Title = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("Title");
                Title.InnerHtml = cttt.Title;
                System.Web.UI.HtmlControls.HtmlGenericControl Content = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("Content");
                Content.InnerHtml = cttt.Content;
            }
        }
    }
}