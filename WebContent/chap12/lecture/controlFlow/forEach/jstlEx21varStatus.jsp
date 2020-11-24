<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("html");
list.add("servlet");
list.add("css");
list.add("jquery");
list.add("js");

request.setAttribute("myList", list);
%>
<ul>
	<c:forEach items="${myList }" var="elem" varStatus="status" begin="2" end="4"> <%-- varStatus의 이름은 정해주기 나름 맘대로정해도 됨 --%>
		<li>${status.count} : ${status.index} : ${elem }</li>  <%-- count 프로퍼티는 루프가 몇번돌고있는지 알려줌  --%>
	</c:forEach>											   <%-- index 프로퍼티는 몇번째 인덱스인지 알려줌 --%>
</ul>
</body>
</html>