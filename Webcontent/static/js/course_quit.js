/**
 * Created by DELL on 2017/7/25.
 */
$(function () {
    $.getJSON("http://localhost:8080/EDUAdministration/CourseTableJsonServlet",function (data) {
      var length = data.length;
      var info = '';
      for(var i = 0; i<data.length;i++)
      {
          info+="<tr>";
          info+="<td>" + data[i].course_name + "</td>";
          info+="<td>" + data[i].credit + "</td>";
          info+="<td>" + "<input name='quitCourse' type='checkbox' value=" + data[i].course_id +">" + "</td>";
          info+="</tr>";
      }
      $('#course_quit').append(info);
    })
});
function checkIscheck() {
    var info = document.getElementsByName("quitCourse");
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
        alert("您还没有选择课程进行退课，请不要乱提交");
        return false;
    }
}
