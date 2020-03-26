<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	h1{text-align: center;}
	div{height: 200px;}
</style>

</head>
<body>

	<%@include file="../header.jsp" %> <!-- error.jsp에서 header.jsp 연결 자체는 상대경로로, error 폴더의 상위폴더의 header.jsp로 할 수 있다-->
	<h1 style="color: red;">에러 입니다</h1>
	<div></div>
	<%@include file="../footer.jsp" %>	
	
</body>
</html>