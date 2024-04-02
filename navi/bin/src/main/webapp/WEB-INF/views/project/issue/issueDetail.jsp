<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- project veiw -->
<div class="view task">
	<div class="view_inner">
		<div class="view-info">
			<strong class="view-tit"> <span class="category project">${issue.issueId }</span>
				<em>${issue.issueTitle}</em></strong>
			<ul class="ul clearfix">

				<li><span class="list-tit">담당자</span> <span>${issue.empName }(${issue.deptName },
						${issue.psName })</span> <!-- <select class="select-box" aria-label="Default select example">
                                    <option selected>우민규(디자인1팀, 사원)</option>
                                    <option value="1">유길상(디자인1팀, 사원)</option>
                                    <option value="2">정민지(디자인1팀, 사원)</option>
                                    <option value="4">이상철(디자인1팀, 사원)</option>
                                    <option value="5">김태은(디자인1팀, 사원)</option>
                                </select> --></li>
				<!-- <li><span class="list-tit">진행기간</span><span>2024.04.05</span></li> -->
				<li><span class="list-tit">등록일</span> <span>${issue.issueRegDtStr }</span></li>
				<li><span class="list-tit">중요도</span> <span>${issue.impName }</span></li>
				<li><span class="list-tit">분류</span> <span>${issue.stateName }</span></li>
				<li>
				<span class="list-tit">수정일</span>
				<span>
					<c:if test="${empty issue.issueModDt }">수정내역 없음</c:if>
					<c:if test="${not empty issue.issueModDt }">${issue.issueModDt }</c:if>
				</span>
				</li>
				<!-- 프로젝트 상태값:
                                        <li><span class="">상태</span><span>신규</span></li>
                                        <li><span class="">상태</span><span>안정</span></li>
                                        <li><span class="">상태</span><span>긴급</span></li>
                                -->

			</ul>
		</div>
		<div class="view_content">
			${issue.issueCn }
		</div>
	</div>

</div>
<!-- project veiw -->
<!-- button -->
<div class="btn-box clearfix mt-4">
	<button class="btn btn-secondary">목록</button>
	<div class="right float-end">
		<!-- <button class="btn btn-danger">취소</button> -->
		<a href="${pageContext.request.contextPath}/project/issue/modify/${project.proId }/${issue.issueId}"><button class="btn btn-primary" >수정하기</button></a>
	</div>
</div>
<!-- button -->
<script>
	$(document).ready(function(){
		
		const cPath = document.body.dataset.contextPath;
		function getCsrfToken(){
			return document.querySelector('meta[name="_csrf"]').getAttribute('content');
		}
		function getCsrfHeader(){
			return document.querySelector('meta[name="_csrf_header"]').getAttribute('content');
		}
		$(deleteForm).on("submit",function(e){
			e.preventDefault();
			console.log(deleteForm)
			fetch(deleteForm.action,{
				method:"DELETE",
				headers:{
					"Accept":"application/json",
					[getCsrfHeader()]: getCsrfToken()
				}
			}).then(resp=>{
				if(resp.ok){
					return resp.json();
				}else{
					throw new Error(`상태코드 ${resp.status} 수신`,{cause:resp})
				}
			}).then(jsonObj=>{
				console.log(jsonObj)
				if(jsonObj.msg='ok'){
					deleteResult.innerHTML='이슈 삭제에 성공했습니다.'
					window.location.pathname='${pageContext.request.contextPath}/project/issue/${project.proId}'
				}else{
					deleteResult.innerHTML='이슈 삭제에 실패했습니다.'
				}
			}).catch(err=>{
				console.error(err);
			})
		})
	});
</script>


