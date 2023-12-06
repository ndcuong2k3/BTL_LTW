using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_G15
{
    public partial class SessionCancel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var listpc = Application[Global.PeopleCount] as List<string>;
            listpc.Remove(Session[Global.USERNAME].ToString());
            Session[Global.USERNAME] = "guest";
            Session.Clear();
            Session.Abandon();
            Response.Redirect("SignInPage.aspx");
        }
    }
}