<%@page language="java" import="UI.*, Entity.*"%>
<%@include file="adminVerifyLogin.jsp"%>
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
  <li><a class="active" href="AdminMenu.jsp">Return To Menu</a></li>
</ul>
<br>
<br>
</head>
<body>

<center><h3 style="color:white"> Manage University</h3></center>
<%
AdminUI adminUi = (AdminUI)session.getAttribute("adminUi");
%>

<table style="text-align: left; background-color: white; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="19" rowspan="1" style="vertical-align: top;"><a
href="AddUniversity.jsp">Add a new University</a>
</td>

</tr>
<tr>
<td style="vertical-align: top; text-align: center;">School
</td>
<td style="vertical-align: top; text-align: center;">State
</td>
<td style="vertical-align: top; text-align: center;">Location
</td>
<td style="vertical-align: top; text-align: center;">Control
</td>
<td style="vertical-align: top; text-align: center;"># of Student
</td>
<td style="vertical-align: top; text-align: center;">% Females
</td>
<td style="vertical-align: top; text-align: center;">SAT Verbal
</td>
<td style="vertical-align: top; text-align: center;">SAT Math
</td>
<td style="vertical-align: top; text-align: center;">Expenses
</td>
<td style="vertical-align: top; text-align: center;">% with Financial Aid
</td>
<td style="vertical-align: top; text-align: center;"># of Applicants
</td>
<td style="vertical-align: top; text-align: center;">% Admitted
</td>
<td style="vertical-align: top; text-align: center;">% Enrolled
</td>
<td style="vertical-align: top; text-align: center;">Academic Scale
</td>
<td style="vertical-align: top; text-align: center;">Social Scale
</td>
<td style="vertical-align: top; text-align: center;">Quality of Life Scale
</td>
<td style="vertical-align: top; text-align: center;">
</td>
<td style="vertical-align: top; text-align: center;">
</td>
</tr>

<%
for(University u : adminUi.viewUniversityList()){%>
<tr>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getSchoolName());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getState());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getLocation());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getControl());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getNumOfEnrolled());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getFemaleRatio());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getSatVerbal());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getSatMath());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getExpenses());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getPerFinanAid());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getTotNumOfApplicant());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getPerAdmitted());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getPerEnrolled());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getAcademicsScale());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getSocialScale());%>
</td>
<td style="vertical-align: top; text-align: center;"><%out.print(u.getQualOfLifeScale());%>
</td>
<td style="vertical-align: top;">
<form method="post" action="EditUniversity.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="schoolName" value="<%out.print(u.getSchoolName());%>" type="hidden">
</form>
</td>
<td style="vertical-align: top;">
<form method="post" action="DeleteUniversity.jsp" name="Delete">
    <input name="Delete" value="Delete" type="submit">
    <input name="schoolName" value="<%out.print(u.getSchoolName());%>" type="hidden">
</form>
</td>
</tr>
<%}%>
</tbody>
</table>
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