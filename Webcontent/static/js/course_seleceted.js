/**
 * Created by DELL on 2017/7/25.
 */
$(function () {
    $.getJSON("http://localhost:8080/EDUAdministration/ChooseCourseJsonServlet",function (data) {
      var length = data.length;
      var info = '';
      for(var i = 0; i<data.length;i++)
      {
          info+="<tr>";
          info+="<td><label>" + data[i].course_id + "</label></td>";
          info+="<td>" + data[i].course_name + "</td>";
          info+="<td>" + data[i].account + "</td>";
          info+="<td>" + data[i].course_arrage + "</td>";
          info+="<td>" + data[i].weekday + "</td>";
          info+="<td>" + data[i].course_length + "</td>";
          info+="<td>" + data[i].course_weeks + "</td>";
         info+="<td>" + data[i].credit + "</td>";
          info+="<td>" + data[i].test_method + "</td>";
          info+="<td>" + data[i].major + "</td>";
          info+="<td>" + data[i].allow_capacity + "</td>";
          info+="<td>" + data[i].allow_major + "</td>";
          info+="<td>" + "<input name='chooseCourse' type='checkbox' value=" + data[i].course_id +">" + "</td>";
          info+="</tr>";
      }
      $('#course_select').append(info);
    })
});
function checkIscheck() {
    var info = document.getElementsByName("chooseCourse");
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
        alert("您还没有选课，请不要乱提交");
        return false;
    }
}

