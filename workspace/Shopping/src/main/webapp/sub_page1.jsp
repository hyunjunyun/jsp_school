<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = "132123";
%>
<!DOCTYPE html>
<html>
<head>r
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<%@include file="./header.jsp"%>
	</header>

	<section>
		<a href="./sub_page2.jsp?id=<%=id%>">눌러 !!</a>
	</section>

	<footer>
		<%@include file="./footer.jsp"%>
	</footer>
</body>
</html>