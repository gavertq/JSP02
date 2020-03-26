<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page errorPage = "error.jsp" %> <%--지시자로 에러 발생시 error.jsp로 페이지가 넘어가게 지시 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>errorPage.jsp<br>
<%= 10/0 %>
<!--  404 not found error 페이지 지정: 좌측 Servers 프로젝트 -> web.xml ->하단의 source
		-> 맨 아래로 스크롤 내리기 -> welcome-file-list에 디폴트 파일을 내가 만든걸로(index.jsp) 해주면 ... 브라우저 주소창에 프로젝트명만 넣어도 index.jsp가 실행됨
		-> <welcome-file-list>위에 <error-page>
									 <error-code>404</error-code>
									 <location>/error/error.jsp</location>
								  </error-page>	를 넣기. 404발생시 내가 만든 error.jsp가 실행됨-->
</body>
</html>