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


/**
List<String> idList = new ArrayList<>((List<String>) session.getAttribute("idList"));
List<String> pwList = new ArrayList<>((List<String>) session.getAttribute("pwList"));
List<String> nameList = new ArrayList<>((List<String>) session.getAttribute("nameList"));
List<String> genderList = new ArrayList<>((List<String>) session.getAttribute("genderList"));
**/

int index = Integer.parseInt(request.getParameter("index"));

ids.remove(index);
pws.remove(index);
names.remove(index);
genders.remove(index);

idList = ids;
pwList = pws;
nameList = names;
genderList = genders;

session.setAttribute("idList", idList);
session.setAttribute("pwList", pwList);
session.setAttribute("nameList", nameList);
session.setAttribute("genderList", genderList);


out.println(ids);
out.println(idList);
response.sendRedirect("01_12_adminUserList.jsp");

%>
</body>
</html>