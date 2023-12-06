<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tintuc.aspx.cs" Inherits="BTL_LTW_G15.Tintuc1" %>
<%@ Import Namespace="BTL_LTW_G15" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang tin tức</title>
    <link href="Tintuc.css" rel="stylesheet" />
</head>
<body>
    
          <nav class="menu">
            <a href="index.aspx" ><img src="resource/images/logo.png" alt="Logo" id="logo"/></a>
            <a href="ChuongTrinh.aspx" class="menu-item">Chương trình</a>
            <a href="SupportPage.aspx" class="menu-item">Hỗ trợ đóng góp</a>
            <a href="Tintuc.aspx" class="menu-item">tin tức</a>
            <a href="AboutUs.aspx" class="menu-item">về chúng tôi</a>
            <%--<a href="SignInPage.aspx" class="menu-item">đăng nhập</a>--%>
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

        <div class="search-bar">
            <form action="Tintuc.aspx" method="post">
                <label for="txtTintuc">Tên tin tức</label>
                <input type="text" name="txtTintuc" id="txtTintuc"/ value="<%=Request.Form["txtTintuc"] %>"/>
                <input type="submit" name="btnTim" value="Tìm kiếm" id="btnTim" onclick="test()"/>
            </form>
        </div>

        
        <div class="banner">
            <img src="resource/images/banner1.png" alt="Banner"/>
            <!-- <img src="image/banner2.png" alt="Banner" class="active"> -->
        </div>
        
        <div class="news">

            <p id="news-title">Tin tức</p>
            <hr />
            <div class="news-container">
                <% 
                    var lstTintuc = Application[BTL_LTW_G15.Global.DANHSACHTINTUC] as List<Tintuc>;
                    if (Request.Form["txtTintuc"] != null && !string.IsNullOrWhiteSpace(Request.Form["txtTintuc"])){
                        lstTintuc = lstTintuc.FindAll(p => p.Title.IndexOf
                        (Request.Form["txtTintuc"], StringComparison.CurrentCultureIgnoreCase) >= 0);
                    }
                    foreach (var p in lstTintuc)
                    {
                %>
                <div>
                    <fieldset>
                    <img src="<%=p.ImageUrl %>" alt="<%=p.Title %>" />
                    <a href="Chitiettintuc.aspx?ID=<%=p.ID %>" class="title-news"><%=p.Title %></a>
                    </fieldset>
                </div>

                <%}; %>
                
            </div>
        </div>

    <%var b = Session[Global.USERNAME] as string;
        if (b.Equals("admin")){
            %>
        <hr />
        <center>
        <form method="post" action="WebForm1.aspx">
            <input type="submit" id="btnThem" value="Thêm tin tức" />
        </form>
        </center>

    <%} %>
    <div class="footer">
        <div class="column-1">
            <ul>
                <li><a href="index.aspx" class="footer-item">Trang chủ</a></li> <br>
                <li><a href="ChuongTrinh.aspx" class="footer-item">Chương trình</a></li> <br>
                <li><a href="SupportPage.aspx" class="footer-item">Hỗ trợ đóng góp</a></li> <br>
                <li><a href="Tintuc.aspx" class="footer-item">Tin tức</a></li> <br>
                <li><a href="AboutUs.aspx" class="footer-item">Về chúng tôi</a></li> <br>
            </ul>
        </div>

        <div class="column-2">
            <p>Liên hệ</p>
            <p>Saigon Children's Charity CIO
                59 Trần Quốc Thảo, phường 7
                Quận 3, Hồ Chí Minh</p>
            <p>Tel: +84 28 3930 3502 <br/>
                Fax: +84 28 3930 3503</p>

            <p>Đóng góp ý kiến: <a href="GopY.aspx">Góp ý</a></p>
        </div>

    </div>
  <%--  <script>
            function test() { 
           
            var b = document.getElementById("txtTintuc");
                if (b.value.trim().length === 0) {
                    event.preventDefault();
                alert("Bạn phải nhập dữ liệu");
                }
            }
        </script>--%>
</body>
</html>
