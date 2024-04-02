<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<pre>
${vacList }
</pre>
<%-- 추천모달버튼 s--%>
<div class="d-flex justify-content-end">
	<button type="button" class="btn btn-primary mb-3 " id="vacRecomBtn"
		data-bs-toggle="modal" data-bs-target="#recomModal">여행지추천</button>
</div>
<%-- 추천모달버튼 e--%>

<%-- 추천모달 s--%>
<div class="modal fade recomModal" id="recomModal" tabindex="-1"
	aria-labelledby="recomModal" aria-hidden="true">
	<div class="modal-dialog modal-fullsize">
		<div class="modal-content" style="transform: translate(0, 40%);">
			<div class="modal-header bg-primary text-white">
				<strong class="modal-title" id="recomModal">여행지추천</strong>
			</div>
			<div class="modal-body" id="modalRecom">
				<!-- 추천 모달 head s -->
				<thead>
					<tr colspan="8" />
				</thead>
				<!-- 추천 모달 head e -->
				<c:forEach items="${recomList}" var="vacrecom">
					<div style="border-top: solid 1px grey" class="cal-Modal ">
						<!-- 추천 모달 body s -->
						<table class="table text-center">
							<tbody>
								<div class=inContent">
									<strong style="text-align: center; color:grey;">추천 ${vacrecom.vacRank }</strong>
								<tr>
									<!-- 여행지 이름 -->
									<div>
										<h2>${vacrecom.vacName }</h2>
									</div class="card">
									<!-- 여행지 이름 -->
									<!-- 여행지 사진 -->
									<div class="card">
									<div class="photo_img">
										<div class="no-img">
											<img class="vacImg" src="${vacrecom.vacImg }" alt="" width="570" height="300">
										</div>
									</div>
									</div>
									</div>
									<!-- 여행지 사진 -->
									<!-- 여행지 설명 -->
									<div class="on">
										<em>${vacrecom.vacEx }</em>
									</div>
									<!-- 여행지 설명 -->
								</tr>
								</div>
							</tbody>
						</table>
					</div>
				</c:forEach>
				<!-- modal bottom -->
			</div>
			<!-- 모달 닫기 버튼 s-->
			<div class="modal-footer justify-content-center">
				<button type="button" class="btn btn-light btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
			</div>
			<!-- 모달 닫기 버튼 e-->
		</div>
	</div>
</div>
<%-- 추천모달 e--%>



<!-- ui : 포토공간목록 s -->
<div class="row row-cols-1 row-cols-md-4 g-4 photo_list mb-4">
	<c:forEach items="${vacList }" var="vac">
		<div class="vacbtn" data-bs-toggle="modal"
			data-bs-target="#modal${vac.vacId }" data-vac-id="${vac.vacId}">
			<div class="col recomVac">
				<!-- 여행지 목록 리스트 조회 -->
				<div class="modal fade vacModal" id="modal${vac.vacId }"
					tabindex="-1" aria-labelledby="vacModalbtn" aria-hidden="true">

					<div class="modal-dialog modal-fullsize">
						<div class="modal-content" id=""
							style="transform: translate(0, 40%);">
							<div class="modal-header bg-primary text-white">
								<strong class="modal-title" id="vacModal">${vac.vacName }</strong>
							</div>
							<!-- #1 -->
							<div class="modal-body" id="vacModal">

								<div class="cal-Modal">
									<!-- 추천 모달 body s -->
									<table class="table text-center">
										<tbody>
											<div class=inContent">
												<tr>
													<!-- 여행지 사진 -->
													<div class="photo_img" data-vac-id="${vac.vacId}">
														<div class="no-img">
															<img src="${vac.vacImg }" alt="" width="570" height="300">
														</div>
													</div>
													<!-- 여행지 설명 -->
													<div class="onEx">
														<em>${vac.vacEx }</em>
													</div>
												</tr>
											</div>
										</tbody>
									</table>
								</div>
								<!-- modal bottom -->
							</div>
							<!-- #1 -->
							<!-- 모달 닫기 버튼 s-->
							<div class="modal-footer justify-content-center">
								<button type="button"
									class="btn btn-light btn-outline-secondary"
									data-bs-dismiss="modal">닫기</button>
							</div>
							<!-- 모달 닫기 버튼 e-->
						</div>
					</div>
				</div>
				<!-- 끝 -->
				<!-- col -->
				<!-- 여행목록 뜨는거 -->
				<div class="col recomVac" data-vac-id="${vac.vacId }"
					data-bs-toggle="vacModal" data-bs-target="#modal${vac.vacId }">
					<div class="card">
						<div class="photo_img">
							<div class="img-in no-img">
								<img src="${vac.vacImg }" class="card-img-top" alt="">
							</div>
						</div>
						<div class="card-body">
							<strong class="card-title"> <em class="text-elipsis">${vac.vacName }</em>
							</strong>
							<button class="kinBtn border-0">
								<i class="icon like"></i> <i class="sr-only">좋아요 버튼</i>
							</button>
						</div>
						<ul
							class="card-footer d-flex justify-content-between border-0 py-0">
							<li><span class="text-elipsis">${vac.vacEx }</span></li>
						</ul>
					</div>
				</div>
				<!-- col -->
				<!-- 여행목록 뜨는거 -->
			</div>
		</div>
	</c:forEach>
	<form id="searchForm">
		<input type="text" name="page" />
	</form>
</div>
<form method="post" id="clickForm">
	<input type="hidden" name="vacId">
</form>
${pagingHTML }
<script src="<c:url value='/resources/js/common/paging.js'/>"></script>
<!-- 페이징처리포함 -->
<!-- 여행지 목록 리스트 조회 -->


<!-- 스크립트 넣기  -->
<script type="text/javascript">

const cPath = document.body.dataset.contextPath;
function getCsrfToken(){
	return document.querySelector('meta[name="_csrf"]').getAttribute('content');
}
function getCsrfHeader(){
	return document.querySelector('meta[name="_csrf_header"]').getAttribute('content');
}


$(".vacbtn").each(function(i,v){
	$(v).on("click",function(e){
		e.currentTarget;
		console.log(e.currentTarget)
		fetch(cPath+"/quick/vac?vacId="+$(e.currentTarget).data("vacId"),{
			method:"POST",
			headers:{
				"Accept":"application/json",
				"Content-Type":clickForm.enctype,
				[getCsrfHeader()]: getCsrfToken()
			}
		}).then(resp=>{
			if(resp.ok){
				return resp.text();
			}else{
				throw new Error(`상태코드 ${resp.status} 수신`,{cause:resp})
			}
		}).then(text=>{
			console.log(text)
		}).catch(err=>{
			console.error(err);
		})
})
})
</script>
<!-- 스크립트 넣기  -->
