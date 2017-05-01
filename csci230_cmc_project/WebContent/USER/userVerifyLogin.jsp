<%@page language="java" import="UI.*"%>
<%
UserUI verifyUI = (UserUI)session.getAttribute("userUi");
if(verifyUI == null || verifyUI.viewProfile().getLoggedIn() == false){
	response.sendRedirect("../index.jsp?Error=4");
	return;
}
%>
