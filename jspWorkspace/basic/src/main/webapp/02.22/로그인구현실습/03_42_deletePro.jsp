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
<%
request.setCharacterEncoding("utf-8");

List<String> idList=  ( List<String>)session.getAttribute("idList" ); // Object 타입으로 업케스팅 저장
List<String> pwList=  (List<String>)session.getAttribute("pwList" );
List<String> nameList= (List<String>)session.getAttribute("nameList" );
List<String>genderList=(List<String>)session.getAttribute("genderList" );

ArrayList<String> ids = new ArrayList<String>(idList);
ArrayList<String> pws = new ArrayList<String>(pwList);
ArrayList<String> names = new ArrayList<String>(nameList);
ArrayList<String> genders = new ArrayList<String>(genderList);

int idx = (int) session.getAttribute("idx");
String delPw = request.getParameter("delPw");




	 if(delPw.equals(pws.get(idx))){
		 ids.remove(idx);
		 pws.remove(idx);
		 names.remove(idx);
		 genders.remove(idx);
		 
		 idList = ids;
		 pwList = pws;
		 nameList = names;
		 genderList = genders;

		 session.setAttribute("idList", idList);
		 session.setAttribute("pwList", pwList);
		 session.setAttribute("nameList", nameList);
		 session.setAttribute("genderList", genderList);
		 session.setAttribute("idx", null);
		 response.sendRedirect("02_main.jsp");
		 return;
	 }
	 
	 response.sendRedirect("03_41_deleteForm.jsp");

%>
</body>
</html>