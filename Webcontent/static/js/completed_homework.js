/**
 * Created by DELL on 2017/7/26.
 */
$(function () {
    $.getJSON("http://localhost:8080/EDUAdministration/CompleteJobJsonServlet",function (data) {
        var length = data.length;
        var info = '';
        for(var i=0; i<length;i++){
            info += "<tr>";
            info += "<td width='400px'>" + data[i].content + "</td>";
            info += "<td>" + data[i].answerdate + "</td>";
            var comment = data[i].comment;
            if(comment == ''){
                info += "<td>无</td>";
            }
            else {
                info += "<td>" + comment + "</td>";
            }
            info += "<td>" + data[i].grades + "</td>";
            info += "<td><a href='" + data[i].job_file_path + "'>" + "查看提交作业</a></td>";          
        }
        $('#completed_homework').append(info);
    });
});