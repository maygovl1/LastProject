<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<form id="searchForm">
					<input type="hidden" name="page"/>
					<input type="hidden" name="projectState" value="${paging.detailCondition.projectState }"/>
					<input type="hidden" name="project"  value="${paging.detailCondition.project }"/>
					<input type="hidden" name="ing"  value="${paging.detailCondition.ing }"/>
				</form>
				<!-- searchBar -->
				<div data-pg-role="searchUI" data-pg-target="#searchForm"
					class="searchBox d-flex justify-content-end">
					<!-- 입력용도 UI  -->
					<select class="me-1" name="projectState" data-pg-init-value="${paging.detailCondition.projectState }">
							<option value>분류선택</option>
							<c:forEach items="${projectStateList }" var="prost">
								<option value="${prost.cmId }">${prost.cmName }</option>
							</c:forEach>
					</select>
					<div class="fieldset flex">
						<input class="me-1" type="text" name="searchWord"
							data-pg-init-value="${paging.detailCondition.project }" title="검색어를 입력해주세요"
							name="project"
							placeholder="검색어를 입력해주세요" />
						<button type="button" class="btn btn-primary"
							data-pg-role="searchBtn">검색</button>
					</div>

				</div>
<!-- ui : table s -->
				<table class="table text-center">
					<caption class="sr-only">프로젝트 목록 테이블입니다.</caption>

					<colgroup>
						<col style="width: 5%;">
						<col style="width: 10%;">
						<col style="width: 8%;">
						<col style="width: auto;">
						<col style="width: 10%;">
						<col style="width: 10%;">
						<col style="width: 8%;">
						<col style="width: 10%;">

					</colgroup>

					<thead>
						<tr>
							<th>
								<input type="checkbox">
							</th>
							<th scope="col">번호</th>
							<th scope="col">프로젝트ID</th>
							<th scope="col">상태</th>
							<th scope="col">프로젝트명</th>
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
							<th>
								<input type="checkbox">
							</th>
							<th scope="row">${issue.issueId }</th>
							<td>${issue.proId}</td>
							<td><span class="category ordinary">${issue.imprtId}</span></td>
							<td class="text-start"><a href="#" class="text-link d-flex new">

									<span class="icon new_icon">
										<span class="sr-only">new</span>
									</span>
									<em class="text-elipsis">프로젝트 게시판입니다. 프로젝트 게시판입니다. 프로젝트 게시판입니다. 프로젝트 게시판입니다. 프로젝트
										게시판입니다.프로젝트 게시판입니다. 프로젝트 게시판입니다.프로젝트 게시판입니다.프로젝트 게시판입니다.프로젝트 게시판입니다. 프로젝트
										게시판입니다. 프로젝트 게시판입니다. 프로젝트 게시판입니다. 프로젝트 게시판입니다.프로젝트 게시판입니다. 프로젝트 게시판입니다.프로젝트
										게시판입니다.프로젝트 게시판입니다.</em>
								</a>
							</td>
							<td>${issue.empName }</td>
							<td>
								<a href="" class="download_link" download=""><i class="icon hangle"></i><em
										class="sr-only">한글파일 다운로드</em></a>
							</td>
							<td>${issue.issueRegDt}</td>
							<td><span class="category ordinary">${issue.stateName}</span></td>
						</tr>
						<!-- 1 -->
						</c:forEach>
					</tbody>
				</table>
				<!-- ui : table e -->
				
${pagingHTML }