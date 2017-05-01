<%@page language="java" import="UI.*" import = "Entity.*"%>
<%@include file="adminVerifyLogin.jsp"%>
<%
AdminUI adminUi = (AdminUI)session.getAttribute("adminUi");
if(adminUi.logOff()){
	session.removeAttribute("adminUi");
	response.sendRedirect("../index.jsp");
}
%>