<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 회원 전체 검색 </h1>
	<fieldset><legend>로그인 유/무</legend>
	<center><table width=500 border="2"></center>
		<tr>
			<td>ID</td>
			<td>PW</td>
			<td>Name</td>
			<td>Address</td>
		</tr>

	<% 
		request.setCharacterEncoding("UTF-8");
	
		Connection conn = null;
		PreparedStatement psmt = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String dbid = "simple_project_1";
			String dbpw = "1234";
			conn = DriverManager.getConnection(url, dbid, dbpw);
	
			if (conn != null) {
				System.out.println("DB Connected");
				String query = "SELECT * FROM S_USER";
				psmt = conn.prepareStatement(query);
	
				ResultSet rs = psmt.executeQuery();
	
				while (rs.next()) {
					String id = rs.getString(1);
					String pw = rs.getString(2);
					String name = rs.getString(3);
					String address = rs.getString(4);
					
					out.print("<tr><td>" + id + "</td>");
					out.print("<td>" + pw + "</td>");
					out.print("<td>" + name + "</td>");
					out.print("<td>" + address + "</td></tr>");

				}
	
			} else {
				System.out.println("DB 연결 실패");
			}
		} catch (Exception e) { // Exception e 는 모든 exception 을 모두 검사하기 때문에 과부하가 올 수 있음. => 해당 클래스에 맞는
								// Exception을 선언해주는게 좋음.
			System.out.println("Get Connection Failed...");
			e.printStackTrace(); // exception 출력
		} finally {
			try {
				if (psmt != null) { // null 을 닫게 되면 error 가 발생할 수 있기 때문
					psmt.close();
					conn.close();
				}
				if (conn != null) { // null 을 닫게 되면 error 가 발생할 수 있기 때문
					psmt.close();
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	
	%>
		</table>
		</fieldset>
		<br><br>
		<center><a href="Main.jsp"><button>메인페이지로 이동</button></a></center>
		
</body>
</html>