<%@page import="multi.MemberVO"%>
<%@page import="multi.MemberDAO3"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//클라이언트가 입력한 no를 서버에서 받아주기(자바로)
    	String id = request.getParameter("id");//String
    	//JSP안에 만들어진 변수는 서버의 RAM에 저장되는 지역변수
	 	MemberDAO3 dao = new MemberDAO3();
    	MemberVO bag = dao.one(id);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body { /* 컨트롤 + / - 자동주석, 태그선택! */
	background: #91b9cc;
}
</style>
</head>
<body>
<h3>검색할 아이디는 <%= id %>입니다.</h3>
<hr>
비밀번호 : <%= bag.getPw()%><br>
이름 : <%= bag.getName()%><br>
전화번호 : <%= bag.getTel()%>
</body>
</html>