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
			String id = "";
			String pw = "";
			if (request.getMethod().equals("POST")) {
				id = request.getParameter("id");
				pw = request.getParameter("pw");
				
				if (id.isEmpty() || pw.isEmpty()) {
					request.setAttribute("error", "ID 또는 PW를 입력해주세요.");
					RequestDispatcher rd = request.getRequestDispatcher("loginOut.jsp");
					rd.forward(request, response);
					
					return;
				}
				
				// 로그인 처리
				if (session.isNew() || session.getAttribute("id") == null) {
					session.setAttribute("id", id);
					out.print("로그인 작업 완료!");
				}
				else {
					out.print("이미 로그인 상태입니다.");
				}
			}
			else if (request.getMethod().equals("GET")) {
				// 로그아웃 처리
				if (session != null && session.getAttribute("id") != null) {
					session.invalidate();
					out.print("로그아웃 작업 완료!");
					id = "";
					pw = "";
				}
				else {
					out.print("현재 로그인 상태가 아닙니다.");
				}
			}
		%>
		<br>
		<%=id%>
		<%=pw%>
	</body>
</html>