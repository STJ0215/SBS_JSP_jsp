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
		<!-- 객체 생성 -->
		<jsp:useBean id="hello" class="com.edu.beans.BookBean"></jsp:useBean>
		
		<!-- Setter -->
		<jsp:setProperty property="title" value="JAVA" name="hello"/>
		<jsp:setProperty property="author" value="홍길동" name="hello"/>
		<jsp:setProperty property="publisher" value="SBS" name="hello"/>
		
		<!-- Getter -->
		<jsp:getProperty property="title" name="hello"/>
		<jsp:getProperty property="author" name="hello"/>
		<jsp:getProperty property="publisher" name="hello"/>
	</body>
</html>