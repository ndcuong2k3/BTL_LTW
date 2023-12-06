<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="BTL_LTW_G15.RegisterPage" %>
<%@ Import Namespace="BTL_LTW_G15" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang đăng ký</title>
    <link href="RegisterPage.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" onsubmit="return checksdt();">
        <div class="menu">
    <a href="index.html" ><img src="resource/images/logo.png" alt="Logo" id="logo"/></a>
    <a href="ChuongTrinh.aspx" class="menu-item">Chương trình</a>
    <a href="SupportPage.aspx" class="menu-item">Hỗ trợ đóng góp</a>
    <a href="Tintuc.aspx" class="menu-item">tin tức</a>
    <a href="AboutUs.aspx" class="menu-item">về chúng tôi</a>
    
             <%var a = Session[Global.USERNAME] as string;
            if (a.Equals("guest"))
            { %>
                 <a href="SignInPage.aspx" class="menu-item">đăng nhập</a>
       <%}
           else
           { %>
           <span id="loguser" runat="server" ></span>
            <a href="SignInPage.aspx"><img id="exit" src="resource/images/exit-ic.png"/></a>
        <%} %>
</div>
<center>
    <div class="login-container">
        <h2>Đăng kí</h2>
        <form >
            <div class="input-group">
                <label for="userName">Tên đăng nhập:</label>
                <input type="text" placeholder="Tên đăng nhập" id="userName" name="userName" required/>
            </div>
            <div class="input-group">
                <label for="password">Mật khẩu:</label>
                <input type="password" placeholder="Mật khẩu" id="password" name="password" required/>
            </div>
            <div class="input-group">
                <label for="reEnterPassword">Nhập lại mật khẩu:</label>
                <input type="password" placeholder="Nhập lại mật khẩu" id="reEnterPassword" name="reEnterPassword" required/>
                <span id="password-match-message" style="color: red;"></span>
            </div>
            <div class="input-group">
                <label for="email">Email:</label>
                <input type="email" placeholder="Email" id="email" name="email" required/>
            </div>
            <div class="input-group">
                <label for="phoneNumber">Số điện thoại:</label>
                <input type="number" placeholder="Số điện thoại" id="phoneNumber" name="phoneNumber" required/>
            </div>
            <div class="input-group">
                <label for="address">Địa chỉ:</label>
                <input type="text" placeholder="Địa chỉ" id="address" name="address" required/>
            </div>
            <asp:Button runat="server" CssClass="Button" id="registerButton" OnClick="SignUp_Click" Text="Đăng kí" />
            <p id="checkRegister" runat="server"></p>
            <button type="button" id="login-account" onclick="window.location.href='SignInPage.aspx';">Đăng nhập</button>
        </form>
        <left>
            <br /><p>Nếu có bất cứ thắc mắc gì về việc đăng kí liên hệ với chúng tôi qua:</p>
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
    </form>      
    
    <script src ="RegisterPage.js">
    </script>

</body>
</html>
