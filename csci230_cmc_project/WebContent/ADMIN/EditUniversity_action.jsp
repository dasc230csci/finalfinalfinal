<%@page language="java" import="UI.*" import = "Entity.*, java.util.*"%>
<%@include file="adminVerifyLogin.jsp"%>
<%
AdminUI adminUi = (AdminUI)session.getAttribute("adminUi");
ArrayList<String> schoolInfo = new ArrayList<String>();
String schoolName = request.getParameter("schoolInput");
String state = request.getParameter("stateInput");
String location = request.getParameter("locationInput");
String control = request.getParameter("controlInput");
String numStudents = request.getParameter("numStudentsInput");
String percFemale = request.getParameter("percFemaleInput");
String satV = request.getParameter("satvInput");
String satM = request.getParameter("satmInput");
String expenses = request.getParameter("expensesInput");
String finanAid = request.getParameter("finanAidInput");
String numApps = request.getParameter("numAppsInput");
String admitted = request.getParameter("admitInput");
String enrolled = request.getParameter("enrolInput");
String acedemicS = request.getParameter("acScaleInput");
String qualOfLifeS = request.getParameter("qualScaleInput");
String socialS = request.getParameter("socScaleInput");
String emphases1 = request.getParameter("emphases1");
String emphases2 = request.getParameter("emphases2");
String emphases3 = request.getParameter("emphases3");
String emphases4 = request.getParameter("emphases4");
String emphases5 = request.getParameter("emphases5");
ArrayList<String> emphases = new ArrayList<String>();
schoolInfo.add(schoolName);
schoolInfo.add(state);
schoolInfo.add(location);
schoolInfo.add(control);
schoolInfo.add(numStudents);
schoolInfo.add(percFemale);
schoolInfo.add(satV);
schoolInfo.add(satM);
schoolInfo.add(expenses);
schoolInfo.add(finanAid);
schoolInfo.add(numApps);
schoolInfo.add(admitted);
schoolInfo.add(enrolled);
schoolInfo.add(acedemicS);
schoolInfo.add(socialS);
schoolInfo.add(qualOfLifeS);
emphases.add(emphases1);
emphases.add(emphases2);
emphases.add(emphases3);
emphases.add(emphases4);
emphases.add(emphases5);
for(int i =0 ; i < emphases.size() ;i++){
	int cnt =0;
	if(emphases.get(i).equals("")){
		for(int j = i; j < emphases.size();){
			if(!emphases.get(j).equals("")){
				i-=cnt;
				break;
			}
			else{
				emphases.remove(j);
				cnt +=1;
			}
		}
	}
}
schoolInfo.addAll(emphases);
if(adminUi.editUniversity(schoolInfo)){
	response.sendRedirect("ManageUniversityMenu.jsp");
}
else{
	response.sendRedirect("EditUniversity.jsp?Error=1&schoolName="+schoolName);
}
%>