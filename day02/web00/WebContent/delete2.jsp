<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//클라이언트가 입력한 no를 서버에서 받아주기(자바로)
    	String no = request.getParameter("no");//String
    	//JSP안에 만들어진 변수는 서버의 RAM에 저장되는 지역변수
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
삭제를 원하는 번호는 <%= no %>번 입니다.
</body>
</html>