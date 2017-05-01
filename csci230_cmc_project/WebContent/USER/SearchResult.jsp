<%@ page language="java" import="Controller.*, java.util.*, UI.*, Entity.*"%>
<%@include file="userVerifyLogin.jsp"%>
<%
UserUI userUi = (UserUI)session.getAttribute("userUi");
ArrayList<String> criteria = new ArrayList<String>();
criteria.add(request.getParameter("schoolName"));
criteria.add(request.getParameter("state"));
criteria.add(request.getParameter("location"));
criteria.add(request.getParameter("control"));
criteria.add(request.getParameter("numOfStudentMin"));
criteria.add(request.getParameter("numOfStudentMax"));
criteria.add(request.getParameter("femaleRatioMin"));
criteria.add(request.getParameter("femaleRatioMax"));
criteria.add(request.getParameter("satVerbalMin"));
criteria.add(request.getParameter("satVerbalMax"));
criteria.add(request.getParameter("satMathMin"));
criteria.add(request.getParameter("satMathMax"));
criteria.add(request.getParameter("expensesMin"));
criteria.add(request.getParameter("expensesMax"));
criteria.add(request.getParameter("perFinanAidMin"));
criteria.add(request.getParameter("perFinanAidMax"));
criteria.add(request.getParameter("totNumOfApplicantMin"));
criteria.add(request.getParameter("totNumOfApplicantMax"));
criteria.add(request.getParameter("perAdmittedMin"));
criteria.add(request.getParameter("perAdmittedMax"));
criteria.add(request.getParameter("perEnrolledMin"));
criteria.add(request.getParameter("perEnrolledMax"));
criteria.add(request.getParameter("academicScaleMin"));
criteria.add(request.getParameter("academicScaleMax"));
criteria.add(request.getParameter("socialScaleMin"));
criteria.add(request.getParameter("socialScaleMax"));
criteria.add(request.getParameter("qualOfLifeScaleMin"));
criteria.add(request.getParameter("qualOfLifeScaleMax"));
criteria.add(request.getParameter("emphases1"));
criteria.add(request.getParameter("emphases2"));
criteria.add(request.getParameter("emphases3"));
criteria.add(request.getParameter("emphases4"));
criteria.add(request.getParameter("emphases5"));
ArrayList<University> searched = new ArrayList<University>();
searched = userUi.search(criteria);
if(searched.isEmpty()){
	response.sendRedirect("SearchMenu.jsp?Error=1");
}
%>
<html>
<style>
body {font-family: Verdana,sans-serif; font-color: white; margin:0; background-color:#686868}
#banner{
  width:100%;
  background-image:url(http://i.imgur.com/TsQQMTp.png);
  background-size:880px 680px;
  background-repeat:no-repeat;
  background-position:60% 46%;
  height: 99px;
  background-color: #333333;
}
table {
   border: none;
  border-collapse: collapse;
}
tr:nth-child(even) {background-color: #f2f2f2}
tr:hover {background-color: #dddddd}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}
li {
    float: center;
}
li a {
    display: block;
    color: white;
    text-align: center;
    padding: 10px 17px;
    text-decoration: none;
}
li a:hover {
    background-color: #111;
}
</style>
<head>
<link href="CSS.html" rel="stylesheet" type="text/css" />
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<div id="banner">
</div>
<ul>
  <li><a class="active" href="UserMenu.jsp">Return To Menu</a></li>
</ul>
<br>
<br>
</head>
<body>
<center><h3 style="color:white"> Search Result</h3></center>

<table style="text-align: left; background-color: white; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">
<td colspan="8" rowspan="1" style="vertical-align: top;">School
List</td>
</tr>
<%for(University univ : searched){%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="SaveSchool.jsp" name="Save"><input
name="Save" value="Save" type="submit"><input name="schoolName"
value="<%out.print(univ.getSchoolName());%>" type="hidden"></form>
</td>
<td style="vertical-align: top;"><%out.print(univ.getSchoolName());%>
</td>
<td style="vertical-align: top;">
<form method="post" action="ViewSchool.jsp" name="View"> <input
name="View" value="View" type="submit"><input name="schoolName"
value="<%out.print(univ.getSchoolName());%>" type="hidden"></form>
</td>
</tr>
<%}%>
</tbody>
</table>
<br>
<br>
<footer style="color:white; font-size:12px">
<center>
<br>
<img src="http://i.imgur.com/l2IaWyd.png" style="width:250px; height:200px" />
<br>
  Choose My College <br>
  Created by Team DASC
  </center>
</footer>
</body>
</html>
