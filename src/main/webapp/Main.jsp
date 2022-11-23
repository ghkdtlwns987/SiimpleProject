<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br>
	<fieldset><legend>로그인 유/무</legend>
	<% 
		String id = (String)session.getAttribute("id");
	%>
	<table width=500>
		<% if(id == null) { %> 
			<td><a href="Login.html"><button>로그인</button></a></td>	
		<% }else{ %>
			<% out.print(id + " 님 안녕하세요"); %>
			<td><a href="Logout"><button>로그아웃</button></a></td>	
		<%} %>
	</table>
	</fieldset>
	<br>
	<br>
	<br>
	
	<fieldset><legend>기능 부분</legend>
	<table width=450>
		<td><a href="Print_all.jsp"><button>DB 전체 출력</button></a></td>
		<td><a href="Insert.html"><button>DB 삽입</button></a></td>
		<td><a href="Search.html"><button>DB 검색</button></a></td>
		<td><a href="Update.html"><button>DB 수정</button></a></td>
		<td><a href="Delete.html"><button>DB 삭제</button></a></td>
	</table>
	</fieldset>
</body>
</html>