<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<h1>관리자 페이지</h1>
		
		<a href="02_main.jsp"><% session.setAttribute("idx", null); %> 로그아웃 </a>
		<br>
		<a href="01_12_adminUserList.jsp">회원관리</a>
	</div>
</body>
</html>