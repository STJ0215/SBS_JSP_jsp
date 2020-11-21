<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, java.io.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>스크립트로 구구단 출력</h3>
	<!-- 1번째 -->
	<%
		for (int a = 2; a <= 9; a++) {
			for (int b = 1; b <= 9; b++) {
				out.print(a + " * " + b + " = " + (a * b));
				%>
				<br>
				<%
			}
		}
	%>
	<br>
	<hr/>
	<br>
	<!-- 2번째 -->
	<%
		for (int a = 2; a <= 9; a++) {
			for (int b = 1; b <= 9; b++) {
				%>
				<%=a%> * <%=b%> = <%=a * b%>
				<br>
				<%
			}
		}
	%>
</body>
</html>