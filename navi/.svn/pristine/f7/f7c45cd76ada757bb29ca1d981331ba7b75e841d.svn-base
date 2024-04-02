<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<form id="searchForm">
	<input type="hidden" name="page"/>
	<input type="hidden" name="imprtId" value="${paging.detailCondition.imprtId }"/>
	<input type="hidden" name="issueId"  value="${paging.detailCondition.issueId }"/>
	<input type="hidden" name="issueTitle"  value="${paging.detailCondition.issueTitle }"/>
</form>
				<!-- searchBar -->
				<div data-pg-role="searchUI" data-pg-target="#searchForm"
					class="searchBox d-flex">
					<!-- 입력용도 UI  -->
					<form id="registerForm" class="me-auto" action="${pageContext.request.contextPath}/project/issue/register/${project.proId }" method="get">
						<button class="btn btn-primary " id="registerBtn">이슈 등록</button>
					</form>
					<select class="me-1" name="issueId" data-pg-init-value="${paging.detailCondition.issueId }">
							<option value>분류선택</option>
							<c:forEach items="${issueStateList }" var="is">
								<option value="${is.cmId }">${is.cmName }</option>
							</c:forEach>
					</select>
					<select class="me-1" name="imprtId" data-pg-init-value="${paging.detailCondition.imprtId }">
							<option value>분류선택</option>
							<c:forEach items="${issueImportStateList }" var="iip">
								<option value="${iip.cmId }">${iip.cmName }</option>
							</c:forEach>
					</select>
					<div class="fieldset flex">
						<input class="me-1" type="text"
							data-pg-init-value="${paging.detailCondition.issueTitle }" title="검색어를 입력해주세요"
							name="issueTitle"
							placeholder="검색어를 입력해주세요" />
						<button type="button" class="btn btn-primary"
							data-pg-role="searchBtn">검색</button>
					</div>
				</div>
<!-- ui : table s -->
				<table class="table text-center">
					<caption class="sr-only">프로젝트 목록 테이블입니다.</caption>

					<colgroup>
						<col style="width: 8%;">
						<col style="width: 8%;">
						<col style="width: 10%;">
						<col style="width: auto;">
						<col style="width: 8%;">
						<col style="width: 8%;">
						<col style="width: 8%;">
						<col style="width: 8%;">

					</colgroup>

					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">이슈 ID</th>
							<th scope="col">분류</th>
							<th scope="col">이슈명</th>
							<th scope="col">작성자</th>
							<th scope="col">첨부파일</th>
							<th scope="col">등록일</th>
							<th scope="col">중요도</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${issueList }" var="issue" >
						<!-- 1 -->
						<tr>
							<th scope="row">${issue.rnum }</th>
							<td>${issue.issueId }</td>
							<td><span class="category ordinary">${issue.impName}</span></td>
							<td class="text-start"><a href="${pageContext.request.contextPath }/project/issue/detail/${proId }/${issue.issueId}" class="text-link d-flex new">
									<span class="icon new_icon">
										<span class="sr-only">new</span>
									</span>
									<em class="text-elipsis">${issue.issueTitle}</em>
								</a>
							</td>
							<td>${issue.empName }</td>
							<td>
								<a href="" class="download_link" download=""><i class="icon hangle"></i><em
										class="sr-only">한글파일 다운로드</em></a>
							</td>
							<td>${issue.issueRegDtStr}</td>
							<td><span class="category ordinary">${issue.stateName}</span></td>
						</tr>
						<!-- 1 -->
						</c:forEach>
					</tbody>
				</table>
				<!-- ui : table e -->
				
${pagingHTML }


<script src="<c:url value='/resources/js/common/paging.js'/>"></script>