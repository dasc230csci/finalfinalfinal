<%@page language="java" import="UI.*" import = "Entity.*"%>
<%@include file="userVerifyLogin.jsp"%>
<% UserUI uUI = (UserUI)session.getAttribute("userUi");%>
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
border-collapse: collapse;
}

tr:hover {background-color: #f5f5f5}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    width: 100%;
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
  <meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
  <div id="banner">
</div>
  <title>ManageSavedSchools</title>
</head><body>
<ul>
  <li><a class="active" href="UserMenu.jsp">Return To Menu</a></li>
</ul>
<br>
<br>
<h2 style="text-align: center; color: white"> Manage Saved Schools </h2>
<h4 style="color:white">
<b>
  <%
   String error = request.getParameter("Error");
   if(error !=null && error.equals("1")){
  	out.println("You've already Saved That School!");
  	}
   String success = request.getParameter("Success");
   if(success != null && success.equals("1")){
	   out.println("School Removed Successfully!");
	   }
%>
</b>
  </h4>

    <% if (uUI.viewSavedSchool().isEmpty()){ %>
    	<h3 style="text-align: center; color:white"> You have no saved schools! </h3>
    	
<%} else { %>
<table style="background-color: white; border-radius: 5px; width: 100%;" border="1px" >
    <tbody>
    <% for (String u : uUI.viewSavedSchool()) {  %>
      <tr style="height: 5px">
        <td style="vertical-align: top; horizontal-align: top; width: 33%">
         <form action="RemoveSavedSchool.jsp" name="RemoveSavedSchools">
         <input name="RemoveSchool" value="Remove" type="submit"><input name="schoolName"
			value="<%out.print(u);%>" type="hidden"></form>
         <br>
        </td>
        <td style="vertical-align: top; horizontal-align: top; width: 33%"><%out.print(u);%><br>
        </td>
        <td style="vertical-align: top; horizontal-align: top; width: 33%">
        <form action="ViewSchool.jsp" name="ViewSavedSchools">
        <input name="ViewSchool" value="View" type="submit">
        <input name="schoolName" value="<%out.print(u);%>" type="hidden"></form>
        </td>
      </tr>
      <%} %>
    </tbody>
  </table>
    <br>
  <br>
<form method="post" action="CompareSchools.jsp" name="CompareMethod">
<table style="text-align: left; width: 100%; background-color: white; height: 33px;" border="1" cellpadding="2" cellspacing="2">
<tbody> 
<tr>
<% for (String u : uUI.viewSavedSchool()) {  %>
<td><%out.print(u); %></td>
 <%} %>
</tr>

<tr>
<% for (String u : uUI.viewSavedSchool()) {  %>
<td><input type="checkbox" name ="CompareSchools" value="<%out.print(u); %>"></td>
  <%} %>
</tr>

</tbody>
</table>
<input type="submit" name="Compare">
</form>
<%
  String errorCompare = request.getParameter("Error");
  if(error != null && errorCompare.equals("2")){
		out.println("Please check 2 boxes");
	} %>
  
  <br>
<%} %>
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