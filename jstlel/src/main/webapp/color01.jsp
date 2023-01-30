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
		String color = request.getParameter("color");
		if("red".equals(color)) {
	%>
	<h1 style='color:red'>Hello World</h1>
	<%
	} else if("blue".equals(color)) {
	%>
	<h1 style='color:blue'>Hello World</h1>
	<%
	} else if("green".equals(color)) {
	%>
	<h1 style='color:green'>Hello World</h1>
	<%
	} else {
	%>
	<h1 style='color:black'>Hello World</h1>
	<%
	}
	%>
</body>
</html>