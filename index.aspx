<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BTL_LTW_G15.index" %>
<%@ Import Namespace="BTL_LTW_G15" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <link href="index.css" rel="stylesheet" />
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
        <img src="resource/images/banner_core.png" alt="Banner"/>
        <!-- <img src="image/banner2.png" alt="Banner" class="active"> -->
    </div>

    <%--<div id="peoplecount" runat="server">Số người đăng nhập: </div>--%>

    <div class="target">
        <p id="target-title"> sứ mệnh của chúng tôi</p>
        <hr>
        <p id="target-content">
            “saigonchildren giúp trẻ em và thanh thiếu niên có hoàn cảnh khó
            khăn ở Việt Nam phát triển hết tiềm năng của mình thông qua nền tảng giáo dục chất lượng và phù hợp với nhu
            cầu”
        </p>
    </div>

    <div class="news">
        <p id="news-title"> Tin tức nổi bật</p>
        <hr>
        <div class="news-container">
            <div class="news-1">
                <fieldset>
                    <img src="resource/images/news1.png" alt="News">
                    <p class="title-news">
                        Phòng vi tính “vượt sông” đến với trường Tiểu học Phương Phú 2
                    </p>
                    <input type="button" value="XEM THÊM" class="button" id="btnXemthem1" onclick="window.location.href='Chitiettintuc.aspx?ID=1'">
                </fieldset>
            </div>

            <div class="news-2">
                <fieldset>
                    <img src="resource/images/news2.png" alt="News">
                    <p class="title-news">
                        Trung thu đủ đầy, niềm vui trọn vẹn cho trẻ em Đồng Nai
                    </p>
                    <input type="button" value="XEM THÊM" class="button" id="btnXemthem2"  onclick="window.location.href='Chitiettintuc.aspx?ID=2'">

                </fieldset>
            </div>

            <div class="news-3">
                <fieldset>
                    <img src="resource/images/news3.png" alt="News">
                    <p class="title-news">
                        Lần đầu đi thăm nông trại cùng các bạn nhỏ Cao Bằng
                    </p>
                    <input type="button" value="XEM THÊM" class="button"onclick="window.location.href='Chitiettintuc.aspx?ID=3'">
                </fieldset>
            </div>

            <div class="news-4">
                <fieldset>
                    <img src="resource/images/news4.png" alt="News">
                    <p class="title-news">
                        Mở thêm phòng học vi tính mới cho học sinh trường Tiểu học Kinh Cùng
                    </p>
                    <input type="button" value="XEM THÊM" class="button" onclick="window.location.href='Chitiettintuc.aspx?ID=4'">
                </fieldset>
            </div>

        </div>

    </div>

    <div class="project">
        <p id="project-title"> Chương trình nổi bật</p>
        <hr/>
        <div class="project-container">
            <div class="project-1">
                <fieldset>
                    <img class="img-project" src="resource/images/project1.png" alt="Project1"/>
                    <p class="title-project">
                        Chương trình học bổng phát triển trẻ em
                    </p>
                    <input type="button" value="XEM THÊM" class="button" onclick="window.location.href='CTChuongTrinh.aspx?ID=1'"/>
                </fieldset>
            </div>

            <div class="project-2">
                <fieldset>
                    <img src="resource/images/project2.jpg" alt="Project2"/>
                    <p class="title-project">
                        Chương trình xây dựng trường học
                    </p>
                    <input type="button" value="XEM THÊM" class="button" onclick="window.location.href='CTChuongTrinh.aspx?ID=2'"/>
                </fieldset>
            </div>

            <div class="project-3">
                <fieldset>
                    <img src="resource/images/project3.jpg" alt="Project3"/>
                    <p class="title-project">
                        Chương trình đào tạo nghề và kĩ năng
                    </p>
                    <input type="button" value="XEM THÊM" class="button" onclick="window.location.href='CTChuongTrinh.aspx?ID=3'"/>
                </fieldset>
            </div>

            <div class="project-1">
                <fieldset>
                    <img src="resource/images/project4.jpg" alt="Project4"/>
                    <p class="title-project">
                        Chương trình giáo dục đặc biệt
                    </p>
                    <input type="button" value="XEM THÊM" class="button" onclick="window.location.href='CTChuongTrinh.aspx?ID=4'"/>
                </fieldset>
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
