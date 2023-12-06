<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XoaGopY.aspx.cs" Inherits="BTL_LTW_G15.XoaGopY" %>
<%@ Import Namespace="BTL_LTW_G15" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="XoaGopY.css" rel="stylesheet" />
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
                            <%--<input type="text" id="usern" value="<%=yKien.userName %>" runat="server" />--%>
                            <span id="mess"><%=yKien.message %></span>
                           
                            
                        </fieldset>
        
                     <%}
                }%>
    </div>

    <hr />

        <div>
            <center>
                <form id="form1" method="post" runat="server">
                <input style="width:200px; height:20px;" type="text" name="txtComment" id="txtComment"  runat="server"/>
                    
                    <span id="tes" runat="server"></span>
                 <br />
                  <br />
                <asp:Button type="submit" runat="server" id="btnXoa" Text="Xóa" OnClick="btnXoa_Click" />

               </form>
               <%-- <form id="form1" method="post" runat="server">
                <select style="width:200px; height:20px;" id="ddlComments" runat="server">
                    <% var lstGopY = Application[Global.DANHSACH] as List<GopY>;
                        if (lstGopY != null)
                        {
                            foreach (var gopY in lstGopY)
                            {
                    %>
                                <option value="<%= gopY.comment %>"><%= gopY.comment %></option>
                   
                    <%      }
                        } %>
                </select>
    
                <br />
                <br />
    
                <asp:Button type="submit" runat="server" id="btnXoa" Text="Xóa" OnClick="btnXoa_Click" />
                </form>--%>

            </center>
        </div>




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
