<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BTL_LTW_G15.WebForm1" %>
<%@ Import Namespace="BTL_LTW_G15" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #form1{
            border:2px solid black;
            width:400px;
            height:auto;
            border-radius:15px;
            text-align:left;
        }
        .body{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        #form1 p, #form1 input{
            margin-left:50px;
        }

        #btnAdd {
    padding: 5px;
    padding-left: 10px;
    padding-right: 10px;
    margin-left: 105px;
    background-color: rgba(0,0,0,0);
    border-radius: 10px;
    font-weight: bold;
    margin-bottom: 20px;
}

#btnAdd:hover {
        background-color: black;
        color: white;
        cursor: pointer;
}
#logo {
    width: 120px;
}

.menu {
    background-color: black;
    display: flex;
    text-align: center;
    justify-content: center;
   /* position:fixed;
    width:100%;*/
}


    .menu a {
        text-decoration: none;
        color: white;
        text-transform: uppercase;
        display: inline-block;
        align-items: center;
        position: relative;
        flex: 1;
        font-family: 'Courier New', Courier, monospace;
        font-size: larger;
        font-weight: bolder;
    }

.menu-item {
    padding-top: 15px;
}


#logo {
    padding-top: 5px;
}

a:hover {
    background-color: #474646;
}

#loguser {
    text-transform: uppercase;
    color: white;
    text-align: center;
    align-items: center;
    position: relative;
    flex: 1;
    font-family: 'Courier New', Courier, monospace;
    font-size: larger;
    font-weight: bolder;
    margin-top: 17px;
}



/* .banner img {
    width: 1520px;
    height: 450px;
    display: none;
}

.banner {
    overflow: hidden;
}

.banner img.active {
    display: block;
} */

.banner img {
    max-width:100%;
    height:auto;
    margin-top: 50px;
    margin-bottom: 20px;
}


.footer {
    display: grid;
    grid-template-columns: 30% 70%;
    padding-left: 300px;
    padding-right: 300px;
    gap: 50px;
    background-color: black;
}

ul {
    list-style: none;
}

    ul li a {
        color: white;
        text-decoration: none;
    }

.column-2 p {
    color: white;
}

        @media only screen and (max-width:768px) {

            .menu {
                flex-direction: column;
                align-items: center;
            }

                .menu a {
                    width: 100%;
                }

            .footer {
                grid-template-columns: 100%;
                padding-left: 0;
                padding-right: 0;
            }

            /*.footer a {
            margin-left: 150px;
        }*/

            .footer-item {
                /*margin-left: 160px;*/
            }

            .footer p {
                text-align: center;
            }

            ul {
                text-align: center;
                align-content: center;
            }

            .banner img {
                max-width: auto;
                height: auto;
            }



            /* .news-container {
        grid-template-columns: 100%;
    }

    .project-container {
        grid-template-columns: 100%;
    } */
        }

    </style>

    <script src="ThemChuongTrinh.js"></script>
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

    <br /> <br />

   
   <center>
    <form id="form1" runat="server" onsubmit="return Kiemtra()" >
        <p style="font-weight:bold; font-size:20px;">Thêm bài viết</p>
        <p>Tiêu đề bài viết <br /> </p> <input type="text" name="title" id="title" runat="server" required />
        <p>Nội dung bài viết</p> <br /> <input type="text" name="content" id="content"  runat="server" requỉred/>
        <p>MST</p> <br /> <input type="text" name="mst" id="mst" runat="server" required/>
        <p>Hình ảnh banner</p> <br /><input type="file" name="banner" id="banner" runat="server"  required />
        <p>Hình ảnh bài viết</p> <br /><input type="file" name="image" id="image" runat="server" required/> <br /> <br />
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Thêm" />
        
        
    </form>

       <br /> <br />
    </center>
    

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
