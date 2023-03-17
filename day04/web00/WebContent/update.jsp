<%@page import="multi.MemberDAO3"%>
<%@page import="multi.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    String tel = request.getParameter("tel");
    MemberVO bag = new MemberVO();
    bag.setId(id);
    bag.setTel(tel);
    
    MemberDAO3 dao = new MemberDAO3();
    dao.update(bag);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: #81aad4;
}
</style>
</head>
<body>
<h3>회원정보수정이 완료되었습니다!</h3>
<hr>
id : <%= id %>의 전화번호를 수정하였습니다! <br>
수정한 전화번호는 <%= tel %> 입니다.
</body>
</html>