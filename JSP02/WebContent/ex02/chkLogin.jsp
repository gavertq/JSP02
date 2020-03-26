<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkLogin.jsp<br>
	<%
	String id="1", pwd="1", name="하나";
	request.setCharacterEncoding("utf-8");
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))){
		response.sendRedirect("main.jsp");
	}else{%>
	
	<script type="text/javascript">
		alert("로그인 실패");
		location.href="loginForm.jsp"; // <-response 대신 이걸 쓰면 alert 후 loginForm.jsp를 부른다
	</script>
	<%
		//response.sendRedirect("loginForm.jsp"); //이걸로 창을 부르면 브라우저에서 위의 alert창을 던지기 전에 이 명령어를 먼저 수행해서 loginForm.jsp를 불러와, alert볼 수 x
	}
	%>

</body>
</html>