<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	<%!int num = 0; %>
	 function num(){
		<% 				
			application.setAttribute("num", num);
			num++;
		%>
	 }
</script>

</head>
<body>

<table border="1">
	<tr>
		<th>주소</th><th>조회수</th>
	</tr>
	<tr>
		<td><a href="quiz_secondPage.jsp" onmousedown="num()">들어가기</a></td>
		<td><%out.print(application.getAttribute("num")); %></td>
	</tr>
</table>

</body>
</html>