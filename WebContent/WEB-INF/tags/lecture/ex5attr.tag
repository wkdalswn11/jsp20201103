<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="myAttr" %>
<%@ attribute name="myAttr2" required="true" %>

<h3>attribute 사용 가능 태그</h3>
<h3>받은 myAttr : ${myAttr }</h3>
<h3>받은 myAttr2 : ${myAttr2 }</h3>