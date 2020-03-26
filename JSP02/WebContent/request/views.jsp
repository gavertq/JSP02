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
		//위처럼 지정해서 name을 가져오면 hard coding.. 한 곳의 name을 바꾸면 모든 파일의 name을 일일히 찾아가서 바꿔야하는 수고가 발생한다
		//대책으로 아래의 enumeration을 사용하면 메소드로 name을 자동으로 가져오기 때문에 모든 파일의 name을 찾아가서 바꾸는 수고를 하지 않아도 된다.
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