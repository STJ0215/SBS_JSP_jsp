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
		<%
			String msg = (String)request.getAttribute("error");
			
			if (msg == null) msg = "";
		%>
		<%=msg%>
		
		<form action="example6.jsp" method="POST">
			ID : <input type="text" name="id"> <br>
			PW : <input type="password" name="pw"> <br>
			<input type="submit" value="로그인">
		</form>
		<a href="example6.jsp">로그아웃</a>
	</body>
</html>