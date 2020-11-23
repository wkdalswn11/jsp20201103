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
equal = ${param.param1 eq param.param2 } <br />
같다 = ${param.param1 == param.param2 } <hr />
not equal = ${param.param1 ne param.param2 } <br />
같지않다 = ${param.param1 != param.param2 } <hr />
lt = ${param.param1 lt param.param2 } <br />
오른쪽이크다 = ${param.param1 < param.param2 } <hr />
gt = ${param.param1 gt param.param2 } <br />
왼쪽이크다 = ${param.param1 > param.param2 } <hr />
le = ${param.param1 le param.param2 } <br />
오른쪽이크거나 같다 = ${param.param1 <= param.param2 } <hr />
ge = ${param.param1 ge param.param2 } <br />
왼쪽이 크거나같다 = ${param.param1 >= param.param2 } <hr />
</body>
</html>