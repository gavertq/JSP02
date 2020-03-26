<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	input{margin: 10px;}
	h1{text-align: center;}
	table{margin: 0 auto;}
	.td{text-align: center;}
</style>

</head>
<body>
	<h1>설문 조사</h1>
	<form action="views_test.jsp" method="post">
	
		<table border="1">
			<tr>
				<td class="td">이름</td>			<td><input type="text" name="name"></td>		
			</tr>
			
			<tr>
				<td class="td">성별</td>
				<td>
					<input type="radio" name="gender" value="남자">남자
					<input type="radio" name="gender" value="여자">여자
				</td>		
			</tr>
			
			<tr>
				<td class="td">좋아하는 계절</td>
				<td>
					<input type="checkbox" name="season" value="봄">봄
					<input type="checkbox" name="season" value="여름">여름
					<input type="checkbox" name="season" value="가을">가을
					<input type="checkbox" name="season" value="겨울">겨울
				</td>		
			</tr>
			
			<tr>
				<td class="td"><input type='submit' value='전송'></td>
				<td class="td"><input type="reset" value='취소'></td>		
			</tr>
		</table>
		
	</form>
</body>
</html>