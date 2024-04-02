<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="d-flex justify-content-center">
    <div class="card p-4">
        <h2 class="mb-4">비밀번호를 입력하여 인증하세요</h2>
        <form:form class="commonForm" action="${pageContext.request.contextPath}/mypage/verification" method="post">
            <div class="form-group">
                <input type="password" class="form-control mt-4 mb-4" id="password" name="password" required autocomplete="new-password">
            </div>
            <div class="form-group text-center">
                <button type="submit" class="btn btn-primary">확인</button>
            </div>
        </form:form>
        <c:if test="${not empty message}">
            <p>${message}</p>
        </c:if>
    </div>
</div>