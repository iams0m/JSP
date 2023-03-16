<%@page import="multi.BbsVO"%>
<%@page import="multi.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//클라이언트가 입력한 no를 서버에서 받아주기(자바로)
    	String no = request.getParameter("no");//String
    	//JSP안에 만들어진 변수는 서버의 RAM에 저장되는 지역변수
	 	BbsDAO dao = new BbsDAO();
    	BbsVO bag = dao.one(Integer.parseInt(no));
    	//dao.one(Integer.parseInt(no));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
body { /* 컨트롤 + / - 자동주석, 태그선택! */
	background: #91b9cc;
}
</style>
</head>
<body>
<h3>검색할 번호는 <%= no %>번 입니다.</h3>
<table class="table table-hover">
	<%-- <tr>
		<td>제목</td>
		<td><%= bag.getTitle()%></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%= bag.getContent()%></td>
	</tr>
	<tr>
		<td>글쓴이</td>
		<td><%= bag.getWriter()%></td>
	</tr> --%>
	<tr class="table-info">
		<td>제목</td>
		<td>내용</td>
		<td>글쓴이</td>
	</tr>
	<tr>
		<td><%= bag.getTitle()%></td>
		<td><%= bag.getContent()%></td>
		<td><%= bag.getWriter()%></td>
	</tr>
</table>
</body>
</html>