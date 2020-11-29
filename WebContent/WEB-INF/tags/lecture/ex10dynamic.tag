<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="attr0" %>  		 <%-- attr0은  dynamic-attributes에 포함이안된다--%>
<%@ tag dynamic-attributes="attr" %> <%-- 여기서의 attr은 page영역에서 map 으로 활용된다 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

${attr.attr1 }
<br />
${attr["attr2"] }
<br />

<hr />

<ul>
<c:forEach items="${attr }" var="entry">
 <li>${entry.key } : ${entry.value }</li>
</c:forEach>
</ul>