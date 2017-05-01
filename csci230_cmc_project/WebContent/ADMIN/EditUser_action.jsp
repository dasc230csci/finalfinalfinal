<%@page language="java" import="UI.*" import = "Entity.*"%>
<%@include file="adminVerifyLogin.jsp"%>
<%
AdminUI adminUi = (AdminUI)session.getAttribute("adminUi");
String firstName = request.getParameter("FirstName");
String lastName = request.getParameter("LastName");
String userName = request.getParameter("Username");
String password = request.getParameter("Password");
String type = request.getParameter("Type");
String status = request.getParameter("Status");
if(firstName.equals("")||lastName.equals("")||password.equals("")||type.equals("")||status.equals("")){
	response.sendRedirect("EditUser.jsp?Error=1&Username="+userName);
	return;
}
else if(firstName.charAt(0) == ' '||lastName.charAt(0) == ' '||password.charAt(0) == ' '||type.charAt(0) == ' '||status.charAt(0) == ' '){
	response.sendRedirect("EditUser.jsp?Error=1&Username="+userName);
	return;
}

int verifyUEdit= adminUi.editUserProfile(firstName, lastName, userName, password, type, status);
if(verifyUEdit == 0){
	response.sendRedirect("ManageUserMenu.jsp");
}
else if(verifyUEdit == -1){
	response.sendRedirect("EditUser.jsp?Error=-1&Username="+userName);
}
else if(verifyUEdit == -2){
	response.sendRedirect("EditUser.jsp?Error=-2&Username="+userName);
}
else if(verifyUEdit == -3){
	response.sendRedirect("EditUser.jsp?Error=-3&Username="+userName);
}
else if(verifyUEdit == -4){
	response.sendRedirect("EditUser.jsp?Error=-4&Username="+userName);
}
%>