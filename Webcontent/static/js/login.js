/**
 * Created by DELL on 2017/4/25.
 */
function checkUser(){
    var username = document.getElementById("user").value;
    var password = document.getElementById("password").value;
    if(username=="")
    {
        alert("未输入用户名");
        return false;
    }
    if(!password)
    {
        alert("未输入密码");
        return false;
    }
    /*       document.getElementById("Login_1").submit();*/

}
function check_box(){
    var xz=document.getElementById("check_test");
    if(check_test.checked){
        document.getElementById("check_test").value=y;
    }
    else
    {
        document.getElementById("check_test").value=n;
    }
    alert(document.getElementById("check_test").value);
}