<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

	
<!-- button -->
<div class="btn-box clearfix mt-4">
	<!-- 			<button onclick="moveList()" class="btn btn-secondary">목록</button> -->
	<div class="right float-end">
		<button onclick="moveList()" class="btn btn-danger">취소</button>
		<!-- 				<button class="btn btn-danger">삭제</button> -->
		<button onclick="moveAddList()" class="btn btn-primary">확인</button>
	</div>
</div>
<!-- button -->


<script>
	function moveList() {
		location.href = "${pageContext.request.contextPath }/wiki"
	}
	function moveAddList() {
		location.href = "${pageContext.request.contextPath }/wiki"
	}
</script>