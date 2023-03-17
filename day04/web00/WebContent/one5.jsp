<%@page import="multi.WebtoonVO"%>
<%@page import="multi.WebtoonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//클라이언트가 입력한 id를 서버에서 받아주기(자바로)
String id = request.getParameter("id");//String
//JSP안에 만들어진 변수는 서버의 RAM에 저장되는 지역변수
WebtoonDAO dao = new WebtoonDAO();
WebtoonVO bag = dao.one(id);
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
	<table>
		<tr>
			<th>웹툰 ID</th>
			<td><%=bag.getId()%></td>
		</tr>
		<tr>
			<th>웹툰명</th>
			<td><%=bag.getTitle()%></td>
		</tr>
		<tr>
			<th>작가</th>
			<td><%=bag.getCartoonist()%></td>
		</tr>
		<tr>
			<th>평점</th>
			<td><%=bag.getStar()%></td>
		</tr>
		<tr>
			<th>이미지</th>
			<td><img src="img/<%=bag.getImg()%>" width=350 height=400></td>
		</tr>
		<!-- <tr class="table-info"> -->
	</table>
</body>
</html>