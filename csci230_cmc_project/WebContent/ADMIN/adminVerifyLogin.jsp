<%@page language="java" import="UI.*"%>
<%
AdminUI verifyUI = (AdminUI)session.getAttribute("adminUi");
if(verifyUI == null || verifyUI.viewProfile().getLoggedIn() == false){
	response.sendRedirect("../index.jsp?Error=4");
	return;
}
%>
