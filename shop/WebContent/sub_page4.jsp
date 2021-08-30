<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="cm.Util"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./style.css">
<style>
td {
	text-align: center;
}
</style>
</head>
<body>
	<header><%@include file="./header.jsp"%>
	</header>

	<section>
		<h1>참가자 등수 조회</h1>

		<table border="1">
			<tr>
				<td>참가번호</td>
				<td>참가자명</td>
				<td>총점</td>
				<td>평균</td>
				<td>등수</td>
			</tr>

			<%
			Connection con = Util.getConnection();
			Statement stmt = con.createStatement();
			String sql = "select  tat1.artist_id, artist_name, sum(point),sum(point) / count(*), rank() over(order by sum(point) desc) from tbl_artist_201905 tat1 inner join tbl_point_201905 tpt1 on tat1.artist_id = tpt1.artist_id group by tat1.artist_id, artist_name";
			ResultSet rs = stmt.executeQuery(sql);

			try {
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getObject(1)%></td>
				<td><%=rs.getObject(2)%></td>
				<td><%=rs.getObject(3)%></td>
				<td><%=String.format("%.2f", rs.getFloat(4))%></td>
				<td><%=rs.getObject(5)%></td>
			</tr>
			<%
			}
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</table>
	</section>


	<footer>
		<%@include file="./footer.jsp"%></footer>
</body>
</html>