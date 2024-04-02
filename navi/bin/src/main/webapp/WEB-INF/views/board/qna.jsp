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
 
<!-- ui : table s -->
<table class="table text-center">
	<caption class="sr-only">나눔 목록 테이블입니다.</caption>

	<colgroup>
		<col style="width: 5%">
		<col style="width: 10%;">
		<col style="width: 15%;">
		<col style="width: 15%;">
		<col style="width: 15%;">
	</colgroup>

	<thead>
		<tr>
			<th><input type="checkbox"></th>
			<th scope="col">번호</th>
			<th scope="col">제목</th>
			<th scope="col">작성자</th>
			<th scope="col">답변상태</th>
			<th scope="col">등록일</th>

		</tr>
	</thead>
	<tbody>
		<!-- 일반 -->
		<tr>
			<th><input type="checkbox"></th>
			<th scope="row">000001</th>
			<td class="text-start">
				<!-- 새글일 때 new 클래스 추가 --> <a href="${pageContext.request.contextPath }/board/qna/detail" class="text-link d-flex new">
					<!-- icon new_icon 추가 --> <span class="icon new_icon"> <span
						class="sr-only">new</span>
				</span> <em class="text-elipsis">새글 HVDC 수전전력 단가 관련 문의</em>
			</a>
			</td>
			<td>유길상</td>
			<td><span class="category share">미답변</span></td>
			<td>24.03.01</td>
		</tr>
		<!-- 일반 -->
		<!-- new  -->
		<tr>
			<th><input type="checkbox"></th>
			<th scope="row">000002</th>
			<td class="text-start"><a href="${pageContext.request.contextPath }/board/qna/detail" class="text-link d-flex ">
					<em class="text-elipsis">가격결정자격 관련 문의</em>
			</a></td>
			<td>유길상</td>

			<td><span class="category disable">답변완료</span></td>
			<td>24.03.01</td>

		</tr>
		<!-- new -->

	</tbody>

</table>

<div class="btn-box clearfix mt-4">
	<div class="right float-end">
		<button onclick="moveAdd()" class="btn btn-primary">등록</button>
	</div>
</div>
<!-- 버튼 알아서 퍼가셈 -->
<!-- ui : table e -->

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

<script>
function moveAdd() {
	location.href = "${pageContext.request.contextPath }/board/qna/register"
}
</script>