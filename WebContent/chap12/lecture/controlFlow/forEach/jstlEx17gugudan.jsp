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
<c:forEach var="i" begin="2" end="9">
	<h1>${i }단은 !</h1> 
	<c:forEach var="j" begin="1" end="9" step="2">  <%-- step은  몇개씩 건너뛸것인지 정함  여기서는 i*1 i*3 i*5 i*7 i*9 가나옴 --%>
		<h3>${i } &times; ${j } &equals; ${i*j }</h3>
	</c:forEach>
	<hr /> 
</c:forEach>

<c:set var="sum" value="0"/>
<c:forEach var="k" begin="1" end= "100">
	<c:set var="sum" value="${ sum+k}" />
</c:forEach>
<h3>1~100의 총합 = ${sum }</h3>
<hr />
<c:set var="hap" value="0"/>
<c:forEach var="s" begin="1" end="10" >
	<c:set var="hap" value="${hap+s }" />
</c:forEach>
<h3>1부터 10의 총합 = ${hap }</h3>


</body>
</html>