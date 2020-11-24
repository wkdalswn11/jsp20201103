<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	HashMap<String,Object> mapData = new HashMap<>();
	mapData.put("name" ,"장민주");
	mapData.put("today", new java.util.Date());

%>

<c:set var="intArray" value="<%= new int[] {1,2,3,4,5} %>"/>
<c:set var="map" value="<%= mapData %>" />
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<title>forEach 태그</title>
</head>
<body>
<h2>1~100까지 홀수의 합</h2>
<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="sum" value="${sum + i }" />
</c:forEach>
총합 = ${sum }

<hr />

<h2>구구단: 4단</h2>
<ul>
<c:forEach var="j" begin="1" end="9">
	<li>4 * ${j } = ${4*j }</li>
</c:forEach>
</ul>

<hr />

<h2>int형 배열</h2>

<c:forEach var="i" items="${intArray }" begin="2" end="4" varStatus="status">
	${status.index }-${status.count }-[${i }] <br />
</c:forEach>

<hr />

<h2>Map</h2>

<c:forEach var="i" items="${map }">
	${i.key } = ${i.value } <br />
</c:forEach>

</body>
</html>