<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//如果没有登录，则重定向到登录页面
	User user = (User)session.getAttribute("user");
	if(user==null){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!--
        ===
        This comment should NOT be removed.

        Charisma v2.0.0

        Copyright 2012-2014 Muhammad Usman
        Licensed under the Apache License v2.0
        http://www.apache.org/licenses/LICENSE-2.0

        http://usman.it
        http://twitter.com/halalit_usman
        ===
    -->
    <meta charset="utf-8">
    <title>个人信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link id="bs-css" href="css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="css/charisma-app.css" rel="stylesheet">
    <link href='bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='css/jquery.noty.css' rel='stylesheet'>
    <link href='css/noty_theme_default.css' rel='stylesheet'>
    <link href='css/elfinder.min.css' rel='stylesheet'>
    <link href='css/elfinder.theme.css' rel='stylesheet'>
    <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='css/uploadify.css' rel='stylesheet'>
    <link href='css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="img/favicon.ico">

</head>

<body>
<!-- topbar starts -->
<div class="navbar navbar-default" role="navigation">

    <div class="navbar-inner">
        <button type="button" class="navbar-toggle pull-left animated flip">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.jsp"> <img alt="Charisma Logo" src="img/logo20.png" class="hidden-xs"/>
            <span>教务管理系统</span></a>

        <!-- user dropdown starts -->
        <div class="btn-group pull-right">
            <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> admin</span>
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="#">Profile</a></li>
                <li class="divider"></li>
                <li><a href="login.jsp">Logout</a></li>
            </ul>
        </div>
        <!-- user dropdown ends -->

        <!-- theme selector starts -->
        <div class="btn-group pull-right theme-container animated tada">
            <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <i class="glyphicon glyphicon-tint"></i><span
                    class="hidden-sm hidden-xs"> Change Theme / Skin</span>
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" id="themes">
                <li><a data-value="classic" href="#"><i class="whitespace"></i> Classic</a></li>
                <li><a data-value="cerulean" href="#"><i class="whitespace"></i> Cerulean</a></li>
                <li><a data-value="cyborg" href="#"><i class="whitespace"></i> Cyborg</a></li>
                <li><a data-value="simplex" href="#"><i class="whitespace"></i> Simplex</a></li>
                <li><a data-value="darkly" href="#"><i class="whitespace"></i> Darkly</a></li>
                <li><a data-value="lumen" href="#"><i class="whitespace"></i> Lumen</a></li>
                <li><a data-value="slate" href="#"><i class="whitespace"></i> Slate</a></li>
                <li><a data-value="spacelab" href="#"><i class="whitespace"></i> Spacelab</a></li>
                <li><a data-value="united" href="#"><i class="whitespace"></i> United</a></li>
            </ul>
        </div>
        <!-- theme selector ends -->
    </div>
</div>
<!-- topbar ends -->
<div class="ch-container">
    <div class="row">

        <!-- left menu starts -->
        <div class="col-sm-2 col-lg-2">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">

                    </div>
                    <ul class="nav nav-pills nav-stacked main-menu">
                        <li class="nav-header">Main</li>
                        <li class="accordion">
                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span>个人管理</span></a>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="perinfo.jsp">个人资料</a></li>
                                <li><a href="changepassword.jsp">修改密码</a></li>
                            </ul>
                        </li>
                        <li class="accordion">
                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span>选课管理</span></a>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#">本学期课表</a></li>
                                <li><a href="course_selected.jsp">选课</a></li>
                                <li><a href="course_quit.jsp">退课</a> </li>
                            </ul>
                        </li>
                        <li class="accordion">
                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span>教材管理</span></a>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="textbook_selected.jsp">已选教材</a></li>
                                <li><a href="textbook_quit.jsp">教材退订</a></li>
                            </ul>
                        </li>
                        <li class="accordion">
                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span>学科成绩</span></a>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="grades.jsp">成绩查询</a></li>
                            </ul>
                        </li>
                        <li class="accordion">
                            <a href="#"><i class="glyphicon glyphicon-plus"></i><span>作业管理</span></a>
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="uncompleted_homework.jsp">未完成作业</a></li>                           
                                <li><a href="completed_homework.jsp">已完成作业</a> </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--/span-->
        <!-- left menu ends -->

        <noscript>
            <div class="alert alert-block col-md-12">
                <h4 class="alert-heading">Warning!</h4>

                <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                    enabled to use this site.</p>
            </div>
        </noscript>

        <div id="content" class="col-lg-10 col-sm-10">
            <!-- content starts -->


            <div>
                <ul class="breadcrumb">
                    <li>
                        <a href="#">主界面</a>
                    </li>
                    <li>
                        <a href="#">本学期课表</a>
                    </li>
                </ul>
            </div>

            <div class="row">
                <div class="box col-md-12">
                    <div class="box-inner">
                        <div class="box-header well" data-original-title="">
                            <h2><i class="glyphicon glyphicon-star-empty"></i>课表</h2>
                            <div class="box-icon">
                                <a href="#" class="btn btn-setting btn-round btn-default"><i
                                        class="glyphicon glyphicon-cog"></i></a>
                                <a href="#" class="btn btn-minimize btn-round btn-default"><i
                                        class="glyphicon glyphicon-chevron-up"></i></a>
                                <a href="#" class="btn btn-close btn-round btn-default"><i
                                        class="glyphicon glyphicon-remove"></i></a>
                            </div>

                        </div>
                        <div class="box-content">
                           <table width="100%" align="center" border="1px">
                                <tr height="37px">
                                    <th width="60px">节次</th>
                                    <th width="100px">上课时间</th>
                                    <th width="150px">周一</th>
                                    <th width="150px">周二</th>
                                    <th width="150px">周三</th>
                                    <th width="150px">周四</th>
                                    <th width="150px">周五</th>
                                    <th width="150px">周六</th>
                                    <th width="150px">周日</th>
                                </tr>
                               <tr height="20px" align="center"><td colspan="9"><p align="center">上午</p></td></tr>
                                <tr height="37px" align="center">
                                    <td align="center">1</td>
                                    <td rowspan="1">8:15-9:00</td>
                                   <!-- <td rowspan="13" bgcolor="Cyan">我爱学习<br>学习爱我</td>
                                    <td rowspan="5"></td>
                                    <td rowspan="2" bgcolor="orange">WEB应用技术<br>@D座301</td>
                                    <td rowspan="2"></td>
                                    <td rowspan="2" bgcolor="hotpink">数据库原理<br>@E407</td>
                                    <td rowspan="2"></td>
                                    <td rowspan="2"></td>-->
                                    <td rowspan="1" id="1_1" ></td>
                                    <td rowspan="1" id="1_2"></td>
                                    <td rowspan="1" id="1_3"></td>
                                    <td rowspan="1" id="1_4"></td>
                                    <td rowspan="1" id="1_5"></td>
                                    <td rowspan="1" id="1_6"></td>
                                    <td rowspan="1" id="1_7"></td>
                                <tr height="37px" align="center">
                                    <td>2</td>
                                    <td rowspan="1">9:10-9:55</td>
                                    <td rowspan="1" id="2_1"></td>
                                    <td rowspan="1" id="2_2"></td>
                                    <td rowspan="1" id="2_3"></td>
                                    <td rowspan="1" id="2_4"></td>
                                    <td rowspan="1" id="2_5"></td>
                                    <td rowspan="1" id="2_6"></td>
                                    <td rowspan="1" id="2_7"></td>
                                </tr>
                                <tr height="37px" align="center">
                                    <td>3</td>
                                    <td rowspan="1">10:15-11:00</td>
                                  <!--  <td rowspan="3"></td>
                                    <td rowspan="2" bgcolor="springgreen">计算机网络<br>@E阶梯教室202</td>
                                    <td rowspan="2" bgcolor="Aquamarine">计算理论导引<br>@E208</td>
                                    <td rowspan="2" bgcolor="Peru">系统分析与设计<br>@D座406</td>
                                    <td rowspan="2" bgcolor="DeepSkyBlue">中国近代社会转型<br>@E阶梯教室101</td>-->
                                    <td rowspan="1" id="3_1"></td>
                                    <td rowspan="1" id="3_2"></td>
                                    <td rowspan="1" id="3_3"></td>
                                    <td rowspan="1" id="3_4"></td>
                                    <td rowspan="1" id="3_5"></td>
                                    <td rowspan="1" id="3_6"></td>
                                    <td rowspan="1" id="3_7"></td>
                                </tr>
                                <tr height="37px" align="center">
                                    <td>4</td>
                                    <td rowspan="1">11:10-11:55</td>
                                    <td rowspan="1" id="4_1"></td>
                                    <td rowspan="1" id="4_2"></td>
                                    <td rowspan="1" id="4_3"></td>
                                    <td rowspan="1" id="4_4"></td>
                                    <td rowspan="1" id="4_5"></td>
                                    <td rowspan="1" id="4_6"></td>
                                    <td rowspan="1" id="4_7"></td>
                                </tr>
                               <tr height="20px" align="center"><td colspan="9"><p align="center">下午</p></td></tr>
                                <tr height="37px" align="center">
                                    <td>5</td>
                                    <td rowspan="1">13:50-14:35</td>
                                    <!--<td rowspan="3"></td>
                                    <td rowspan="1"></td>
                                    <td rowspan="3"></td>-->
                                    <td rowspan="1" id="5_1"></td>
                                    <td rowspan="1" id="5_2"></td>
                                    <td rowspan="1" id="5_3"></td>
                                    <td rowspan="1" id="5_4"></td>
                                    <td rowspan="1" id="5_5"></td>
                                    <td rowspan="1" id="5_6"></td>
                                    <td rowspan="1" id="5_7"></td>

                                </tr>
                                <tr height="37px" align="center">
                                    <td>6</td>
                                    <td rowspan="1">14:45-15:30</td>
                                  <!--  <td rowspan="2" bgcolor="SpringGreen">计算机网络<br>@E阶梯教室202</td>
                                    <td rowspan="2" bgcolor="HotPink">数据库原理<br>@E407</td>
                                    <td rowspan="2" bgcolor="Thistle">算法设计与分析<br>@E208</td>-->
                                    <td rowspan="1" id="6_1"></td>
                                    <td rowspan="1" id="6_2"></td>
                                    <td rowspan="1" id="6_3"></td>
                                    <td rowspan="1" id="6_4"></td>
                                    <td rowspan="1" id="6_5"></td>
                                    <td rowspan="1" id="6_6"></td>
                                    <td rowspan="1" id="6_7"></td>

                                </tr>
                                <tr height="37px" align="center">
                                    <td>7</td>
                                    <td rowspan="1">15:40-16:25</td>
                                    <td rowspan="1" id="7_1"></td>
                                    <td rowspan="1" id="7_2"></td>
                                    <td rowspan="1" id="7_3"></td>
                                    <td rowspan="1" id="7_4"></td>
                                    <td rowspan="1" id="7_5"></td>
                                    <td rowspan="1" id="7_6"></td>
                                    <td rowspan="1" id="7_7"></td>
                                </tr>
                                <tr height="37px" align="center">
                                    <td>8</td>
                                    <td rowspan="1">16:45-17:30</td>
                                   <!-- <td rowspan="3"></td>
                                    <td rowspan="3" bgcolor="    GreenYellow">企业建模与系统集成<br>@D座503</td>
                                    <td rowspan="3" bgcolor="DeepSkyBlue">中国近代社会转型<br>@E阶梯教室101</td>
                                    <td rowspan="2" bgcolor="RoyalBlue">智能系统<br>@E407</td>
                                    <td rowspan="3" bgcolor="DeepSkyBlue">中国近代社会转型<br>@E阶梯教室101</td>-->
                                    <td rowspan="1" id="8_1"></td>
                                    <td rowspan="1" id="8_2"></td>
                                    <td rowspan="1" id="8_3"></td>
                                    <td rowspan="1" id="8_4"></td>
                                    <td rowspan="1" id="8_5"></td>
                                    <td rowspan="1" id="8_6"></td>
                                    <td rowspan="1" id="8_7"></td>
                                </tr>
                                <tr height="37px" align="center">
                                    <td>9</td>
                                    <td rowspan="1">17:40-18:25</td>
                                    <td rowspan="1" id="9_1"></td>
                                    <td rowspan="1" id="9_2"></td>
                                    <td rowspan="1" id="9_3"></td>
                                    <td rowspan="1" id="9_4"></td>
                                    <td rowspan="1" id="9_5"></td>
                                    <td rowspan="1" id="9_6"></td>
                                    <td rowspan="1" id="9_7"></td>
                                </tr>
                               <tr height="20px" align="center"><td colspan="9"><p align="center">晚上</p></td></tr>
                                <tr height="37px" align="center">
                                    <td>10</td>
                                    <td rowspan="1">19:20-20:05</td>
                                    <td rowspan="1" id="10_1"></td>
                                    <td rowspan="1" id="10_2"></td>
                                    <td rowspan="1" id="10_3"></td>
                                    <td rowspan="1" id="10_4"></td>
                                    <td rowspan="1" id="10_5"></td>
                                    <td rowspan="1" id="10_6"></td>
                                    <td rowspan="1" id="10_7"></td>
                                </tr>
                                <tr height="37px" align="center">
                                    <td>11</td>
                                    <td rowspan="1">20:15-21:00</td>
                                  <!--  <td rowspan="2" bgcolor="MediumOrchid">软件案例分析@G座304</td>
                                    <td rowspan="3"></td>
                                    <td rowspan="3"></td>
                                    <td rowspan="3" bgcolor="DeepSkyBlue">中国近代社会转型<br>@E阶梯教室101</td>-->
                                    <td rowspan="1" id="11_1"></td>
                                    <td rowspan="1" id="11_2"></td>
                                    <td rowspan="1" id="11_3"></td>
                                    <td rowspan="1" id="11_4"></td>
                                    <td rowspan="1" id="11_5"></td>
                                    <td rowspan="1" id="11_6"></td>
                                    <td rowspan="1" id="11_7"></td>
                                </tr>
                                <tr height="37px" align="center">
                                    <td>12</td>
                                    <td rowspan="1">21:10-21:55</td>
                                    <td rowspan="1" id="12_1"></td>
                                    <td rowspan="1" id="12_2"></td>
                                    <td rowspan="1" id="12_3"></td>
                                    <td rowspan="1" id="12_4"></td>
                                    <td rowspan="1" id="12_5"></td>
                                    <td rowspan="1" id="12_6"></td>
                                    <td rowspan="1" id="12_7"></td>
                                </tr>
                                </colgroup>
                            </table>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">

        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h3>Settings</h3>
                </div>
                <div class="modal-body">
                    <p>Here settings can be configured...</p>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
                    <a href="#" class="btn btn-primary" data-dismiss="modal">Save changes</a>
                </div>
            </div>
        </div>
    </div>

</div><!--/.fluid-container-->

<!-- external javascript -->

<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='bower_components/moment/min/moment.min.js'></script>
<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>
<script src="static/js/coursetable.js"></script>
</body>
</html>
