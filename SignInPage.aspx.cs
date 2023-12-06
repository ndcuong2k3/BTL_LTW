using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_G15
{
    public partial class SignInPage : System.Web.UI.Page
    {
        ArrayList arrayList;
        private const string FailedLoginCountKey = "FailedLoginCount";
        protected void Page_Load(object sender, EventArgs e)
        {
            arrayList = (ArrayList)Application["Users"];
        }

        protected void SignIn(object sender, EventArgs e)
        {

            int failedLoginCount = GetFailedLoginCount();
            //string username = Request.Form.Get("userName");
            string username = Request.Form.Get("username");

            string password = Request.Form.Get("password");
            Console.WriteLine(username);

            if (AuthenticateUser(username, password))
            {   
              
                // Đăng nhập thành công
                ResetFailedLoginCount();
                KTdangnhap.InnerText = "Đăng nhập thành công.";
                var lst = Application[Global.PeopleCount] as List<string>;
                var dsnguoixem = Application[Global.PC] as List<Nguoixem>;
                Session[Global.USERNAME] = username; Session["password"] = password;
                if (Session[Global.State].Equals("gopy"))
                {
                    Response.Redirect("GopY.aspx");
                }
                if (!lst.Contains(Session[Global.USERNAME].ToString()))
                {
                    lst.Add(Session[Global.USERNAME].ToString());
                }
                Response.Redirect("index.aspx");

            }
            else
            {
                // Đăng nhập thất bại


                //KTdangnhap.InnerText = "Tên đăng nhập hoặc mật khẩu không đúng.";
                //KTdangnhap.InnerText = Convert.ToString(dem);
                failedLoginCount++;
                SaveFailedLoginCount(failedLoginCount);

                if (failedLoginCount >= 3)
                {
                    // Hiển thị cảnh báo khi đăng nhập sai 3 lần
                    KTdangnhap.InnerText = "Bạn đã nhập sai mật khẩu 3 lần. Hãy kiểm tra thông tin đăng nhập của bạn.";
                }
                else
                {
                    // Hiển thị thông báo thông thường khi đăng nhập thất bại
                    KTdangnhap.InnerText = "Tên đăng nhập hoặc mật khẩu không đúng.";
                }
            }
        }

        private bool AuthenticateUser(string username, string pass)
        {
            //// Lấy danh sách người dùng từ Application
            //ArrayList users = (ArrayList)Application["Users"];

            //// Kiểm tra xem người dùng có tồn tại và mật khẩu khớp không
            //foreach (User user in users)
            //{
            //    if (user.userName == username && user.password == password)
            //    {
            //        return true;
            //    }
            //}

            //return false;

            var list = Application[Global.USERLIST] as List<User>;
            foreach (User user in list)
            {
                if (user.userName.Equals(username) && user.password.Equals(pass))
                {
                    return true;
                }


            }
            return false;
        }

        private int GetFailedLoginCount()
        {
            if (Session[FailedLoginCountKey] == null)
            {
                return 0;
            }

            return (int)Session[FailedLoginCountKey];
        }

        private void SaveFailedLoginCount(int count)
        {
            Session[FailedLoginCountKey] = count;
        }

        private void ResetFailedLoginCount()
        {
            Session.Remove(FailedLoginCountKey);
        }
    }
}