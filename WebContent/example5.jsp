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
		<%!
			// 함수 선언
			public int sum(int a, int b) {
				return a + b;
			}
		%>
		
		<span>결과 : </span> <%=this.sum(20, 30)%>
	</body>
</html>