<%@ page language="java" import="UI.*"%>
<%@include file="userVerifyLogin.jsp"%>
<%
UserUI userUi = (UserUI)session.getAttribute("userUi");
String schoolName = request.getParameter("schoolName");
if(userUi.saveUniversity(schoolName)){
	response.sendRedirect("ManageSavedSchool.jsp");
}
else{
	response.sendRedirect("ManageSavedSchool.jsp?Error=1");
}
%>