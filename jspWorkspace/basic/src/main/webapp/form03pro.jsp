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

String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");

boolean ch1 = true;
boolean ch2 = true;

for(int i =0 ; i < num1.length(); i++){
	if((char)num1.charAt(i)<'0' ||(char)num1.charAt(i) >'9' ){
		ch1 = false;
	}
}

for(int i =0 ; i < num2.length(); i++){
	if(!Character.isDigit(num2.charAt(i))){
		ch2 = false;
	}
}

int n1 = 0;
int n2 = 0;
if(ch2 && ch1){
    n1 = Integer.parseInt(request.getParameter("num1"));
    n2 = Integer.parseInt(request.getParameter("num2"));
%>

<%}else{ %>
    <h1> 숫자가 아닌값이 있습니다 </h1>
    <%} %>

 <h1> 더 큰 숫자는 ?? 입니다 </h1>
 <h1> 두 숫자가 같습니다 </h1>
   
</body>
</html>