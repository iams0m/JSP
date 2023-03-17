<%@page import="multi.ProductDAO"%>
<%@page import="multi.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="bag" class="multi.ProductVO"></jsp:useBean>
<jsp:setProperty property="*" name="bag" />
<%
	//0.전달된 값 받아주세요.(request이용)
/*String id = request.getParameter("id");
String name = request.getParameter("name");
String content = request.getParameter("content");
String price = request.getParameter("price");
String company = request.getParameter("company");
String img = request.getParameter("img");*/

//1.받은 데이터를 dao에게 주기 위해 가방을 만들어서 넣어주세요!

/*ProductVO bag = new ProductVO();
bag.setId(id);
bag.setName(name);
bag.setContent(content);
bag.setPrice(Integer.parseInt(price));
bag.setCompany(company);
bag.setImg(img);
//2.dao에게 값 전달.(DAO이용)
ProductDAO dao = new ProductDAO();
dao.insert(bag);*/
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
	<h3>상품이 등록되었습니다!</h3>
	<hr>
	<img src="img/<%=bag.getImg()%>" width=350 height=200>
</body>
</html>