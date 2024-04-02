<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!-- modify veiw -->
<div class="view edit">
	<div class="view_inner">

		<div class="view-info">
			<!-- 	1.div -->
			<strong class="view-tit d-flex align-items-center">
				<div class=" col-sm-1">
					<label for="" class="">제목</label>
				</div>
				<div class=" col-sm-11">
					<input type="text" class="form-control" placeholder="제목을입력해주세요"
						value="우민규 사원을 칭찬합니다.">
				</div>

			</strong>


			<ul class="ul clearfix">
				<li><span class="list-tit">작성자</span> <span>유길상(개발2팀)</span></li>
				<li><span class="list-tit">등록일</span> <span>2024.04.05</span></li>
				<li><span class="list-tit">수정일</span> <span>2024.04.05</span></li>

				<!-- 프로젝트 상태값:
									<li><span class="">상태</span><span>신규</span></li>
									<li><span class="">상태</span><span>안정</span></li>
									<li><span class="">상태</span><span>긴급</span></li>
							-->
			</ul>
		</div>
		<!-- 	1.div -->






		<div class="view_content" id="viewEdit">
			<!-- 			<div class=" col-sm-11"> -->
			<input type="text" class="form-control" placeholder="내용을 입력해주세요"
				value="저번에 제가 휴대폰을 식당에서 잃어버렸는데 우민규 사원님께서 휴대폰을 발견하여 경비아저씨께 말씀드렸고 부모님께 빨리 연락을 드렸어야 했던 저는 곤란한 상황에서 우민규 사원님의 도움을 받아
			무사의 부모님께 연락이 되었고 문제를 해결할수 있었습니다. 우민규 사원님 진심으로 감사드립니다!!">
			<!-- 			</div> -->


			<!-- img  -->
			<div class="photo-view_img">
				<strong class="d-flex align-items-center"> <i
					class="icon camera"></i>첨부된 이미지
				</strong>
				<div class="">
					<ul class="scroll_x my-2 py-3">
						<!-- item -->
						<li class="photo-img_item">
							<div class="img-in">
								<img src="https://via.placeholder.com/150"
									class="img-thumbnail me-2" alt="이미지1">
							</div>
						</li>
						<!-- item -->
						<!-- item -->
						<li class="photo-img_item">
							<div class="img-in">
								<img src="https://via.placeholder.com/150"
									class="img-thumbnail me-2" alt="이미지1">
							</div>
						</li>
						<!-- item -->
						<!-- item -->
						<li class="photo-img_item">
							<div class="img-in">
								<img src="https://via.placeholder.com/150"
									class="img-thumbnail me-2" alt="이미지1">
							</div>
						</li>
						<!-- item -->
						<!-- item -->
						<li class="photo-img_item">
							<div class="img-in">
								<img src="https://via.placeholder.com/150"
									class="img-thumbnail me-2" alt="이미지1">
							</div>
						</li>
						<!-- item -->
						<!-- item -->
						<li class="photo-img_item">
							<div class="img-in">
								<img src="https://via.placeholder.com/150"
									class="img-thumbnail me-2" alt="이미지1">
							</div>
						</li>
						<!-- item -->
						<!-- item -->
						<li class="photo-img_item">
							<div class="img-in">
								<img src="https://via.placeholder.com/150"
									class="img-thumbnail me-2" alt="이미지1">
							</div>
						</li>
						<!-- item -->
						<!-- item -->
						<li class="photo-img_item">
							<div class="img-in">
								<img src="https://via.placeholder.com/150"
									class="img-thumbnail me-2" alt="이미지1">
							</div>
						</li>
						<!-- item -->
						<!-- item -->
						<li class="photo-img_item">
							<div class="img-in">
								<img src="https://via.placeholder.com/150"
									class="img-thumbnail me-2" alt="이미지1">
							</div>
						</li>
						<!-- item -->
				</div>
			</div>
			<!-- img -->
		</div>
		
<!-- 첨부파일 -->
				<div class="content">
					<div class="inner html">
						<!-- ui : s -->
						<!-- ui : file list & upload  s -->
						<div class="addfile">
							<!-- file_list -->
							<ul class="fileList">
								<!-- pdf -->
								<li class="d-flex file-row align-items-center justify-content-between">
									<a href="" class="file_item d-flex align-items-center">
										<i class="icon close"><em class="sr-only">첨부파일삭제</em></i>
										<i class="icon pdf"><em class="sr-only">pdf파일</em></i>
										<span class="">
											<em class="file_name">대덕인재개발원 리뉴얼.pdf</em>
											<span class="tm d-flex"><i class="icon time"></i>2분 전</span>
										</span>
									</a>
									<span class="file_size p-1 border border-dark-subtle fileSize">604KB</span>
								</li>
								<!-- pdf -->
							</ul>
							<!-- file_list -->
							<div class="input-group my-2">
								<input type="file" class="form-control" id="addFileInput" aria-describedby="addFileBtn" aria-label="Upload">
								<button class="btn btn-primary" type="button" id="addFileBtn">첨부</button>
							</div>
							<!-- ui : addfile e -->
						
						</div>
						<!-- ui : file list & upload :  e -->

						<!-- ui : e -->
					</div>
				</div>
<!-- 첨부파일 -->


		<script>
			let viewEdit = document.querySelector("#viewEdit")

			CKEDITOR.replace(viewEdit, {
				language : "ko",

			});
		</script>
	</div>

</div>
<!-- modify veiw -->


<!-- button -->
<div class="btn-box clearfix mt-4">
	<!-- 		<button class="btn btn-secondary">목록</button> -->
	<div class="right float-end">
		<button onclick="moveDetail()" class="btn btn-danger">취소</button>
		<!-- <button class="btn btn-danger">삭제</button> -->
		<button onclick="moveAddList()" class="btn btn-primary">확인</button>
	</div>
</div>
<!-- button -->

<script>
	function moveDetail() {
		location.href = "${pageContext.request.contextPath }/board/prais/detail"
	}
	// 	추가된 상태
	function moveAddList() {
		location.href = "${pageContext.request.contextPath }/board/prais/"
	}
</script>