<%@page language="java" import="UI.*" import = "Entity.*"%>
<%@include file="adminVerifyLogin.jsp"%>
<%
String error = request.getParameter("Error");
if(error != null && error.equals("1")){
	out.println("Delete Failed");
}
else if(error != null && error.equals("2")){
	out.println("Edit Failed");
}
AdminUI aUI = (AdminUI)session.getAttribute("adminUi");
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
  <li><a class="active" href="AdminMenu.jsp">Return To Menu</a></li>
</ul>
<br>
<br>
</head>
<body>
<center><h3 style="color:white">Manage User</h3></center>

<table style="text-align: left; background-color: white; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">

<td colspan="10" rowspan="1" style="vertical-align: top;"><a
href="AddUser.jsp">ADD A USER</a>
</td>

</tr>
<tr>
<td style="vertical-align: top;">
Edit
<td style="vertical-align: top; text-align: center;">FirstName
</td>
<td style="vertical-align: top; text-align: center;">LastName
</td>
<td style="vertical-align: top; text-align: center;">Username
</td>
<td style="vertical-align: top; text-align: center;">Password
</td>
<td style="vertical-align: top; text-align: center;">Type
</td>
<td style="vertical-align: top; text-align: center;">Status
</td>
<td style="vertical-align: top;">Deactivate
</td>
<td style="vertical-align: top;">Reactivate
</td>
<td style="vertical-align: top;">Delete
</td>
</tr>
<%
for(Account account: aUI.viewAllUser()){
%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="EditUser.jsp" name="EditUser">
    <input name="Edit" value="Edit" type="submit">
    <input name="Username" value=<%out.print(account.getUsername());%> type="hidden">
</form>
<td style="vertical-align: top;"><%out.println(account.getFirstName());%>
</td>
<td style="vertical-align: top;"><%out.println(account.getLastName());%>
</td>
<td style="vertical-align: top;"><%out.println(account.getUsername());%>
</td>
<td style="vertical-align: top;"><%out.println(account.getPassword());%>
</td>
<td style="vertical-align: top;"><%out.println(account.getType());%>
</td>
<td style="vertical-align: top;"><%out.println(account.getStatus());%>
</td>
<td style="vertical-align: top;">
<form method="post" action="Deactivate.jsp" name="Deactivate">
    <input name="Deactivate" value="Deactivate" type="submit">
    <input name="Username" value="<%out.print(account.getUsername());%>" type="hidden">
</form>
</td>
<td style="vertical-align: top;">
<form method="post" action="Reactivate.jsp" name="Reactivate">
    <input name="Reactivate" value="Reactivate" type="submit">
    <input name="Username" value="<%out.print(account.getUsername());%>" type="hidden">
</form>
</td>
<td style="vertical-align: top;">
<form method="post" action="DeleteUser.jsp" name="DeleteUser">
    <input name="Delete" value="Delete" type="submit">
    <input name="Username" value="<%out.print(account.getUsername());%>" type="hidden">
</form>
</td>
</tr>
<%} %>
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

