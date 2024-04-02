<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!--inner-->
<div class="side_inner">
	<div class="content-box">
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
					data-pg-init-value="${condition.searchWord}" title="검색어를 입력해주세요"
					placeholder="검색어를 입력해주세요">
				<button type="button" class="btn btn-primary"
					data-pg-role="searchBtn">검색</button>
			</div>
		</div>
		<div class="content">
			<div class="inner html">
				<!-- ui : s -->
				<!-- ui : table s -->
				<table class="table task-list">
					<colgroup>
						<col style="width: 5%;">
						<col style="width: 10%;">
						<col style="width: 10%;">
						<col style="width: 40%;">
						<col style="width: 15%;">
						<col style="width: 15%;">
						<col style="width: 10%;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">선택</th>
							<th scope="col">프로젝트ID</th>
							<th scope="col">분류</th>
							<th scope="col">프로젝트명</th>
							<th scope="col">관리자</th>
							<th scope="col">등록일</th>
							<th scope="col">마감일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th><input type="checkbox"></th>
							<th scope="row">P001</th>
							<td><button type="button" class="btn btn-primary">신규</button></td>
							<td>환경부 환경보호를 위한 사이트 제작</td>
							<td>이상철</td>
							<td>plteam3@ddit.com</td>
							<td>2023.02.01</td>
						</tr>
						<tr>
							<th><input type="checkbox"></th>
							<th scope="row">P001</th>
							<td><button type="button" class="btn btn-primary">신규</button></td>
							<td>환경부 환경보호를 위한 사이트 제작</td>
							<td>이상철</td>
							<td>plteam3@ddit.com</td>
							<td>2023.02.01</td>
						</tr>
						<tr>
							<th><input type="checkbox"></th>
							<th scope="row">P001</th>
							<td><button type="button" class="btn btn-primary">신규</button></td>
							<td>환경부 환경보호를 위한 사이트 제작</td>
							<td>이상철</td>
							<td>plteam3@ddit.com</td>
							<td>2023.02.01</td>
						</tr>
						<tr>
							<th><input type="checkbox"></th>
							<th scope="row">P001</th>
							<td><button type="button" class="btn btn-primary">신규</button></td>
							<td>환경부 환경보호를 위한 사이트 제작</td>
							<td>이상철</td>
							<td>plteam3@ddit.com</td>
							<td>2023.02.01</td>
						</tr>
						<tr>
							<th><input type="checkbox"></th>
							<th scope="row">P001</th>
							<td><button type="button" class="btn btn-primary">신규</button></td>
							<td>환경부 환경보호를 위한 사이트 제작</td>
							<td>이상철</td>
							<td>plteam3@ddit.com</td>
							<td>2023.02.01</td>
						</tr>
						<tr>
							<th><input type="checkbox"></th>
							<th scope="row">P001</th>
							<td><button type="button" class="btn btn-primary">신규</button></td>
							<td>환경부 환경보호를 위한 사이트 제작</td>
							<td>이상철</td>
							<td>plteam3@ddit.com</td>
							<td>2023.02.01</td>
						</tr>
						<tr>
							<th><input type="checkbox"></th>
							<th scope="row">P001</th>
							<td><button type="button" class="btn btn-primary">신규</button></td>
							<td>환경부 환경보호를 위한 사이트 제작</td>
							<td>이상철</td>
							<td>plteam3@ddit.com</td>
							<td>2023.02.01</td>
						</tr>
					</tbody>
				</table>
				<tfoot>
					<div class="right float-end">
						<button class="btn btn-danger">삭제</button>
					</div>
				</tfoot>
			</div>
		</div>
		<!--하단부 페이징 -->
		<div class="btn-box clearfix mt-4">
			<div class="pageBox">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</div>
			<!--하단부 페이징 -->
		</div>
		<!-- 하단부 페이징과 삭제버튼 -->
	</div>
</div>
<!--inner-->