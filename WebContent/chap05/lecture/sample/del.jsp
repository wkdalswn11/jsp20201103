<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import= "chap05.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<% 

String i = request.getParameter("id");
List<Post> list = (List<Post>) application.getAttribute("list");
Integer.parseInt(i);
list.remove(i);
response.sendRedirect("post.jsp");


%>