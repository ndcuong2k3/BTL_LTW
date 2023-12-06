function Kiemtra() {
    var a = document.getElementById("mst").value;
    if (isNaN(a)) {
        alert("MST phải là 1 số");
        return false;
    } else if (a.length < 8) {
        alert("MST phải có lớn hơn 8 kí tự");
        return false;
    } else if (a[0] != 0) {
        alert("MST phải bắt đầu bằng chữ số 0");
        return false;
    } else {
        return true;
    }
}