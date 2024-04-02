   <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<link type="text/css" rel="stylesheet" href="<c:url value='/resources/css/chat/error.css'/>"/>
<div class="mainbox">
	<div class="err">405</div>
	<div class="msg">
		<p class ="page">METHOD NOT ALLOWED</p>
		<div class="far3">
			<img src="${pageContext.request.contextPath}/resources/images/main/objBlue.png">
		</div>
		<div class="btn" id="return">
			<span>RETURN</span>
			<div class="dot"></div>
		</div>
	</div>

</div>

<script>
	document.getElementById("return").addEventListener("click", function(event) {
				event.preventDefault();
				history.back();
			});
</script>