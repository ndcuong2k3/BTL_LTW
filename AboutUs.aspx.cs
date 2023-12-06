using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_G15
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session[Global.USERNAME] as string;

            System.Web.UI.HtmlControls.HtmlGenericControl para = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("loguser");
            para.InnerHtml = a;
        }
    }
}