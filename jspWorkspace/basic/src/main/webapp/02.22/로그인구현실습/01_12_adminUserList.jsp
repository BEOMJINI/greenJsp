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
		<h1>관리자 페이지(회원정보 확인하기)</h1>
		<form method="post" action="01_13_adminUserDelete.jsp?<%= index%>">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td>패스워드</td>
					<td>이름</td>
					<td>성별</td>
					<td>삭제</td>
				</tr>
				<%
				request.setCharacterEncoding("utf-8");
				List<String> idlist = (List<String>)session.getAttribute("idList");
				List<String> pwlist = (List<String>)session.getAttribute("pwList");
				List<String> namelist = (List<String>)session.getAttribute("nameList");
				List<String> genderlist = (List<String>)session.getAttribute("genderList");
				int index = -1;
				for(int i=0; i<idlist.size();i++){ 
					index=i;
				%>
				<tr>
				<td><%= idlist.get(i) %>
				<td><%= pwlist.get(i) %>
				<td><%= namelist.get(i) %>
				<td><%= genderlist.get(i) %>
				<td><button>삭제</button></td>
				</tr>cf
				<%} %>
			</table>
		</form>
		<br>
		
	</div>
	
	<script>
	const table = document.querrySeletor('table');
	
	</script>
</body>
</html>