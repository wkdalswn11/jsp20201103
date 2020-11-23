<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%--
pageContext *이걸 제외한 밑에는 모든 Map 타입이다*
----------------------------------------------------------------------
pageScope 		:	Map
requestScope 	:	Map
sessionScope 	:	Map
applicationScope :	Map
----------------------------------------------------------------------
param 			:	Map 		 각 영역의  attribute를 찾음 
paramValues 	:	Map 		 찾는 순서 : page, request, session, application (작은범위부터 큰쪽으로) 
----------------------------------------------------------------------

header 			:	Map  		 근데 여기 11가지일 경우에는 해당되지않음
headerValues 	:	Map
cookie 			:	Map
initParam 		:	Map
----------------------------------------------------------------------
 --%>
 
         						
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
${pageContext } <br />
${pageScope } <br />
${requestScope } <br />
${sessionScope } <br />
${applicationScope } <br />		
${param } <br />
${paramValues } <br />
${header } <br />
${headerValues } <br />
${cookie } <br />
${initParam } <br />
</body>
</html>