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
${pageScope.pageAttr1 } <br />				<%-- page객체라서 여기서는 볼수없음 --%>
<hr />
${ requestScope["req Attr1"] } <br />  		<%-- 띄어쓰기가 있기때문에 이렇게 써야함 --%>
${ requestScope.reqAttr2 } <br />
${ reqAttr2 } <br />						<%-- 같은이름으로 없으니 그냥 써도 상관없음 --%>
<hr />
${ sessionScope.sesAttr2 } <br />
${ sesAttr2 } <br />			   			<%-- 같은이름으로 없으니 그냥 써도 상관없음 --%>
${ sessionScope.reqAttr2 } <br />  			<%-- 같은이름으로 위에 reqAttr2가 있으므로 session에서 찾고싶다면 이렇게써야함 --%>
<hr />
${ applicationScope.reqAttr2 } <br />		<%-- 같은이름으로 위에 reqAttr2가 있으므로 application 에서 찾고싶다면 이렇게써야함 --%>
${ applicationScope.appAttr1 } <br />
${ appAttr1 } <br />				   		<%-- 같은이름으로 없으니 그냥 써도 상관없음 --%>
${ applicationScope["app Attr3"] } <br />  	<%-- 띄어쓰기가 있기때문에 이렇게 써야함 --%>
<hr />
</body>
</html>