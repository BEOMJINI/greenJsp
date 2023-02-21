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
	<%--
### 이동방법

	form 태그는 get, post 두가지 방법으로 데이터 전송가능하다

	onclick 은 get방식만 사용할 수 있다

	form 데이터 -> action : 데이터를 이동할 페이지(경로)
	          -> mehtod : 데이터를 보내는 방법 

	사용자가 입력한 값들이 action 페이지로 넘어간다
	input -> value: 사용자가 입력한 값 저장 
    input -> name : 변수 이름 
    
    name = value;
    request.setParameter(name,value);
    
    // URL뒤에?su1=12&su2=34  queryString--> 값전달 : get 
    		
    		
       데이터를 다른 JSP 페이지로 전달하는 방법 3가지 
		
		(1) form   : action="next.jsp"과 submit버튼
		(2) a      : href="next.jsp"
		(3) button : onclick="window.location.href='next.jsp'"
 --%>

	<%
	Random rand = new Random();
	int rnum = rand.nextInt(10) + 1;
	%>

	<h2>홀짝 게임</h2>

	<form action="페이지이동Pro1.jsp" method="post">

		홀수 1 입력 짝수면 2입력 <br> 
		<input type="hidden" name="rnum" value=<%=rnum%> /> 
		<input type="number" name="result" /> 
		<input type="submit" value="Pro1로 전송" /> 
		<input type="button" value="Pro2로 전송"  onclick="goNextPage(<%=rnum%>)" /> 
		<a href="기본.jsp"> 기본.jsp로 이동 </a>
	</form>
	<script>
 
 function goNextPage(num){
	 let value = document.querySelector("input[name='result']").value;
	 location.href="페이지이동Pro2.jsp?rnum="+num+"&result="+value;
 }
 
 </script>

</body>
</html>