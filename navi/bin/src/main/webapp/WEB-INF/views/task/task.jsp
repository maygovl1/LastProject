<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    ${taskList}
    
  <%-- 검색폼 --%>			
		

				<form id="submitForm" action="">
					<input type="hidden" name="page" /> <input type="hidden"
						name="searchType" value="" /> <input
						type="hidden" name="searchWord" value="" />
				</form>
			
				  <%-- 검색 --%>	
				<div data-pg-role="searchUI" data-pg-target="#submitForm"
					class="searchBox d-flex justify-content-end">
					<!-- 입력용도 UI  -->
					<select class="me-1" name="">
						<!-- 프롬프트 옵션  value는 공백(whitespace) -->
						<option value="">전체</option>
						<option value="name">이름</option>
						<option value="address">주소</option>
					</select>
					<select class="me-1" name="">
						<option value="">전체</option>
						<option value="name">이름</option>
						<option value="address">주소</option>
					</select>
					<div class="fieldset flex">
						<input class="me-1" type="text" name="searchWord"
							data-pg-init-value="" title="검색어를 입력해주세요"
							placeholder="검색어를 입력해주세요" />
						<button type="button" class="btn btn-primary"
							data-pg-role="searchBtn">검색</button>
					</div>

				</div>
				<%-- 검색 --%>				
  <%-- 검색폼 --%>		
  <%-- 일감목록 --%>	
		
			<table class="table text-center">
				<caption class="sr-only">일감목록 테이블입니다.</caption>
				<colgroup>
					<col style="width:5%">
					<col style="width: 8%;">
					<col style="width: 10%;">
					<col style="width: 10%;">
					<col style="width: auto;">
					<col style="width: 10%;">
					<col style="width: 10%;">
					<col style="width: 10%;">
				</colgroup>

				<thead>
					<tr>
						<th>
							<input type="checkbox">
						</th>
						<th scope="col">번호</th>
						<th scope="col">일감ID</th>
						<th scope="col">상태</th>
						<th scope="col">제목</th>
						<th scope="col">담당자</th>
						<th scope="col">진행상태</th>
						<th scope="col">등록일</th>
					</tr>
				</thead>
				<tbody>
			<!-- 	<span class="category ordinary">일반</span>
				<span class="category emergency">긴급</span>
				<span class="category new">신규</span> -->
			<!-- 일반 -->
				
						<c:if test="${not empty taskList }">
								<c:forEach items="${taskList }" var="task">
								<tr>
									<th>
										<input type="checkbox">
									</th>
									<td>00001</td>
									<td>${task.taskId }</td>
									<td>
									  	<c:if test="${task.taskStatus.tsName eq '일반'}">
      										<span class="category ordinary">${task.taskStatus.tsName }</span>
     									</c:if>
     									<c:if test="${task.taskStatus.tsName eq '긴급'}">
      										<span class="category emergency">${task.taskStatus.tsName }</span>
     									</c:if>
     									<c:if test="${task.taskStatus.tsName eq '신규'}">
      										<span class="category new">${task.taskStatus.tsName }</span>
     									</c:if>
									</td>
									<td class="text-start">
										<c:set var="project" value="${task.projectMap }"/>
										<a href="<c:url value='/task/${task.taskId }'/>">
											<em class="text-elipsis"><span class="fw-bold">[${project.prodName}]</span> &nbsp;${task.taskTitle }</em>
										</a>
									</td>
									<td>${task.taskManId }</td>
									<td>${task.taskProcessStatus.tpsIng }</td>
									<td>${task.taskRegDt}</td>
								</tr>
							</c:forEach>
						
						</c:if>
					
				</tbody>

			</table>
		
			<div class="btn-box clearfix mt-4"> 
				<div class="right float-end">
					<a href="${pageContext.request.contextPath}/task/taskRegister" class="btn btn-primary">등록</a>
				</div>
			</div>
			<!-- 버튼 알아서 퍼가셈 -->
									
									
  <%-- 일감목록--%>		


${pagingHTML }
