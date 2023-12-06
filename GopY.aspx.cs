using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_G15
{
    public partial class GopY : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session[Global.USERNAME] as string;

            System.Web.UI.HtmlControls.HtmlGenericControl para = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("loguser");
            para.InnerHtml = a;
            //var lstComment = Application[Global.DANHSACHGOPY] as List<YKien>;
            //YKien yk = new YKien();
            //yk.message = Request.Form["comment"];
            //yk.date = DateTime.Now.ToString();
            //yk.userName = Session[Global.USERNAME].ToString();
            //lstComment.Add(yk);
            //Application[Global.DANHSACHGOPY] = lstComment;

        }

        protected void SendComment(object sender, EventArgs e)
        {
            var lstComment = Application[Global.DANHSACHGOPY] as List<YKien>;
            YKien yk = new YKien();
            yk.message = Request.Form["comment"];
            yk.date = DateTime.Now.ToString();
            yk.userName = Session[Global.USERNAME].ToString();
            lstComment.Add(yk);
            Application[Global.DANHSACHGOPY] = lstComment;
        }

        protected void DeleteComment(object sender, EventArgs e)
        {
            Button btnDelete = (Button)sender;
            string userNameToDelete = btnDelete.CommandArgument;

            var lstComments = Application[Global.DANHSACHGOPY] as List<YKien>;
            var commentToRemove = lstComments.FirstOrDefault(comment => comment.userName == userNameToDelete);

            if (commentToRemove != null)
            {
                lstComments.Remove(commentToRemove);
                Application[Global.DANHSACHGOPY] = lstComments;
            }

            // Cập nhật trang hoặc cập nhật container tin nhắn để phản ánh các thay đổi
            Response.Redirect(Request.RawUrl);
        }


    }
}