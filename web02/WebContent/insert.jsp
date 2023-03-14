<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 브라우저가 보낸 데이터를 받아야 함. => 자바로 짜야함. -->
    <!-- 브라우저가 보낸 데이터를 받을 때 사용하는 부품 필요함. -->
    <%//Scriptlet - 조금 코드를 써서 만드는 작은 프로그램, jsp페이지에서 자바 코드를 실행할 때 사용되는 코드 블록
    //main이 없음
    //자바코드 넣는 부분
    //HttpServletRequest request = new HttpServletRequest();
    //tomcat은 미리 request를 만들어서 내장시켜둠
    String id = request.getParameter("id"); //"appe"
    String pw = request.getParameter("pw"); //"1234"
    String name = request.getParameter("name"); //"apple"
    String tel = request.getParameter("tel"); //"010"
    %>
    <!--3. 브라우저에게 결과를 알려주기 위한 html코드가 미리 들어있음. -->
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
회원가입 요청되었음.
<hr color="blue">
가입한 id : <%= id %> <br>
가입한 pw : <%= pw %> <br>
가입한 name : <%= name %> <br>
가입한 tel : <%= tel %>
</body>
</html>