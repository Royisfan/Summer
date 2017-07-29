/**
 * Created by DELL on 2017/7/26.
 */
$(function () {
    $.getJSON("http://localhost:8080/EDUAdministration/UnCompleteJobJsonServlet",function (data) {
        var length = data.length;
        var info = '';
        for(var i = 0;i<length;i++){
            info += "<tr>";
            info += "<td>" + data[i].content + "</td>";
            info += "<td>" + data[i].begin_date + "</td>";
            info += "<td>" + data[i].end_date + "</td>";
            if(data[i].job_file_path != null)
        	{
            	info += "<td width='40px'><a href='" + data[i].job_file_path + "'>" + "附件" + "</a></td>";
        	}
            else{
            	info += "<td width='40px'><a href='#'>" + "附件" + "</a></td>";
            }
            
            info += " <td><div> <button class='btn btn-default' data-toggle='modal' data-target='#myModal' onclick='setvalue(this)' value='" + data[i].job_id + "'>" + "提交作业 </button>"+"</td>";
            info += "</tr>";
        }
        console.log(info);
        $('#uncompleted_homework').append(info);
    })
});
function setvalue(data) {
    var Value = data.value;
    document.getElementById("test").value = Value;
}
