<%@page import="java.util.Random"%>
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
Random r = new Random();

String play = request.getParameter("play");
System.out.println("play= "+play);

int num = r.nextInt(10)+1;

if(play.equals("gameStart")){
	
}
else if(play.equals("gamePlaying")){
	
	
}
%>

<h1>정답= <%= num %></h1>
<h1>업다운 게임</h1>
<form action = "updownGamePlayPro.jsp">
<input type="hidden" name ="num" value="<%= num %>">
<input type="number" name ="result" value = "0">
<input type="submit" value="전송">
</form>
</body>
</html>