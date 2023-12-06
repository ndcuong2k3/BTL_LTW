<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BTL_LTW_G15.AboutUs" %>
<%@ Import Namespace="BTL_LTW_G15" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Về chúng tôi</title>
    <link href="AboutUs.css" rel="stylesheet" />
</head>
<body>
    <nav class="menu">
        <a href="index.aspx"><img src="resource/images/logo.png" alt="Logo" id="logo"/></a>
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

    <div class="banner">
        <img src="resource/images/banner_CT.jpg" alt="Banner"/>
    </div>

    <div class="title_AboutUs">
        <h1 class="ptitle">Tầm nhìn, Sứ mệnh và Giá trị</h1>
        <nav class="nav">
            <div class="nav-wrapper">
                <div class="col">
                    <a href="index.html" class="breadcrumb">Trang chủ ></a>
                    
                    <a href="AboutUs.aspx" class="breadcrumb">Về chúng tôi></a>
                   
                    <p class="breadcrumb_active">Tầm nhìn, Sứ mệnh và Giá trị</p>   
                </div>
            </div>
        </nav>
    </div>

     <div class="content_center">
        <div class="right_content">
            <div class="content_CT">
                <p><span style="font-family: georgia, palatino, serif;"><strong>Saigon Children’s Charity CIO (saigonchildren)</strong></span>&nbsp;được thành lập năm 1992 nhằm giúp trẻ em Việt Nam có hoàn cảnh khó khăn được tiếp cận giáo dục và có sự khởi đầu tốt hơn trong cuộc sống. saigonchildren chỉ hoạt động tại Việt Nam và mọi hoạt động của tổ chức gắn liền với cam kết hỗ trợ trẻ em vượt qua những rào cản về kinh tế, địa lý, kiến thức và những khiếm khuyết để đến trường.</p>
                <p><span style="color: #00ccff;"><strong><span style="font-family: arial, helvetica, sans-serif;">Sứ mệnh của saigonchildren</span></strong></span></p>
                <p><span style="color: #00ccff;"><em><span style="font-family: arial, helvetica, sans-serif;">“saigonchildren giúp trẻ em và thanh thiếu niên có hoàn cảnh khó khăn ở Việt Nam phát triển hết tiềm năng của mình thông qua giáo dục có chất lượng và phù hợp với nhu cầu”</span></em></span></p>
                <p><span style="color: #00ccff;"><strong><span style="font-family: arial, helvetica, sans-serif;">Phương châm hoạt động</span></strong></span></p>
                <p>Chúng tôi quan niệm trẻ em có hoàn cảnh khó khăn có quyền được hỗ trợ để phát triển tiềm năng của mình. Chúng tôi tin rằng khi tập trung hỗ trợ nhu cầu về giáo dục của những em có hoàn cảnh khó khăn nhất, chúng tôi sẽ mang đến những thay đổi tích cực cho các em.  Hiệu quả công việc được đo lường bằng số lượng trẻ em được chúng tôi hỗ trợ đến trường, số lượng trẻ em tốt nghiệp phổ thông, vào đại học và ra trường có việc làm.</p>
                <p><span style="font-family: arial, helvetica, sans-serif; color: #00ccff;">Từ sự khởi đầu đó, chúng tôi tuân thủ những nguyên tắc sau:</span></p>
                <p>
                    <ul>
                        <li>Giúp đỡ những em có nhu cầu về giáo dục cao nhất</li>
                        <li>Khuyến khích sự tự lập ở các em và tránh  tạo ra sự lệ thuộc</li>
                        <li>Chúng tôi không thay thế trách nhiệm của cha mẹ, chính quyền và chính bản thân các em</li>
                    </ul>
                </p>
            </div>
        </div>

     </div>

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
                Tel: +84 28 3930 3502 <br>
                Fax: +84 28 3930 3503
            </p>

            <p>Đóng góp ý kiến: <a href="GopY.aspx">Góp ý</a></p>
        </div>
    </footer>
   
</body>
</html>
