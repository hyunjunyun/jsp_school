<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%

%>
<body>

	<header>
		<%@include file="./header.jsp"%>
	</header>

	<section>


		<form action="./sub_page1.jsp">
			<input type="text" name="id"> <input type="submit">
			<%

			%>
		</form>

	</section>

	<footer>
		<%@include file="./footer.jsp"%>
	</footer>
</body>
</html>