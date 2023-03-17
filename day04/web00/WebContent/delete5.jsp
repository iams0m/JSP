<%@page import="multi.WebtoonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//클라이언트가 입력한 no를 서버에서 받아주기(자바로)
    	String id = request.getParameter("id");
    	//JSP안에 만들어진 변수는 서버의 RAM에 저장되는 지역변수
	 	WebtoonDAO dao = new WebtoonDAO();
    	dao.delete(id);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body { /* 컨트롤 + / - 자동주석, 태그선택! */
	background: white;
}
</style>
</head>
<body>
<h3>아이디 : <%= id %> 의 작품을 삭제하였습니다!</h3>
</body>
</html>