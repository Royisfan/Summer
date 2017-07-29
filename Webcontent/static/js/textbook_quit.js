/**
 * Created by DELL on 2017/7/25.
 */
$(function () {
    $.getJSON("http://localhost:8080/EDUAdministration/CourseTableJsonServlet",function (data) {
        var length = data.length;
        var info = '';
        for(var i = 0; i<data.length;i++)
        {
        	console.log(data[i].book);            
            if(data[i].book!=null){
            	info+="<tr>";
	            info+="<td>" + data[i].book + "</td>";
	            info+="<td>" + data[i].course_name + "</td>";
	            info+="<td>" + "<input name='quitTextbook' type='checkbox' value=" + data[i].course_id +">" + "</td>";
	            info+="</tr>";
            }
        }
        console.log(info);
      $('#textbook_quit').append(info);
    })
});
function checkIscheck() {
    var info = document.getElementsByName("quitTextbook");
    var length = info.length;
    var a =0;
    for(var i=0; i< length ; i++)
    {
        if (info[i].checked == true)
        {
            a = 1;
        }
    }
    console.log(a);
    if(a==0){
        alert("您还没有选择教材进行退订，请不要乱提交");
        return false;
    }
}
