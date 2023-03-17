<%@page import="multi.WebtoonDAO"%>
<%@page import="multi.WebtoonVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    String star = request.getParameter("star");
    
    WebtoonVO bag = new WebtoonVO();
    bag.setId(id);
    bag.setStar(star);
    
    WebtoonDAO dao = new WebtoonDAO();
	dao.update(bag);
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
<h3>작품이 수정되었습니다!</h3>
<hr>
아이디 : <%= id %> 의 평점을 수정하였습니다.<br>
수정된 평점은  <%= star %>점 입니다.
</body>
</html>