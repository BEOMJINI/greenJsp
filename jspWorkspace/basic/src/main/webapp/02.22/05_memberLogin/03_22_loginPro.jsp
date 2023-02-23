<%@page import="memberLoginJava.MemberDAO"%>
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
	<script>

 function msgGo(msg, url){
	 alert(msg);
	 location.href=url;
 }

</script>

	<%
   request.setCharacterEncoding("utf-8");
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   
  MemberDAO mdao = MemberDAO.getInstance();
   
  if(id.equals("admin")&&pw.equals("admin")){ %>
	<script> msgGo("관리자님이 로그인하셨습니다" , "01_11_adminMain.jsp")</script>

	<%}
  
   int idx = mdao.loginCheck(id, pw);
   
   
   
   if(idx == -1){ %>

	<script> msgGo("로그인 실패" , "03_21_loginForm.jsp")</script>

	<% 
}else{ 
	session.setAttribute("idx", idx);
  %>
	<script> msgGo("<%=id %>님이 로그인하셨습니다" , "02_main.jsp")</script>

	<%} %>
</body>
</html>