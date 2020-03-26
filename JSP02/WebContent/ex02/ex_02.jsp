<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>response(폴더) -> ex02.jsp<br>
	구글 페이지 연동
	<%
		response.sendRedirect("http://www.google.co.kr");
	%>
</body>
</html>