<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>firstPage.jsp<br>

<h1>범주 알아보기</h1>

	<%
	pageContext.setAttribute("name", "page man");
	request.setAttribute("name", "request man");
	session.setAttribute("name", "session man");
	application.setAttribute("name", "application man");
	
	out.print("firtstPage.jsp<br>");
	out.print("하나의 페이지(pageContext) 속성: "+pageContext.getAttribute("name")+"<br>");
	out.print("하나의 요청(request) 속성: "+request.getAttribute("name")+"<br>");
	out.print("하나의 섹션(session) 속성: "+session.getAttribute("name")+"<br>");
	out.print("하나의 애플리케이션(application) 속성: "+application.getAttribute("name")+"<br>");
	
	out.print("<hr>");
	out.print("범위: page(현재 페이지 내에서만 유지) < request(현재 페이지 내에서만 유지. 단, 다음 페이지로 값 넘기기 가능) "+
			"< session(해당 브라우저가 켜져 있는 동안 유지. 가장 자주 사용) < application(서버가 켜져 있는 동안 유지)");
	out.print("<hr>");
	

	request.getRequestDispatcher("secondPage.jsp").forward(request, response); //request값을 다음 페이지까지 넘길 수 있다. 근데 바로 secondPage가 켜짐
	%>

<a href="secondPage.jsp">secondPage</a>

</body>
</html>