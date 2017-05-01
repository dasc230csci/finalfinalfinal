<%@ page language="java" import="Controller.*, java.util.*, UI.*, Entity.*"%>
<%@include file="adminVerifyLogin.jsp"%>
<%
AdminUI adminUi = (AdminUI)session.getAttribute("adminUi");
String username = request.getParameter("Username");
Account account = adminUi.viewOthersProfile(username);
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
   box-shadow: 5px 5px 5px #333333;
}
tr:hover {background-color: #f5f5f5}
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
<h3 style="color:white">
<%
	String error = request.getParameter("Error");
	if(error != null && error.equals("-1")){
		out.println("Please input value in the required fields");
}
	if(error != null && error.equals("-2")){
		out.println("Invalid type, please input a(admin) or u(user)");
}
	if(error != null && error.equals("-3")){
		out.println("Invalid status, please input Y(active) or N(inactive)");
}
	if(error != null && error.equals("-4")){
		out.println("Edit user failed, please try again");
}
	if(error != null && error.equals("1")){
		out.println("Edit user failed, please try again");
}
%>
</h3>
<form method="post" action="EditUser_action.jsp" name="editUser"><br>
<table style="background-color:white; border-radius: 5px; text-align: left; width: 500px; height: 154px; margin-left: auto; margin-right: auto; 
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">First Name<br>
</td>
<td style="vertical-align: top;"><input name="FirstName" value="<%out.print(account.getFirstName()); %>"><br>
</td>
</tr>
<tr>
<tr>
<td style="vertical-align: top;">Last Name<br>
</td>
<td style="vertical-align: top;"><input name="LastName" value="<%out.print(account.getLastName()); %>"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Username<br>
</td>
<td style="vertical-align: top;"><input name="Username" value="<%out.print(account.getUsername()); %>" readonly> </td>
</tr>
<tr>
<td style="vertical-align: top;">Password<br>
</td>
<td style="vertical-align: top;"><input name="Password" value="<%out.print(account.getPassword()); %>"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Type<br>
</td>
<td style="vertical-align: top;"><input name="Type" value="<%out.print(account.getType()); %>"> </td>
</tr>
<tr>
<td style="vertical-align: top;">Status<br>
</td>
<td style="vertical-align: top;"><input name="Status" value="<%out.print(account.getStatus()); %>"> </td>
</tr>

<tr>
<td style="vertical-align: top;"><input value="Edit"
name="Edit" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td style="vertical-align: top;"><input value="Reset"
name="Reset" type="reset"></td>
</tr>
</tbody>
</table>
<br>
</form>
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
