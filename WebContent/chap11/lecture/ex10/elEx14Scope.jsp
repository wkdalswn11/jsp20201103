<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%--
각 영역의 attribute를 <name, object> 쌍으로 갖고있는 map
pageScope
requestScope
sessionScope
applicationScope
 --%>
 <%
 pageContext.setAttribute("myAttr1", "my Value1!!!!!");
 pageContext.setAttribute("my attr1", "my value1");
 
 request.setAttribute("myAttr1" , "my request Value1!!!!!!");
 request.setAttribute("myAttr2" , "my Value2!!!!!!");
 request.setAttribute("my attr2" , "my Value2");
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
${myAttr1 } <br />        		 <%-- 아래와다르게 그냥쓸수있어서 myAttr1 을 그냥넣어준것 --%>
${pageScope["my attr1"] }  <br /><%-- my attr1은 띄어쓰기가 있어서 ${my attr1 } 을 쓸 수 없어서 pageScope는 map이라 이용해서쓴다 --%>
${myAttr2 } <br />
${requestScope["my attr2"] } <br />
${myAttr1 } <br />				 <%-- page영역부터 찾으므로 위에있는 my value1!!!!!!가 나옴  --%>
${requestScope.myAttr1 } 		 <%-- request영역에서 찾고싶다면 앞에처럼 지정해주면 됨 --%>
</body>
</html>