<%@page import="jstlel.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserVo vo0 = new UserVo();
	vo0.setNo(0L);
	vo0.setName("둘리0");
	
	pageContext.setAttribute("vo", vo0);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>scope(객체의 존속 범위)</h4>
	== page Scope =================<br>
	${vo.no } <br>
	${vo.name } <br>
	
	== request Scope =================<br>
	${requestScope.vo.no } <br>
	${requestScope.vo.name } <br>
		
	== session Scope =================<br>
	${sessionScope.vo.no } <br>
	${sessionScope.vo.name } <br>
	
	== application Scope =================<br>
	${applicationScope.vo.no } <br>
	${applicationScope.vo.name } <br>
</body>
</html>