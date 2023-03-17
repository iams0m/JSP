<%@page import="multi.WebtoonDAO"%>
<%@page import="multi.WebtoonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="bag" class="multi.WebtoonVO"></jsp:useBean>
<jsp:setProperty property="*" name="bag" />
<% 
	WebtoonDAO dao = new WebtoonDAO();
	dao.insert(bag);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: white;
}
</style>
</head>
<body>
	<h3>작품이 등록되었습니다!</h3>
	<hr>
	<img src="img/<%=bag.getImg()%>" width=350 height=400>
</body>
</html>