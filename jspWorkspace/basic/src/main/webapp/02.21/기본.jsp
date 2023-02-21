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
	[1] JSP는 자바 서버 페이지의 약자이다.
	
	[2] JSP의 역할
		HTML 페이지에서 아래 4개의 태그를 추가로 사용할 수 있다.
	
		(1) 지시자(Directive) 태그			<%@ %>
		(2) 표현식(Expression) 태그		<%= %>
		(3) 스크립트릿(Scriptlet) 태그		<%  %>
		(4) 선언자(Declaration) 태그		<%! %>		(사용하지 않음)
 --%>
	<%--
	[1] 스크립트릿 태그
		(1) 사용법 : <% %>
		(2) 자바 변수를 사용할 수 있다.
	
	[2] 익스프레션 태그
		(1) 사용법 : <%= %>
		(2) 자바 변수를 출력할 수 있다.
--%>
	<%--
### get 방식

	1. url 뒤에 쿼리스트링값으로 보여서 값전달이 된다 
	2. url 데이타 노출되서 보안에 취약하다 
	3. 캐싱할 수 있다 ⇒ 쿼리스트링 값에서 직접적으로 값 수정이 가능하다 
	4. url 뒤에 붙여서 가기때문에 데이터 크기 정해져있다 
	5. 검색 할때 → 보안이 필요없고 간단한 데이터 전송은 get방식으로 한다 

### post 방식

	1. url에 노출이 되지 않는다 . request body 안에 form data 로 값이 숨겨서 전달한다 
	2.  url 보이지 않고 캐싱도 되지 않기 때문에 기본적인 보안이 되어있다 
	3. 데이터 크기가 get 방식보다 자유롭다 , 이미지, 오디오, 비디오 파일도 전송가능
 --%>
	<%--
	  [문제1] 10부터 50까지 arr 배열에 저장후 배열안의 모든값을 출력한다.
		[정답1] 10 20 30 40 50             <h1> </h1>
	
		[문제2] array 배열안의 모든값의 합을 출력한다.
		[정답2] 150
--%>
	<%
	int[] arr = { 10, 20, 30, 40, 50 };
	String data = "";
	for (int i = 0; i < arr.length; i++) {
		//자바에서 html 태그를 생성하는 방식 , system 없음
		out.println("<h1>" + arr[i] + "</h1>");
		data += arr[i] + " ";
	}
	out.println("___________");
	%>
	<h1>
		<%
		out.println(data);
		%>
	</h1>

	<%
	out.println("___________");
	int sum = 0;
	for (int i = 0; i < arr.length; i++) {
		sum += arr[i];
	%>

	<h1>
		<%=arr[i]%></h1>
	<%
	}
	%>
	<h1>
		sum=
		<%=sum%></h1>




</body>
</html>