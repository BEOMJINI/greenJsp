<%@page import="java.util.ArrayList"%>
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

<div align="center">
<form action="03_42_deletePro.jsp" method="post">
<h1>회원탈퇴</h1>
<table border="1">
<tr>
<td>패스워드</td>
<td><input type="text" name="delPw"></td>
</tr>
<tr>
				<td colspan="2" align="center">
				<button>입력완료</button>
				</td>

</table>
</form>
<br>
		<input type="button" value="메인화면" onclick="window.location.href='02_main.jsp'">
</div>
</body>
</html>