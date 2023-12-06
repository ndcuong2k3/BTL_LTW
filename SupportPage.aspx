<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupportPage.aspx.cs" Inherits="BTL_LTW_G15.SupportPage" %>
<%@ Import Namespace="BTL_LTW_G15" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hỗ trợ đóng góp</title>
    <link href="SupportPage.css" rel="stylesheet" />
     <script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function () {
            // Kiểm tra trạng thái lưu trữ trong localStorage
            var selectedPaymentMethod = localStorage.getItem('selectedPaymentMethod');

            // Nếu không có phương thức thanh toán nào đã được lưu trữ, mặc định hiển thị "Qua ngân hàng"
            if (!selectedPaymentMethod) {
                selectedPaymentMethod = 'bank-card';
            }

            // Hiển thị bảng thông tin tương ứng với phương thức thanh toán được chọn
            showPaymentInfo(selectedPaymentMethod);
        });

        function showPaymentInfo(paymentMethod) {
            // Ẩn tất cả các bảng thông tin trước khi hiển thị
            var allTables = document.getElementsByClassName('payment-info');
            for (var i = 0; i < allTables.length; i++) {
                allTables[i].style.display = 'none';
            }

            // Hiển thị bảng thông tin tương ứng với phương thức thanh toán được chọn
            var selectedTable = document.getElementById(paymentMethod + '-info');
            if (selectedTable) {
                selectedTable.style.display = 'block';

                // Lưu trạng thái phương thức đã chọn vào localStorage
                localStorage.setItem('selectedPaymentMethod', paymentMethod);
            }
        }

        function submitDonation() {
            // Lấy thông tin thanh toán từ các ô input
            var cardNumber = document.getElementById('card-number').value;
            var expiryDate = document.getElementById('expiry-date').value;
            var securityCode = document.getElementById('security-code').value;
            var responsibilityCheckbox = document.getElementById('responsibility-checkbox').checked;

            // Kiểm tra xem tất cả thông tin đã được nhập đúng chưa
            if (cardNumber && expiryDate && securityCode && responsibilityCheckbox) {
                // Thực hiện xử lý ủng hộ, có thể gửi thông tin đến máy chủ ở đây
                alert('Thông tin về sự ủng hộ đã được gửi qua email. Xin chân thành cảm ơn!');
            } else {
                alert('Vui lòng điền đầy đủ thông tin thanh toán và chấp nhận trách nhiệm.');
            }
        }

        document.addEventListener("DOMContentLoaded", function () {
            var projects = document.querySelectorAll('.project-container > div');
            var prevButton = document.getElementById('prev-button');
            var nextButton = document.getElementById('next-button');

            var currentIndex = 0;

            function showCurrentProject() {
                
                projects.forEach(function (project, index) {
                    project.style.display = (index >= currentIndex && index < currentIndex + 2) ? 'block' : 'none';
                });        

            }

            nextButton.addEventListener('click', function () {
                event.preventDefault();

                currentIndex = (currentIndex + 1) % projects.length;
                showCurrentProject();
            });

            prevButton.addEventListener('click', function () {
                event.preventDefault();

                currentIndex = (currentIndex - 1 + projects.length) % projects.length;
                showCurrentProject();
            });

            // Hiển thị dự án đầu tiên khi trang web được tải
            showCurrentProject();
        });

     </script>
</head>
<body>
     <form id="form1" runat="server">
        <div class="menu">
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
        </div>

        <div class="banner">
            <img src="resource/images/banner_core.png" alt="Banner"/>
        </div>

        <div class="project">
            <p class="project-title">Các dự án của chúng tôi</p>
            <hr/>
            <div class="project-container">
                <div class="project-1">
                    <img src="resource/images/project1.jpg" alt="News"/>
                    <h3>Chương trình học bổng phát triển trẻ em</h3>
                    <p>
                        Giáo dục có thể giúp trẻ em nghèo phát triển khả năng và có khởi đầu công bằng hơn. Tuy nhiên, vẫn còn nhiều trẻ em Việt Nam có ít cơ hội học tập và có nguy cơ bỏ học do nghèo đói và khó khăn cũng như các vấn đề về sức khỏe, địa lý, rào cản kiến thức và khuyết tật..
                    </p>
                    <input type="button" value="Tìm hiểu thêm" class="button"/>
                </div>

                <div class="project-2">
                    <img src="resource/images/project2.jpg" alt="News"/>
                    <h3>Chương trình đào tạo nghề và kĩ năng</h3>
                    <p>
                        Saigonchildren dùng giáo dục làm phương cách để hỗ trợ trẻ em có hoàn cảnh khó khăn thoát nghèo. Khẳng định tầm quan trọng của giáo dục nghề nghiệp cho trẻ em và thanh thiếu niên có hoàn cảnh khó khăn, Chương Trình Đào Tạo Nghề và Kĩ Năng đã ra đời trên tinh thần đó.
                    </p>
                    <input type="button" value="Tìm hiểu thêm" class="button"/>
                </div>

                <div class="project-3">
                    <img src="resource/images/project1.jpg" alt="News"/>
                    <h3>Chương trình học bổng phát triển trẻ em</h3>
                    <p>
                        Giáo dục có thể giúp trẻ em nghèo phát triển khả năng và có khởi đầu công bằng hơn. Tuy nhiên, vẫn còn nhiều trẻ em Việt Nam có ít cơ hội học tập và có nguy cơ bỏ học do nghèo đói và khó khăn cũng như các vấn đề về sức khỏe, địa lý, rào cản kiến thức và khuyết tật..
                    </p>
                    <input type="button" value="Tìm hiểu thêm" class="button"/>
                </div>

                <div class="project-4">
                    <img src="resource/images/project2.jpg" alt="News"/>
                    <h3>Chương trình đào tạo nghề và kĩ năng</h3>
                    <p>
                        Saigonchildren dùng giáo dục làm phương cách để hỗ trợ trẻ em có hoàn cảnh khó khăn thoát nghèo. Khẳng định tầm quan trọng của giáo dục nghề nghiệp cho trẻ em và thanh thiếu niên có hoàn cảnh khó khăn, Chương Trình Đào Tạo Nghề và Kĩ Năng đã ra đời trên tinh thần đó.
                    </p>
                    <input type="button" value="Tìm hiểu thêm" class="button"/>
                </div>
            </div>
            <div class="button-container">
                <button type="button" id="prev-button">&lt;</button>
                <button type="button" id="next-button">&gt;</button>
            </div>
        </div>


        <div class="project">
            <p class="project-title"> Phương thức gây quỹ</p>
            <hr/>
            <div class="fundraising-methods">
                <p id="bank-card" onclick="showPaymentInfo('bank-card')">Qua ngân hàng</p>
                <p id="credit-card" onclick="showPaymentInfo('credit-card')">Qua thẻ tín dụng</p>
                <p id="momo" onclick="showPaymentInfo('momo')">Qua ví Momo</p>
            </div>

            <div class="fundraising">
                <div class="fundraising-info">
                    <div id="bank-card-info" class="payment-info">
                        <p><b>Tên Tài Khoản</b>: SaiGonChildren</p>
                        <p><b>Số Tài Khoản</b>: 1788788788</p>
                        <p><b>Ngân hàng</b>: MB Bank</p>
                        <p><b>Nội dung chuyển khoản:</b></p>
                        <p>
                            Nội dung chuyển khoản bao gồm: Họ và tên + Số điên thoại + Tên dự án bạn muốn tham gia chuyển khoản
                            <br/>
                            <i>(VD: NguyenVanA-0123456789-Hocbongphattrientreem)</i>
                        </p>
                    </div>
                </div>

                <div class="fundraising-info">

                    <div id="credit-card-info" class="payment-info">
                        <h3>Thông tin thanh toán</h3>
                        <p><b>Số thẻ:</b> <input type="number" id="card-number" placeholder="Nhập số thẻ" /></p>
                        <p>
                            <b>Ngày hết hạn:</b>
                            <input type="datetime" id="expiry-date" placeholder="MM/YY" style="width: 100px;" />
                            <br /><br /><b>Mã bảo mật:</b>
                            <input type="text" id="security-code" placeholder="CVV" style="width: 80px;" />
                        </p>
                        <p>
                            <input type="checkbox" id="responsibility-checkbox" />
                            <label for="responsibility-checkbox">Tôi chịu trách nhiệm hoàn toàn sau khi ủng hộ.</label>
                        </p>
                        <button type="button" id="donate-button" onclick="submitDonation()">Ủng hộ</button>
                    </div>
                </div>

                <div class="fundraising-info">
                    <div id="momo-info" class="payment-info">
                        <h3>Quét mã dưới đây để thanh toán</h3>
                        <img src="resource/images/qr_momo.png" alt="Mã QR"/>
                    </div>
                </div>

             </div>

        <div class="footer">
            <div class="column-1">
                <ul>
                    <li><a href="index.aspx" class="footer-item">Trang chủ</a></li>
                    <li><a href="ChuongTrinh.aspx" class="footer-item">Chương trình</a></li>
                    <li><a href="SupportPage.aspx" class="footer-item">Hỗ trợ đóng góp</a></li>
                    <li><a href="Tintuc.aspx" class="footer-item">Tin tức</a></li>
                    <li><a href="AboutUs.aspx" class="footer-item">Về chúng tôi</a></li>
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
    </div>
    </form>
</body>
</html>
