<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    String dollor = request.getParameter("dollor");
    int dollor2 = Integer.parseInt(dollor);
    int won = 1283;
    int result = dollor2 * won;
 %><%= result %>
