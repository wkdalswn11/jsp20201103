<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("jsp");
list.add("servlet");
list.add("html");
list.add("css");

request.setAttribute("mylist" , list);
%>
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
${mylist }
<hr />
${mylist[0] } <br />
${mylist[1] } <br />
${mylist[2] } <br />
${mylist[3] } <br />
${mylist[4] } <br />

<hr />
<%-- ${mylist.0 } <br /> .뒤에는 프로퍼티값이 들어가야하므로 숫자x --%>
<hr />
${mylist["0"] } <br />
${mylist["1"] } <br />
${mylist["2"] } <br />
${mylist["3"] } <br />


</body>
</html>