<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chitiettintuc.aspx.cs" Inherits="BTL_LTW_G15.Chitiettintuc" %>
<%@ Import Namespace="BTL_LTW_G15" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi tiết tin tức</title>
    <link href="Chitiettintuc.css" rel="stylesheet" cache-control="no-cache" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="menu">
        <a href="index.aspx"> <img src="resource/images/logo.png" alt="Logo" id="logo"/></a>
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
            <a href="SessionCancel.aspx"><img id="exit" src="resource/images/exit-ic.png"/></a>
        <%} %>
        </nav>



        <img id="Banner" src="image/logo.png" runat="server"/>

        <div class="dh" style="margin-left:50px" runat="server">
            <a href="index.aspx" style="text-decoration:none;font-size:20px;" runat="server">Trang chủ ></a>
            <a href="Tintuc.aspx" style="text-decoration:none;font-size:20px" runat="server">Tin tức </a>
           <%-- <a href="Chitiettintuc.aspx" style="text-decoration:none;font-size:20px" runat="server">Chi tiết tin tức</a>--%>
        </div>

        <p id="Title" runat="server"></p>
        <div class="image-container">
            <img id="Image" src="image/logo.png" runat="server"/>
        </div>
        

        <p id="Content" runat="server"></p>

        
    <footer class="footer">
        <div class="column-1">
            <ul>
                <li><a href="index.aspx" class="footer-item">Trang chủ</a></li>
                <br>
                <li><a href="ChuongTrinh.aspx" class="footer-item">Chương trình</a></li>
                <br>
                <li><a href="SupportPage.aspx" class="footer-item">Hỗ trợ đóng góp</a></li>
                <br>
                <li><a href="Tintuc.aspx" class="footer-item">Tin tức</a></li>
                <br>
                <li><a href="AboutUs.aspx" class="footer-item">Về chúng tôi</a></li>
                <br>
            </ul>
        </div>

        <div class="column-2">
            <p>Liên hệ</p>
            <p>
                Saigon Children's Charity CIO
                59 Trần Quốc Thảo, phường 7
                Quận 3, Hồ Chí Minh
            </p>
            <p>
                Tel: +84 28 3930 3502 <br/>
                Fax: +84 28 3930 3503
            </p>

            <p>Đóng góp ý kiến: <a href="GopY.aspx">Góp ý</a></p>
        </div>
    </footer>
        
        
    </form>
    
</body>
</html>
