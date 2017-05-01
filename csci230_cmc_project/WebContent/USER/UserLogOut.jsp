<%@page language="java" import="UI.*" import = "Entity.*"%>
<%@include file="userVerifyLogin.jsp"%>
<%
UserUI userUi = (UserUI)session.getAttribute("userUi");
if(userUi.logOff()){
	session.removeAttribute("userUi");
	response.sendRedirect("../index.jsp");
}
%>