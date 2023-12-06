<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GopY.aspx.cs" Inherits="BTL_LTW_G15.GopY" %>
<%@ Import Namespace="BTL_LTW_G15" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Góp ý</title>
    <link href="GopY.css" rel="stylesheet" />
    <script>
        
    </script>
</head>
<body>
    
     <div class="menu">
        <a href="index.aspx" ><img src="resource/images/logo.png" alt="Logo" id="logo" /></a>
        <a href="ChuongTrinh.aspx" class="menu-item">Chương trình</a>
        <a href="SupportPage.aspx" class="menu-item">Hỗ trợ đóng góp</a>
        <a href="Tintuc.aspx" class="menu-item">tin tức</a>
        <a href="AboutUs.aspx" class="menu-item">về chúng tôi</a>
      <%--  <a href="SignInPage.aspx" class="menu-item">đăng nhập</a>--%>
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
     </div>

     <div class="banner">
        <img src="resource/images/banner_core.png" alt="Banner"/>
        <!-- <img src="image/banner2.png" alt="Banner" class="active"> -->
     </div>

     <p id="title">DANH SÁCH ĐÓNG GÓP Ý KIẾN</p>
        
            
     <div class="message-container">
        <%var lstGopY = Application[Global.DANHSACHGOPY] as List<YKien>;
                if (lstGopY != null)
                {
                    foreach (var yKien in lstGopY)
                    {
        %>
                        <fieldset class="message">
                            <span id="name"><%=yKien.userName %></span> <span id="date"><%=yKien.date %></span> <br /> <br />
                            <span id="mess"><%=yKien.message %></span>
                        </fieldset>
        
                     <%}
                }%>
    </div>
    <br />
    <hr />
        <%if (Session[Global.USERNAME].Equals("guest"))
            {
                Session[Global.State] = "gopy";
                %>
                <center><p id="inf">Đăng nhập để bình luận</p></center> 
                <center><a id="signin" href="SignInPage.aspx">Đăng nhập ngay</a></center>
           <%}
               else
               {
          %> 
        <form id="form1" runat="server" method="post">
            <div id="cm-container">
                 <span id="titl2">Đóng góp ý kiến </span> <br /> <br />
                <input type="text" name="comment" id="comment" runat="server" required /> <br /> <br />
                <asp:Button runat="server" type="submit" id="signInButton" OnClick="SendComment" Text="Gửi ý kiến" />
            </div>
           
         </form>
       <%}


%>

    <%if (Session[Global.USERNAME].Equals("admin"))
        { %>
            <hr />
            <center>  
            <form action="XoaGopY.aspx" method="post">
                <input type="submit" name="btnXoa" value="Xóa góp ý" id="btnXoa" />
            </form>
            </center>
    <%} %>
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
    </div>
   
</body>
</html>
