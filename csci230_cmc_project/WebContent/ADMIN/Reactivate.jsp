<%@page language="java" import="UI.*" import = "Entity.*"%>
<%@include file="adminVerifyLogin.jsp"%>
<%
AdminUI adminUi = (AdminUI)session.getAttribute("adminUi");
String username = request.getParameter("Username");
if(adminUi.reactivateAccount(username)){
	response.sendRedirect("ManageUserMenu.jsp");
}
else{
	response.sendRedirect("ManageUserMenu.jsp?Error=-1");
}
%>