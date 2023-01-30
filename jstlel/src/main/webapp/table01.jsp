<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int nRow = Integer.parseInt(request.getParameter("r"));
	int nCol = Integer.parseInt(request.getParameter("c"));
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellspacing="0" cellpadding="10">
		<% 
		for(int i = 0; i < nRow; i++) {	
		%>
		<tr>
			<%
				for(int j = 0; j < nCol; j++) {
			%>
				<td>cell(<%=i %>,<%=j %>)</td>
			<%
				}
			%>
		</tr>
		<% 
		}
		%>
	</table>
</body>
</html>