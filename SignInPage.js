document.addEventListener("DOMContentLoaded", function () {
    const loginButton = document.querySelector("#form1 button[type=submit]");
    loginButton.addEventListener("click", function (event) {
        event.preventDefault(); // Ngăn chặn form submit để xử lý thông tin đăng nhập bằng JavaScript

        // Lấy giá trị từ các trường đăng nhập
        //const username = document.getElementById("userName").value;
        //const password = document.getElementById("password").value;

        //// Kiểm tra thông tin đăng nhập
        //if (checkLogin(username, password)) {
        //    // Nếu thông tin đăng nhập đúng, chuyển hướng hoặc thực hiện các thao tác khác
        //    alert("Đăng nhập thành công!");
        //    console.log("Attempting login with Username:", username, "Password:", password);

        //    window.location.href = "../SupportPage/SupportPage.aspx"; // Thay đổi đường dẫn tùy thuộc vào trang chính của bạn
        //} else {
        //    alert("Tên đăng nhập hoặc mật khẩu không đúng. Vui lòng thử lại.");
        //}
    });

    // Hàm kiểm tra thông tin đăng nhập
    function checkLogin(username, password) {
        // Thực hiện kiểm tra đăng nhập, có thể sử dụng API hoặc gửi yêu cầu đến server để kiểm tra
        // Trong ví dụ này, chỉ là một hàm giả định
        return mockCheckLogin(username, password);
    }

    // Hàm giả định kiểm tra đăng nhập
    function mockCheckLogin(username, password) {
        // Thực hiện kiểm tra bằng cách so sánh với một vài giá trị cứng
        return username === "admin" && password === "admin";
    }
});
