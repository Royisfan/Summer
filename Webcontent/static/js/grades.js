/**
 * Created by DELL on 2017/7/26.
 */
$(function () {
    $.getJSON("http://localhost:8080/EDUAdministration/QueryGradeJsonServlet",function (data) {
        var length = data.length;
        var info = '';
        for(var i=0; i<length;i++){
            info += "<tr>";
            info += "<td>" + data[i].course_id + "</td>";
            info += "<td>" + data[i].course_name + "</td>";
            info += "<td>" + data[i].name + "</td>";
            info += "<td>" + data[i].credit + "</td>";
            info += "<td>" + data[i].grades + "</td>";
            if(data[i].comment==null){
            	 info += "<td>" + "无" + "</td>";
            }
            else{
            info += "<td>" + data[i].comment + "</td>";
            }
            info += "</tr>";
        }       
        $('#grade').append(info);
    });
});