<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>
	<%response.setCharacterEncoding("utf-8"); %>
			
	<%
		out.print("이름: "+request.getParameter("name")+"<br>");
		out.print("소개: "+request.getParameter("text")+"<br>");
		out.print("나이: "+request.getParameter("age")+"<br>");
		out.print("취미: "+request.getParameter("hobby")+"<br>");
		
		//hobby값 여러개 가져오기
		String[] hobby = request.getParameterValues("hobby");
		if(hobby != null){ //취미가 선택 되어 있다면		
			for(String s:hobby){	out.print(s+" ");	}
			for(int i=0; i<hobby.length;i++ ){out.print(hobby[i]+" ");}
		}
		
		//input타입의 name들을 가져온다. 타입 text는 내용이 없어도 가져오는데 radio, checkbox 체크를 해야 가져오는 듯
		Enumeration paramEnum = request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			String name = (String)paramEnum.nextElement();
			out.print(name+"<br>");
		}
	%>
	<!-- 
		이름: <%=request.getParameter("name") %><br>
		소개: <%=request.getParameter("text") %><br>
		나이: <%=request.getParameter("age") %><br>
		취미: <%=request.getParameter("hobby") %>
	 -->
</body>
</html>