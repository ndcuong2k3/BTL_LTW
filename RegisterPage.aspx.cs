using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTW_G15
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session[Global.USERNAME] as string;

            System.Web.UI.HtmlControls.HtmlGenericControl para = (System.Web.UI.HtmlControls.HtmlGenericControl)FindControl("loguser");
            para.InnerHtml = a;
            if (Request.QueryString["success"] == "true" && !IsPostBack)
            {
                ShowSuccessMessage("Đăng ký thành công!");
            }
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            string userName = Request.Form.Get("userName");
            string password = Request.Form.Get("password");
            string reEnterPassword = Request.Form.Get("reEnterPassword");
            string email = Request.Form.Get("email");
            string phoneNumber = Request.Form.Get("phoneNumber");
            string address = Request.Form.Get("address");

            // Kiểm tra tính hợp lệ của dữ liệu
            if (IsValidData(userName, password, email, phoneNumber, address, reEnterPassword))
            {
                int kt = 0;

                var users = Application[Global.USERLIST] as List<User>;

                // Kiểm tra xem tên đăng nhập và email đã tồn tại chưa
                foreach (User user in users)
                {
                    if (user.userName == userName)
                    {
                        kt = 1;
                        checkRegister.InnerHtml = "Tên đăng nhập đã tồn tại";
                    }
                    if (user.email == email)
                    {
                        kt = 1;
                        checkRegister.InnerHtml = "Email đã được đăng kí bởi 1 tài khoản khác";
                    }
                }

                if (kt == 0)
                {
                    // Thay đổi phần này để cập nhật danh sách người dùng
                    AddUserToApplication(userName, password, reEnterPassword, email, phoneNumber, address);

                    Response.Redirect("SignInPage.aspx");
                }
            }
        }

        private bool IsValidData(string userName, string password, string email, string phoneNumber, string address, string reEnterPassword)
        {
            // Kiểm tra tính hợp lệ của Email
            //if (!IsValidEmail(email))
            //{
            //    checkRegister.InnerHtml = "Email không hợp lệ";
            //    return false;
            //}

            //// Kiểm tra tính an toàn của Mật khẩu
            //if (!IsStrongPassword(password))
            //{
            //    checkRegister.InnerHtml = "Mật khẩu không đủ mạnh";
            //    return false;
            //}

            // Kiểm tra các trường khác tùy thuộc vào yêu cầu của bạn

            return true;
        }

        //private bool IsValidEmail(string email)
        //{
        //    // Hàm kiểm tra tính hợp lệ của Email bằng biểu thức chính quy
        //    return System.Text.RegularExpressions.Regex.IsMatch(email, @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
        //}

        //private bool IsStrongPassword(string password)
        //{
        //    // Hàm kiểm tra tính an toàn của Mật khẩu bằng biểu thức chính quy
        //    return password.Length >= 8 && System.Text.RegularExpressions.Regex.IsMatch(password, @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$");
        //}

        // Thêm người dùng vào danh sách trong Application
        private void AddUserToApplication(string userName, string password, string reEnterPassword, string email, string phoneNumber, string address)
        {
            //User newUser = new User(userName, password, reEnterPassword, email, phoneNumber, address);

            //ArrayList users = (ArrayList)Application["Users"];
            //users.Add(newUser);
            //Application["Users"] = users;

            var list = Application[Global.USERLIST] as List<User>;
            User user = new User(userName, password, reEnterPassword, email, phoneNumber, address);
            list.Add(user);
            Application[Global.USERLIST] = list;
        }

        private void ShowSuccessMessage(string message)
        {
            // Xử lý hiển thị thông báo thành công (ví dụ: có thể thêm vào HTML)
        }
    }
}
