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
제목 : <input type="text" value="${list[param.id].title }" readonly />
<br />
<textarea cols="30" rows="3" readonly>${list[param.id].body }</textarea>
<br />
<a href="jstlEx25.jsp">게시글 작성</a>

<hr />

<pre>
	<c:out value="${list[param.id].body }" /> <%-- 게시물에 script등의 게시글로 다른게 뜨게하는걸 방지함 빼먹지않고 쓰는게 좋음--%>
</pre>
</body>
</html>