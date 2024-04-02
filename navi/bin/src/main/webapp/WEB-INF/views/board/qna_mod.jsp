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
						value="새글 HVDC 수전전력 단가 관련 문의">
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
				value="안녕하세요~!
다름아니라 육지-제주 hvdc 관련 궁금한 점이 있어 문의드립니다.



1) 현재 제주에서 hvdc #1, #2를 통해 육지로부터 전기를 공급받을 수 있다고 알고 있습니다.
그렇다면 hvdc 전기를 제주에 판매할 때, 단가는 육지 smp를 적용하여 판매되나요?
(아니면 제주 smp를 적용하는지, 또는 제3의 가격결정방식이 있는지 궁금합니다. )


1-1) 더불어 hvdc 수전전력에 대한 정산단가가 따로 산정되는지도 궁금합니다.
(전기 1kwh를 생산할 때의 원가)


2) 그렇다면 반대로 hvdc #3을 통해 제주에서 육지로 전기를 역송하면 육지에 전기를 판매하게 될텐데
이 경우에는 육지 smp / 제주 smp 중 어떤 가격을 적용하나요?



감사합니다~!!!">
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
		location.href = "${pageContext.request.contextPath }/board/qna/detail"
	}
// 	추가된 상태
	function moveAddList() {
		location.href = "${pageContext.request.contextPath }/board/qna"
	}
</script>