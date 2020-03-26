<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input{margin: 10px;}
fieldset{margin: 10px;}
</style>

</head>
<body>
	<form action="views.jsp" method="post">
	
		이름: <input type="text" name="name"><br>
		
		소개: <input type="text" name="text" placeholder="안녕하세요" style="height: 50px; width: 80px;"><br>
		
		<fieldset style='width:350px;'>
			<legend>연령 조사</legend>
			10대<input type="radio" name="age" value="10대">
			20대<input type="radio" name="age" value="20대">
			30대<input type="radio" name="age" value="30대">
			40대<input type="radio" name="age" value="40대">
		</fieldset>
		
		<fieldset style='width:350px;'>
			<legend>취미 조사</legend>
			책읽기<input type="checkbox" name="hobby" value="책읽기">
			춤추기<input type="checkbox" name="hobby" value="춤추기">
			멍때리기<input type="checkbox" name="hobby" value="멍때리기">
		</fieldset>
		<input type='submit' value='전송'>
	</form>
</body>
</html>