<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center><h2>Login Succeed!!</h2></center>
	<%
		String id = (String)session.getAttribute("id");
		out.print(id + "님 안녕하세요");
	%>
	
	<center><button><a href="Main.jsp">메인으로 돌아가기</a></button></center>
</body>
</html>