<%@page language="java" import="UI.*"%>
<%@include file="adminVerifyLogin.jsp"%>
<%
AdminUI aUI = (AdminUI)session.getAttribute("adminUi");
String schoolName = request.getParameter("schoolName");
if(!aUI.deleteUniversity(schoolName)){
	response.sendRedirect("ManageUniversityMenu.jsp?Error=1");
}
else{
	response.sendRedirect("ManageUniversityMenu.jsp");
}
%>