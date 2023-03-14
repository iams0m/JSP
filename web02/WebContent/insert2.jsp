<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 1.전달된 값 받아주세요.(request이용) -->
	<% 
	//나중에는 vo에 넣어서 할 예정.
	String no = request.getParameter("no");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	%>
	<!-- 2.dao에게 값 전달.(DAO이용) 생략 -->
	<!-- 3. 전달된 값을 출력하는 결과를 브라우저에 Html로 보내주세요. -->
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
게시판 글쓰기 요청되었음.
<hr color="blue">
NO : <%= no %> <br>
제목 : <%= title %> <br>
내용: <%= content %> <br>
작성자 : <%= writer %>
</body>
</html>