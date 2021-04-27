<%@ page 
	language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!--
			지시자 : 클라이언트의 어떠한 출력을 처리하거나 동적 데이터를 생성하기 위한 프로그램 코드 구분이 아닌
			JSP 컨테이너가 JSP 페이지를 파싱하여 자바 스스로 변환하는데 필요한 정보를 알려주기 위해 사용된다. 
		-->
		<%
			String user = request.getParameter("name");
			if (user == null) user = "Guest";
		%>
		
		<h1>
			Hello <%=user%>
		</h1>
	</body>
</html>