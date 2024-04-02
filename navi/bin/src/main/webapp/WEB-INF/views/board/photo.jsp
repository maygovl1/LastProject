<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!-- form  -->
<form id="submitForm" action="">
	<input type="hidden" name="page"> <input type="hidden"
		name="searchType" value=""> <input type="hidden"
		name="searchWord" value="">
</form>
<!-- form  -->
<!-- searchBar -->
<div data-pg-role="searchUI" data-pg-target="#submitForm"
	class="searchBox d-flex justify-content-end">
	<!-- 입력용도 UI  -->
	<select class="me-1" name="">
		<!-- 프롬프트 옵션  value는 공백(whitespace) -->
		<option value="">전체</option>
		<option value="name">이름</option>
		<option value="address">주소</option>
	</select> <select class="me-1" name="">
		<option value="">전체</option>
		<option value="name">이름</option>
		<option value="address">주소</option>
	</select>
	<div class="fieldset flex">
		<input class="me-1" type="text" name="searchWord"
			data-pg-init-value="" title="검색어를 입력해주세요" placeholder="검색어를 입력해주세요">
		<button type="button" class="btn btn-primary" data-pg-role="searchBtn">검색</button>
	</div>
</div>
<!-- searchBar -->

<!-- ui : 포토공간목록 s -->
<div class="row row-cols-1 row-cols-md-4 g-4 photo_list">


<c:forEach items="${photoList}" var="pl">
	<!-- col -->
	<div class="col">
		<a href="${pageContext.request.contextPath }/board/photo/${pl.bpId}">
			<div class="card">
				<div class="photo_img">
					<div class="img-in no-img">
						<img src="./resources/images/prog/navi.jpg" class="card-img-top"
							alt="">
					</div>
				</div>
				<div class="card-body">
					<strong class="card-title"> <em class="text-elipsis">${pl.bpTitle }</em>
					</strong>
					<button class="kinBtn border-0">
						<i class="icon kin"></i> <i class="sr-only">즐겨찾기버튼</i>
					</button>
				</div>
				<ul class="card-footer d-flex justify-content-between border-0 py-0">
					<li>
						<button class="likeBtn active border-0">
							<i class="icon like"><em class="sr-only">좋아요</em></i>${pl.bpCnt }
						</button>
					</li>
					<li><span><i class="icon writer"><em
								class="sr-only">작성자</em></i>${pl.empName }</span></li>
					<li><span><i class="icon date"><em class="sr-only">날짜</em></i>${pl.bpRegDtStr}
					</span></li>
				</ul>
			</div>
		</a>
	</div>
	<!-- col -->
</c:forEach>
	
</div>

<!-- button -->
<div class="btn-box clearfix mt-4">
	<div class="right float-end">
		<!-- <button class="btn btn-danger">취소</button> -->
		<!-- 		<button class="btn btn-danger">삭제</button> -->
		<button onclick="moveAdd()" class="btn btn-primary">등록</button>
	</div>
</div>
<!-- button -->

<!-- pagenation -->
<div class="pageBox">
	<ul class="pagination justify-content-center">
		<li class="page-item"><a class="page-link" href="#"
			aria-label="Previous"> <span aria-hidden="true">«</span>
		</a></li>
		<li class="page-item"><a class="page-link" href="#">1</a></li>
		<li class="page-item"><a class="page-link" href="#">2</a></li>
		<li class="page-item"><a class="page-link" href="#">3</a></li>
		<li class="page-item"><a class="page-link" href="#"
			aria-label="Next"> <span aria-hidden="true">»</span>
		</a></li>
	</ul>
</div>
<!-- pagenation -->


<!-- 스크립트 넣기  -->
<script>
	//like,kin 버튼 클릭 시 .active 클래스 토글 , 
	//kin은 저정
	//like 는 클릭횟수에 대한 숫자증가
function moveAdd() {
	location.href = "${pageContext.request.contextPath }/board/photo/register"
}
</script>
<!-- 스크립트 넣기  -->
<!-- ui : 포토공간목록 e -->