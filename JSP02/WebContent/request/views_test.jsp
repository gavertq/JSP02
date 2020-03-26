<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
hr{width: 150px; float: left;}
</style>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<%response.setCharacterEncoding("utf-8"); %>
			
	<%	
		Enumeration paramEnum = request.getParameterNames();
	
		while(paramEnum.hasMoreElements()){
			
			String name = (String)paramEnum.nextElement(); //요소 name 가져오기
			String[] result = request.getParameterValues(name); //name에 해당하는 결과 가져오기
			
			if(result != null){ //선택되어 있다면
				for(String r:result){out.print(name+": "+r+" <br>");}				
			}
			out.print("<hr><br>");
			
		}
	%>
</body>
</html>