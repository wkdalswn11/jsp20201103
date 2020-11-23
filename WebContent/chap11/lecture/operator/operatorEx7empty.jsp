<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>empty</h3>
null : ${empty abc } <br />
"" : ${empty "" } <br /> <%-- 있어도 빈 string 이면 true --%>

<%
List list = new ArrayList<>();
pageContext.setAttribute("list", list);
%>
list : ${empty list } <br /> <%-- list가 있지만 비어있어서 true --%>

<%
Map map = new HashMap();
pageContext.setAttribute("map", map);
%>
map: ${empty map } <br />   <%-- map이 있지만 비어있어서 true --%>

<hr />
${not empty abc } <br />  <%-- 비어있지 않은지를 확인하려면 not empty --%>
</body>
</html>