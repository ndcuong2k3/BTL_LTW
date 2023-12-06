<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignInPage.aspx.cs" Inherits="BTL_LTW_G15.SignInPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang đăng nhập</title>
    <link href="SignInPage.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div class="menu">
        <a href="index.html" ><img src="resource/images/logo.png" alt="Logo" id="logo" /></a>
        <a href="ChuongTrinh.aspx" class="menu-item">Chương trình</a>
        <a href="SupportPage.aspx" class="menu-item">Hỗ trợ đóng góp</a>
        <a href="Tintuc.aspx" class="menu-item">tin tức</a>
        <a href="AboutUs.aspx" class="menu-item">về chúng tôi</a>
        <a href="SignInPage.aspx" class="menu-item">đăng nhập</a>
    </div>
    <center>
        <div class="login-container">
            <h2>Đăng nhập</h2>
            <form>
                <div class="input-group">
                    <label for="username">Tên đăng nhập:</label>
                    <input type="text" id="username" name="username" required value="<%=Request.Form.Get("username") %>"/>
                </div>
                <div class="input-group">
                    <label for="password">Mật khẩu:</label>
                    <input type="password" id="password" name="password" required/>
                </div>
                <asp:Button runat="server" type="submit" id="signInButton" OnClick="SignIn" Text="Đăng nhập" />
                <p id="KTdangnhap" runat="server"></p>
                <button type="button" id="create-account" onclick="window.location.href='RegisterPage.aspx';">Tạo tài khoản</button>
            </form>
            <left>
                <br /><p>Quên mật khẩu? <a><i>Ấn vào đây</i></a></p>
                <br /><p>Nếu có bất cứ thắc mắc gì về việc đăng nhập liên hệ với chúng tôi qua:</p>
                <br />Số điện thoại: 0123456789
                <br />Email: abcd@gmail.com
            </left>
        </div>
    </center>
    <div class="footer">
        <div class="column-1">
            <ul>
                <li><a href="index.aspx" class="footer-item">Trang chủ</a></li>
                <br/>
                <li><a href="ChuongTrinh.aspx" class="footer-item">Chương trình</a></li>
                <br/>
                <li><a href="SupportPage.aspx" class="footer-item">Hỗ trợ đóng góp</a></li>
                <br/>
                <li><a href="Tintuc.aspx" class="footer-item">Tin tức</a></li>
                <br/>
                <li><a href="AboutUs.aspx" class="footer-item">Về chúng tôi</a></li>
                <br/>
            </ul>
        </div>

        <div class="column-2">
            <p>Liên hệ</p> <br />
            <p>
                Saigon Children's Charity CIO
                59 Trần Quốc Thảo, phường 7
                Quận 3, Hồ Chí Minh
            </p> <br />
            <p>
                Tel: +84 28 3930 3502 <br/>
                Fax: +84 28 3930 3503
            </p> <br />

            <p>Đóng góp ý kiến: <a href="GopY.aspx">Góp ý</a></p>
        </div>
    </div>
        </div>
    </form>
    <script src="SignInPage.js">

    </script>

</body>
</html>
