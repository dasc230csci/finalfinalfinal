<%@page language="java" import="UI.*"%>
<%
String username = request.getParameter("Username");
String password = request.getParameter("Password");
LoginUI ui = new LoginUI();
String verify = ui.verifyUser(username, password);
if(verify.equals("u")){
	UserUI userUi = new UserUI(username);
	if(userUi.viewProfile().getStatus().equals("Y")){
		session.setAttribute("userUi", userUi);
		response.sendRedirect("USER/UserMenu.jsp");
	}
	else{
		response.sendRedirect("index.jsp?Error=3"); // Status invalid
	}
}
else if(verify.equals("a")){
	AdminUI adminUi = new AdminUI(username);
	if(adminUi.viewProfile().getStatus().equals("Y")){
		session.setAttribute("adminUi", adminUi);
		response.sendRedirect("ADMIN/AdminMenu.jsp");
	}
	else{
		response.sendRedirect("index.jsp?Error=3"); // Status invalid
	}
}
else if(verify.equals("f")){
	response.sendRedirect("index.jsp?Error=1"); // password invalid
}
else{
	response.sendRedirect("index.jsp?Error=2"); // user doesn't exist
}
%>