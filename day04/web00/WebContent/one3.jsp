<%@page import="multi.ProductVO"%>
<%@page import="multi.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//클라이언트가 입력한 id를 서버에서 받아주기(자바로)
    	String id = request.getParameter("id");//String
    	//JSP안에 만들어진 변수는 서버의 RAM에 저장되는 지역변수
	 	ProductDAO dao = new ProductDAO();
    	ProductVO bag = dao.one(id);
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
<h3>검색할 아이디는 <%= id %> 입니다.</h3>
<table class="table table-hover table-striped">
	<tr>
		<td>상품아이디</td>
		<td><%= bag.getId()%></td>
	</tr>
	<tr>
		<td>상품명</td>
		<td><%= bag.getName()%></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%= bag.getContent()%></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><%= bag.getPrice()%></td>
	</tr>
	<tr>
		<td>제조회사</td>
		<td><%= bag.getCompany()%></td>
	</tr>
	<tr>
		<td>상품 이미지</td>
		<td><img src="img/<%=bag.getImg()%>" width=350 height=200></td>
	</tr>
	<!-- <tr class="table-info"> -->
</table>
</body>
</html>