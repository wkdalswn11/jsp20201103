<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("a", "java");
map.put("b", "html");
map.put("c", "css");
map.put("d", "jsp");
map.put("3", "servlet");
map.put("class", "spring");
map.put("my key", "my value"); 

request.setAttribute("mymap" , map);

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
${mymap }
<hr />
${mymap.a } <br /> <%-- map은 bean 처럼 .을쓰고 .뒤에 key를 써주면 value 값이 나온다--%>
${mymap.b } <br />
${mymap.c } <br />
${mymap.d } <br />
<hr />
${mymap['3'] } <br />   <%-- 숫자나 키워드(class)  띄어쓰기가있다면 프로퍼티가될수없으므로 [''] 이렇게써줘야함--%>
${mymap['class'] } <br />
${mymap['my key'] } <br />
<hr />
${mymap["a"] } <br />  <%-- map을 사용할때 [] 안에는 꼭 따옴표를 써야함  --%>
${mymap["b"] } <br />
${mymap["c"] } <br />
</body>
</html>