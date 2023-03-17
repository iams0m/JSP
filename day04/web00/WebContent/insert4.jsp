<%@page import="multi.MovieDAO"%>
<%@page import="multi.MovieVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:useBean id="bag" class="multi.MovieVO"></jsp:useBean>
	<jsp:setProperty property="*" name="bag" />
	<%
	//0.전달된 값 받아주세요.(request이용)
	/* String id = request.getParameter("id");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String location = request.getParameter("location");
	String director = request.getParameter("director"); */

	//1.받은 데이터를 dao에게 주기 위해 가방을 만들어서 넣어주세요!
	//MovieVO bag = new MovieVO();
	//bag.setId(id);	
	//bag.setTitle(title);
	//bag.setContent(content);
	//bag.setLocation(location);
	//bag.setDirector(director);
	//2.dao에게 값 전달.(DAO이용)
	MovieDAO dao = new MovieDAO();
	dao.insert(bag);
	%>

<!-- 3. 전달된 값을 출력하는 결과를 브라우저에 Html로 보내주세요. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: #91b9cc;
}
</style>
</head>
<body>
	<h3>영화가 등록되었습니다!</h3>
</body>
</html>