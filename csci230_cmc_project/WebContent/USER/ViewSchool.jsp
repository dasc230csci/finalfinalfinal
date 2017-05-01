<%@ page language="java" import="UI.*, Entity.*, java.util.*"%>
<%@include file="userVerifyLogin.jsp" %>
<%
UserUI userUi = (UserUI)session.getAttribute("userUi");
ArrayList<University> list = new ArrayList<University>();
String schoolName = request.getParameter("schoolName");
University univ = userUi.viewUniversityInDetail(schoolName);
list = userUi.searchRecommendation(schoolName);
University sameUniv = null;
for(University u : list){
	if(u.getSchoolName().equals(schoolName)){
		sameUniv = u;
	}
}
list.remove(sameUniv);
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
<center><h3 style="color:white">View School</h3></center>

<form method="post" action="SaveSchool.jsp" name="Save"><input name="Save"
value="Save" type="submit"><input name="schoolName" value="<%out.print(schoolName);%>"
type="hidden"></form>
<table style="text-align: left; background-color: white; width: 1137px; height: 540px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; width: 384px;">SCHOOL<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="schoolName" value="<%out.print(univ.getSchoolName());%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">STATE<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="state" value="<%out.print(univ.getState());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">LOCATION<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="location" value="<%out.print(univ.getLocation());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="control" value="<%out.print(univ.getControl());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">NUMBER OF STUDENT<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="numOfStudent" value="<%out.print(univ.getNumOfEnrolled());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">% FEMALE<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="femaleRatio" value="<%out.print(univ.getFemaleRatio());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">SAT VERBAL<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="satVerbal" value="<%out.print(univ.getSatVerbal());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">SAT MATH<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="satMath" value="<%out.print(univ.getSatMath());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">EXPENSES<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="expenses" value="<%out.print(univ.getExpenses());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="perFinanaAid" value="<%out.print(univ.getPerFinanAid());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">NUMBER OF
APPLICANTS<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="numOfApplicants" value="<%out.print(univ.getTotNumOfApplicant());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">% ADMITTED<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="perAdmitted" value="<%out.print(univ.getPerAdmitted());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">% ENROLLED<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="perEnrolled" value="<%out.print(univ.getPerEnrolled());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">ACADEMIC
SCALE(1-5)<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="academicScale" value="<%out.print(univ.getAcademicsScale());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">SOCIAL SCALE(1-5)<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="socialScale" value="<%out.print(univ.getSocialScale());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">QUALITY OF LIFE
SCALE(1-5)<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="qualOfLifeScale" value="<%out.print(univ.getQualOfLifeScale());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">EMPHASES<br>
</td>
<td style="vertical-align: top; width: 733px;">
<%for(String emphases : univ.getEmphases()){%>
<input readonly="readonly" name="emphases" value="<%out.print(emphases);%>"><br>
<%}%>
</td>
</tr>
</tbody>
</table>
<%for(University u: list){%>
<br>
<form method="post" action="SaveSchool.jsp" name="Save"><input name="Save"
value="Save" type="submit"><input name="schoolName" value="<%out.print(u.getSchoolName());%>"
type="hidden"></form> 
<h4 style="text-align: center; color: white"> May We Also Recommend: </h4>
<table style="text-align: left; background-color: white; width: 1137px; height: 540px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top; width: 384px;">SCHOOL<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="schoolName" value="<%out.print(u.getSchoolName());%>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">STATE<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="state" value="<%out.print(u.getState());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">LOCATION<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="location" value="<%out.print(u.getLocation());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top;">CONTROL<br>
</td>
<td style="vertical-align: top;"><input readonly="readonly"
name="control" value="<%out.print(u.getControl());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">NUMBER OF STUDENT<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="numOfStudent" value="<%out.print(u.getNumOfEnrolled());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">% FEMALE<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="femaleRatio" value="<%out.print(u.getFemaleRatio());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">SAT VERBAL<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="satVerbal" value="<%out.print(u.getSatVerbal());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">SAT MATH<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="satMath" value="<%out.print(u.getSatMath());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">EXPENSES<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="expenses" value="<%out.print(u.getExpenses());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">% FINANCIAL AID<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="perFinanaAid" value="<%out.print(u.getPerFinanAid());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">NUMBER OF
APPLICANTS<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="numOfApplicants" value="<%out.print(u.getTotNumOfApplicant());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">% ADMITTED<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="perAdmitted" value="<%out.print(u.getPerAdmitted());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">% ENROLLED<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="perEnrolled" value="<%out.print(u.getPerEnrolled());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">ACADEMIC
SCALE(1-5)<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="academicScale" value="<%out.print(u.getAcademicsScale());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">SOCIAL SCALE(1-5)<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="socialScale" value="<%out.print(u.getSocialScale());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">QUALITY OF LIFE
SCALE(1-5)<br>
</td>
<td style="vertical-align: top; width: 733px;"><input
readonly="readonly" name="qualOfLifeScale" value="<%out.print(u.getQualOfLifeScale());%>"> </td>
</tr>
<tr>
<td style="vertical-align: top; width: 384px;">EMPHASES<br>
</td>
<td style="vertical-align: top; width: 733px;">
<%for(String emphases : u.getEmphases()){%>
<input readonly="readonly" name="emphases" value="<%out.print(emphases);%>"><br>
<%}%>
</td>
</tr>
</tbody>
</table>
<%}%>
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