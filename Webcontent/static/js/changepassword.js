/**
 * Created by DELL on 2017/7/25.
 */
function CheckIsSame() {
    var value1 = document.getElementById("newpsw1").value;
    var value2 = document.getElementById("newpsw2").value;
    if(value1!=value2)
    {
        alert("两次密码不一致,请重新输入!");
    }
}
function CheckIsNull(){
    var value1 = document.getElementById("oldpsw").value;
    var value2 = document.getElementById("newpsw1").value;
    var value3 = document.getElementById("newpsw2").value;
    if(value1=='')
    {
        alert("请输入原密码!");
        return false;
    }
    else if(value2=='')
    {
        alert("请输入您的新密码");
        return false;
    }
    else if(value3=='')
    {
        alert("请确认您的密码");
        return false;
    }
}