<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    String tel = request.getParameter("tel");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: #97b2cc;
}
</style>
</head>
<body>
회원정보수정이 완료되었습니다!
<hr color="blue">
수정한 id는 <%= id %> 입니다. <br>
수정한 전화번호는 <%= tel %> 입니다.
</body>
</html>