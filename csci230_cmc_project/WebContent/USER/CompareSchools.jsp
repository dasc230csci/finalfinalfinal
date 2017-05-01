<%@page language="java" import="UI.*" import = "Entity.*" import="java.util.*"%>
<%@include file="userVerifyLogin.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {font-family: Verdana,sans-serif; font-color: white; margin:0; background-color:#686868}
table {
   border: none;
  border-collapse: collapse;
}
tr:nth-child(even) {background-color: #f2f2f2}
tr:hover {background-color: #dddddd}
#banner{
  width:100%;
  background-image:url(http://i.imgur.com/TsQQMTp.png);
  background-size:880px 680px;
  background-repeat:no-repeat;
  background-position:60% 46%;
  height: 99px;
  background-color: #333333;
}

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
<title>Compare Schools</title>
<% 
	UserUI uUI = (UserUI)session.getAttribute("userUi");
	String[] schools= request.getParameterValues("CompareSchools");
	if(schools.length!=2){
		response.sendRedirect("ManageSavedSchool.jsp?Error=2");
	}
	else {
	University u1 = uUI.viewUniversityInDetail(schools[0]);
	ArrayList<String> emphasis1 = u1.getEmphases();
	String[] detail1 = new String[15];
	detail1[0]=u1.getState();
	detail1[1]=u1.getLocation();
	detail1[2]=u1.getControl();
	detail1[3]=u1.getNumOfEnrolled()+"";
	detail1[4]=u1.getFemaleRatio()+"";
	detail1[5]=u1.getSatVerbal()+"";
	detail1[6]=u1.getSatMath()+"";
	detail1[7]=u1.getExpenses()+"";
	detail1[8]=u1.getPerFinanAid()+"";
	detail1[9]=u1.getTotNumOfApplicant()+"";
	detail1[10]=u1.getPerAdmitted()+"";
	detail1[11]=u1.getPerEnrolled()+"";
	detail1[12]=u1.getAcademicsScale()+"";
	detail1[13]=u1.getSocialScale()+"";
	detail1[14]=u1.getQualOfLifeScale()+"";
	University u2 = uUI.viewUniversityInDetail(schools[1]);
	String[] detail2 = new String[15];
	detail2[0]=u2.getState();
	detail2[1]=u2.getLocation();
	detail2[2]=u2.getControl();
	detail2[3]=u2.getNumOfEnrolled()+"";
	detail2[4]=u2.getFemaleRatio()+"";
	detail2[5]=u2.getSatVerbal()+"";
	detail2[6]=u2.getSatMath()+"";
	detail2[7]=u2.getExpenses()+"";
	detail2[8]=u2.getPerFinanAid()+"";
	detail2[9]=u2.getTotNumOfApplicant()+"";
	detail2[10]=u2.getPerAdmitted()+"";
	detail2[11]=u2.getPerEnrolled()+"";
	detail2[12]=u2.getAcademicsScale()+"";
	detail2[13]=u2.getSocialScale()+"";
	detail2[14]=u2.getQualOfLifeScale()+"";
	ArrayList<String> emphasis2 = u2.getEmphases();
	String[] detail= new String[15];
	detail[0]="State";
	detail[1]="Location";
	detail[2]="Control";
	detail[3]="Number of Student";
	detail[4]="Female Ratio";
	detail[5]="SAT Verbal";
	detail[6]="Sat Math";
	detail[7]="Expenses";
	detail[8]="% Financial Aid";
	detail[9]="Total number of applicant";
	detail[10]="% Admitted";
	detail[11]="% Enrolled";
	detail[12]="Academics Scale";
	detail[13]="Social Scale";
	detail[14]="Quality of life scale";
	
%>
</head>
<body>
<div id="banner"></div>
<ul>
  <li><a class ="active" href="ManageSavedSchool.jsp">Return to Manage My Saved Schools</a></li>
</ul>
<br>
<br>
<table style="text-align: left; background-color: white; width: 100%; height: 33px;" border="1" cellpadding="2" cellspacing="2">
<col width="200">
<col width="200">
<col width="200">
<tr>
<td>School Names</td>
<%for(int i=0; i<schools.length; i++){%>
	<td> <%out.print(schools[i]); %></td>
<%}%>
</tr>
<%for(int i=0;i<detail1.length;i++){ %>
<tr>
<td><%out.print(detail[i]); %></td>
<td><%out.print(detail1[i]); %></td>
<td><%out.print(detail2[i]); %></td>
</tr>
<%} %>
<tr>
<td>Emphases</td>
<td>
<%for(int i=0;i<emphasis1.size();i++){ 
out.print(emphasis1.get(i));%><br>
<% }%>
</td>
<td>
<%for(int i=0;i<emphasis2.size();i++){ out.print(emphasis2.get(i));%>
<br>
<% }%>
</td>
</tr>
</table>
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
<%} %>
</html>