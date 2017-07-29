$(function () {
    $.getJSON("http://localhost:8080/EDUAdministration/CourseTableJsonServlet",function (data) {
        var length = data.length;
        var info = '';
        for(var i=0; i<length;i++){
        	if(data[i].book!=null){
	            info += "<tr>";
	            info += "<td>" + data[i].course_id + "</td>";
	            info += "<td>" + data[i].course_name + "</td>";
	            info += "<td>" + data[i].book + "</td>";
        	}
        }
        $('#textbook').append(info);
    });
});