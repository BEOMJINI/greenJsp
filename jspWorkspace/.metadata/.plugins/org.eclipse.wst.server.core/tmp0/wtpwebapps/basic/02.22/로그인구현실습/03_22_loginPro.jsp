<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

List<String> idlist = (List<String>)session.getAttribute("idList");
List<String> pwlist = (List<String>)session.getAttribute("pwList");
out.println(id);
out.println(pw);
out.println(idlist);
out.println(pwlist);
out.println(idlist.get(0));

	if(id.equals("admin") && pw.equals("admin")){
		response.sendRedirect("01_11_adminMain.jsp");
		return;
	}
	
for(int i=0; i<idlist.size(); i++){
	if(id.equals(idlist.get(i)) && pw.equals(pwlist.get(i))){
		
			session.setAttribute("idx", i);
			response.sendRedirect("02_main.jsp");
		return;
			
		
	}
	
}	
		response.sendRedirect("03_21_loginForm.jsp");

%>

</body>
</html>