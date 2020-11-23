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
<%= pageContext %> <br />
${pageContext.request } <br />  		<%-- <%= pageContext.getRequest() %> 와 같은 역할을 한다 --%>
${pageContext.session } <br />  		<%-- getRequest() , getSession .... 메소드를 갖고있으므로 --%>
${pageContext.servletContext } <br />  <%-- pageContext는 bean이 아니지만 bean처럼 파라미터를 가져올수있다 --%>
${pageContext.response } <br />			
${pageContext.servletConfig } <br />
<hr />
<%= request.getContextPath() %> <br />
${pageContext.request.contextPath } <br />
<%= request.getCookies() %> <br />
${pageContext.request.cookies[0].name} <br />
${pageContext.request.cookies[0].value} <br />
</body>
</html>