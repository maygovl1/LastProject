<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
<%-- postscript --%>
<tiles:insertAttribute name="preScript"/>
<c:if test="${not empty message }">
	<script>
		alert("${message}");
	</script>
</c:if>
</head>
<body data-context-path="${pageContext.request.contextPath }">
<%-- header --%>
<tiles:insertAttribute name="headerMenu" />
<tiles:insertAttribute name="subMenu" />
<tiles:insertAttribute name="subMenu2" />
<%-- header --%>
<%-- content --%>
<tiles:insertAttribute name="contentPage"/>
<%-- content --%>
<%-- footer --%>
<tiles:insertAttribute name="subFooter"/>
<tiles:insertAttribute name="footer"/>
<%-- footer --%>

<%-- postscript --%>
<tiles:insertAttribute name="postScript"/>
<%-- postscript --%>
</body>
</html>














