<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<!-- sublayout -->

<div class="wrap sub clearfix">
	<!-- sub_top -->
	<div class="sub_container top">
		<div class="img-box">
			<div class="img-in">
				<img src="" alt="" />
			</div>
		</div>
		<div class="text-box">
			<div class="text-in">
				<em class="tit">project managment System</em> <em
					class="tit yel s-tit">SEAMLESS SOLUTIONS</em> <em class="tit m-tit">NAVIMINE</em>
			</div>
		</div>
	</div>
	<!-- sub_top -->
	<!-- sub_bottom -->
	<div class="sub_container bottom clearfix">

		<!-- 2차네비 -->
		<div class="sub_navi first">
			<div class="sub_inner">
				<ul class="navi_list d-flex">
					<li class="home"><a href="${pageContext.request.contextPath }/index.do"><span class="sr-only">홈으로</span></a>
					</li>
					<c:if test="${not empty main}">
					<li class="depth depth1">
						<div class="dropdown">
						
							<button class="btn dropdown-toggle" 
								type="button" data-bs-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">커뮤니티</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"
								style="">
									<c:forEach items="${main}" var="menu">
										<a class="dropdown-item" href="${pageContext.request.contextPath }${menu.rescUrl}">${menu.rescMenu}</a>
									</c:forEach>
							</div>
						</div>
					</li>
					</c:if>
					<!-- 2차메뉴 페이지일때  -->
					<c:if test="${not empty boardMenuList}">
					<li class="depth depth2">
						<div class="dropdown">
							
							<button class="btn dropdown-toggle" 
								type="button" data-bs-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">커뮤니티 목록</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton"
								style="">
									<c:forEach items="${boardMenuList}" var="menu">
										<a class="dropdown-item" href="${menu.rescUrl}">${menu.rescMenu}</a>
									</c:forEach>
							</div>
						</div>
					</li>
					</c:if>
					<!-- 2차메뉴 페이지일때  -->
				</ul>
			</div>
		</div>