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
out.print("thirdPage.jsp<br>");
out.print("하나의 페이지(pageContext) 속성: "+pageContext.getAttribute("name")+"<br>");
out.print("하나의 요청(request) 속성: "+request.getAttribute("name")+"<br>");
out.print("하나의 섹션(session) 속성: "+session.getAttribute("name")+"<br>");
out.print("하나의 애플리케이션(application) 속성: "+application.getAttribute("name")+"<br>");

//request.getRequestDispatcher("secondPage.jsp")
//.forwoard(request, response);
%>

<a href="firstPage.jsp">firstPage</a>
</body>
</html>