<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	header{text-align: center;}
	a{margin-right: 20px;}
</style>

</head>
<body>

	<header>
		<hr>
			<a href="/JSP02/sub.jsp">서브페이지</a> <!-- 절대 경로로 설정. 어디서 접근하든(error_test.jsp나 main.jsp, sub.jsp 상관없이) 넘어갈 수 있게 -->
			<a  href="/JSP02/error/error_test.jsp">카페</a> <!-- 상대 경로면 error와 main, sub의 파일 위치가 달라 어느 한쪽에서는 404에러 발생 -->
			<a  href="/JSP02/main.jsp">메인 페이지</a>
			<input type="text">
			<input type="button" value="검색">		
		<hr>
	</header>

</body>
</html>