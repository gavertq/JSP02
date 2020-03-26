
<%@page import="java.util.Scanner"%>
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
		System.out.print("2 수 입력:");
		int num01 = new Scanner(System.in).nextInt(); //콘솔에 입력하면
		int num02 = new Scanner(System.in).nextInt();
		out.print("두 수 합 : "+(num01+num02));	//브라우저에 결과 출력
	%>
</body>
</html>