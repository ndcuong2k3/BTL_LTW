document.addEventListener("DOMContentLoaded", function () {
    // Lấy các phần tử cần thiết từ DOM
    const passwordInput = document.getElementById("password");
    const reenterPasswordInput = document.getElementById("reEnterPassword");
    const matchMessage = document.getElementById("password-match-message");





    // Xử lý sự kiện khi người dùng nhập liệu
    passwordInput.addEventListener("input", checkPasswordMatch);
    reenterPasswordInput.addEventListener("input", checkPasswordMatch);

    // Hàm kiểm tra sự khớp giữa mật khẩu và nhập lại mật khẩu
    function checkPasswordMatch() {
        const password = passwordInput.value;
        const reenterPassword = reenterPasswordInput.value;

        console.log("Password:", password, "Re-enter Password:", reenterPassword);

        if (password === reenterPassword) {
            matchMessage.textContent = "Mật khẩu khớp.";
            matchMessage.style.color = "green";
        } else {
            matchMessage.textContent = "Mật khẩu không khớp.";
            matchMessage.style.color = "red";
        }
    }
});

function checksdt() {
    //var phoneNumberInput = document.getElementById("phoneNumber").value;
    //var tbao = document.getElementById("checkRegister");
    //var regexPhoneNumber = /^0\d{9}$/;
    //if (!regexPhoneNumber.test(phoneNumberInput)) {
    //    tbao.innerHTML = "SDT k hop le";
    //    return false;
    //}

    //var matkhau = document.getElementById("password").value;
    //var regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{3,}$/;
    //if (!regex.test(matkhau)) {
    //    tbao.innerHTML = "Mau khau yeu";
       
    //    return false;
    //}

    /*return true;*/
}
