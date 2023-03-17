<%@page import="multi.BbsDAO"%>
<%@page import="multi.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String no = request.getParameter("no");
    String content = request.getParameter("content");
    
    BbsVO bag = new BbsVO();
    bag.setNo(Integer.parseInt(no));
    bag.setContent(content);
    
    BbsDAO dao = new BbsDAO();
	dao.update(bag);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body { /* 컨트롤 + / - 자동주석, 태그선택! */
	background: #256dd9;
}
</style>
</head>
<body>
게시판 수정이 완료되었습니다!
<hr color = "blue">
당신이 수정을 원하는 번호는 <%= no %><br>
당신이 수정을 원하는 내용은 <%= content %>
</body>
</html>