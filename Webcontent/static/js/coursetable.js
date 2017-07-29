
$(function () {
    $.getJSON("http://localhost:8080/EDUAdministration/CourseTableJsonServlet",function (data) {
        var length = data.length;
        for(var i=0; i<length;i++){
            var  weekday = data[i].weekday;
            var space = "_";
            var  jiestart = data[i].course_arrage;
            var  jie = data[i].course_length;
            var name = data[i].course_name;
            var room = data[i].room;
            for(var j =0 ; j<jie;j++)
            {
                var id_first =  parseInt(j)+parseInt(jiestart);
                console.log(id_first);
                var id = id_first+space+ weekday;
                /* var obj = document.getElementById(queren);
                 obj.html(data.name);*/
                var info = name;
                info = info + "<br>@" + room;
                console.log(info);
                document.getElementById(id).innerHTML = info;
            }
        }
    });
});