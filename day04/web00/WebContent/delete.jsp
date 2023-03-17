<%@page import="multi.MemberDAO3"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");

    MemberDAO3 dao = new MemberDAO3();
    dao.delete(id);
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
<h3>회원탈퇴가 완료되었습니다!</h3>
<hr>
탈퇴한 id는 <%= id %> 입니다.
</body>
</html>