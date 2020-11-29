<%@ tag body-content="tagdependent" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag trimDirectiveWhitespaces="true" %>


<%-- 
<h3>dobody 저장</h3>
<jsp:doBody var="bodyText" scope="page"/>

${bodyText }
--%>

<jsp:doBody var="bodyText"/>
<c:out value="${bodyText }" escapeXml="ture"/>
