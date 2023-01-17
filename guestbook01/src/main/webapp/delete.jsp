<%@page import="com.douzone.guestbook.vo.GuestBookVo"%>
<%@page import="com.douzone.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	Long no = Long.parseLong(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestBookVo guestBook = new GuestBookDao().findNo(no);
	
	if (guestBook.getPassword().equals(password)) {
		new GuestBookDao().deleteByPassword(no, password);
		response.sendRedirect("/guestbook01");
	} else {
%>		
		<script type="text/javascript">
			alert("비밀번호가 틀렸습니다.");
			location.href = "/guestbook01/deleteform.jsp?no=" + <%=no%>;
		</script>
<%	
	}
%>