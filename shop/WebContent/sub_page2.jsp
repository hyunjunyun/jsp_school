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
		<h1>참가자목록조회</h1>

		<table border="1">
			<tr>
				<td>참가번호</td>
				<td>참가자명</td>
				<td>생년월일</td>
				<td>성별</td>
				<td>특기</td>
				<td>소속사</td>
			</tr>

			<%
			Connection con = Util.getConnection();
			Statement stmt = con.createStatement();
			String sql = "select artist_id, artist_name, artist_birth, artist_gender, talent, agency from tbl_artist_201905 order by artist_id";
			ResultSet rs = stmt.executeQuery(sql);

			try {
				while (rs.next()) {

					String year = rs.getString(3).substring(0, 4);
					String month = rs.getString(3).substring(4, 6);
					String day = rs.getString(3).substring(6, 8);

					int t = rs.getInt(5);
					String tResult = "";
					if (t == 1) {
				tResult = "보컬";
					} else if (t == 2) {
				tResult = "댄스";
					} else if (t == 3) {
				tResult = "랩";
					}
			%>
			<tr>
				<td><%=rs.getObject(1)%></td>
				<td><%=rs.getObject(2)%></td>
				<td><%=String.format("%s년%s월%s일", year, month, day)%></td>
				<td><%=rs.getString(4).equals("F") ? "남" : "여"%></td>
				<td><%=tResult%></td>
				<td><%=rs.getObject(6)%></td>
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