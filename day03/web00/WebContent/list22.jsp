<%@page import="java.util.ArrayList"%>
<%@page import="multi.BbsVO"%>
<%@page import="multi.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	BbsDAO dao = new BbsDAO();
//5,6. dao가 리턴한 BbsVO가 들어간 ArrayList를 받는다.
ArrayList<BbsVO> list = dao.list();
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
	background: #91b9cc;
}
a{
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
<table class="table table-hover">
	<tr class="table-info">
		<td>no</td>
		<td>title</td>
		<td>content</td>
		<td>writer</td>
	</tr>
	<%//7. 가방 하나를 꺼낸다.
		for (BbsVO bag : list) {
	%>
	<tr>
		<td><%=bag.getNo()%></td>
		<td>
			<a href="http://localhost:8888/web00/one2.jsp?no=<%=bag.getNo()%>">
			<%=bag.getTitle()%>
			</a>
		</td>
		<td><%=bag.getContent()%></td>
		<td><%=bag.getWriter()%></td>
	</tr>
	<%}%> <!-- end for()  -->
</table>
</body>
</html>