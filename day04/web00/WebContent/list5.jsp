<%@page import="multi.WebtoonVO"%>
<%@page import="multi.WebtoonDAO"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	WebtoonDAO dao = new WebtoonDAO();
ArrayList<WebtoonVO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
body { /* 컨트롤 + / - 자동주석, 태그선택! */
	background: white;
}
#b1{
	background: #2DB400;
}
a {
	text-decoration: none;
	color: black;
}

table {
	width: 100%;
	border-top: 1px solid #444444;
	border-collapse: collapse;
}

th, td {
	border-bottom: 1px solid #444444;
	padding: 10px;
	text-align: center;
}

thead tr {
	background-color: #0d47a1;
	color: #ffffff;
}

tbody tr:nth-child(2n) {
	background-color: #bbdefb;
}

tbody tr:nth-child(2n+1) {
	background-color: #e3f2fd;
}
</style>
</head>
<body>
	<h3>총 <%=list.size()%>개의 웹툰이 있습니다.
	</h3>
	<a href="webtoon.html">
		<button id="b1">돌아가기</button>
	</a>
	<%
		if (list.size() == 0) {
	%>
	<h3>등록된 웹툰이 없습니다!</h3>
	<br>
	<img src="img/null.jpg" width="250" height="250">
	<%
		} else {
	%>
	<table class="table table-hover">
		<tr>
			<th>id</th>
			<th>작품명</th>
			<th>작가</th>
			<th>평점</th>
		</tr>
		<%
			//7. 가방 하나를 꺼낸다.
		for (WebtoonVO bag : list) {
		%>
		<tr>
			<td><%=bag.getId()%></td>
			<td><a href="one5.jsp?id=<%=bag.getId()%>"> <%=bag.getTitle()%>
			</a></td>
			<td><%=bag.getCartoonist()%></td>
			<td><%=bag.getStar()%></td>
		</tr>
		<%
			}
		%>
		<!-- end for()  -->
	</table>
	<!-- end if -->
	<%
		}
	%>
</body>
</html>