/**
 * Created by DELL on 2017/7/24.
 */

$(function () {
   $.getJSON("http://localhost:8080/EDUAdministration/UserJsonServlet",function (data) {
      $('#perinfo_Id').append(data.account);
      $('#perinfo_Name').append(data.name);
      $('#perinfo_Email').append(data.email);
      var sex = data.sex;
      if(sex==true)
    	  {
    	  	sex = "女";
    	  }
      else
    	  {
    	  	sex = "男";
    	  }
      $('#perinfo_Sex').append(sex);
      $('#perinfo_Major').append(data.major);
      $('#perinfo_College').append(data.college);
      $('#perinfo_Phone').append(data.tel);
      $('#perinfo_Data').append(data.birthDay);
   }) 
});