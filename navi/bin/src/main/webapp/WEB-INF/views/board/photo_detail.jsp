<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<pre>
boardPost = ${bp }

</pre>

<!-- ui : 포토공간목록 s -->

<!-- project veiw -->
<div class="view">
	<div class="view_inner">
		<div class="view-info">
			<strong class="view-tit icon-tit"> <span class="icon photo"></span>
				<em>
				${bp.bpTitle }
				</em></strong>
			<ul class="ul clearfix">

				<li><span class="list-tit">작성자</span><span>
				${bp.empName }
				</span></li>
				<li><span class="list-tit">등록일</span>
				<span>
					${bp.bpRegDtStr }
				
				</span></li>

			</ul>
		</div>
		<div class="view_content">

			${bp.bpCn }
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
	</div>
	<!-- commentForm -->
	<form class="comment mb-5">
		<legend class="comment-tit">댓글쓰기</legend>
		<div class="card bg-light">
			<div class="card-body comment-body">
				<!-- comment list -->
				<div class="comment-list">
					<ul class="ul depth1 clearfix">
						<li class="li">
							<div class="depth-row">
								<div class="comment-content">
									<div class="imgbox">
										<div class="img-in no-img">
											<!-- no-img일때  -->
											<img src="./resources/images/prog/navi.jpg" alt="작성자프로필이미지">
											<!-- no-img일때  -->
										</div>
									</div>
									<div class="writebox">
										<span>집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
											싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요
											집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
											싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요
											집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
											싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요</span>
									</div>


								</div>
								<div class="comment-info d-flex justify-content-between">

									<div class="left  d-flex ">
										<span class="comment-writer"> <i class="icon writer"></i>
											<em>유길상(개발1팀)</em>
										</span> <span class="comment-date  ms-4"> <i class="icon date"></i>2024.01.03
										</span>


									</div>
									<button type="button" class="btn btn-danger ms-1"
										data-bs-toggle="modal" data-bs-target="#exampleModal">삭제</button>
								</div>
							</div> <!-- depth2 -->
							<ul class="ul depth2 border-top">
								<li>
									<div class="depth-row">
										<div class="comment-content">
											<div class="imgbox">
												<div class="img-in no-img">
													<!-- no-img일때  -->
													<img src="./resources/images/prog/navi.jpg" alt="작성자프로필이미지">
													<!-- no-img일때  -->
												</div>
											</div>
											<div class="writebox">
												<span>집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요
													집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
													싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요
													집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
													싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요
													집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
													싶어요</span>
											</div>

										</div>
									</div>
									<div class="comment-info d-flex justify-content-between">

										<div class="left  d-flex ">
											<span class="comment-writer"> <i class="icon writer"></i>
												<em>유길상(개발1팀)</em>
											</span> <span class="comment-date  ms-4"> <i
												class="icon date"></i>2024.01.03
											</span>


										</div>
										<button type="button" class="btn btn-danger ms-1"
											data-bs-toggle="modal" data-bs-target="#exampleModal">삭제</button>
									</div>
								</li>

							</ul> <!-- depth2 -->
						</li>
						<li class="li border-top">
							<div class="depth-row">
								<div class="comment-content">
									<div class="imgbox">
										<div class="img-in no-img">
											<!-- no-img일때  -->
											<img src="./resources/images/prog/navi.jpg" alt="작성자프로필이미지">
											<!-- no-img일때  -->
										</div>
									</div>
									<div class="writebox">
										<span>집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
											싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요
											집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
											싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요
											집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고
											싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요 집에가고 싶어요</span>
									</div>

								</div>
								<div class="comment-info d-flex justify-content-between">

									<div class="left  d-flex ">
										<span class="comment-writer"> <i class="icon writer"></i>
											<em>유길상(개발1팀)</em>
										</span> <span class="comment-date  ms-4"> <i class="icon date"></i>2024.01.03
										</span>
									</div>
									<button type="button" class="btn btn-danger ms-1"
										data-bs-toggle="modal" data-bs-target="#exampleModal">삭제</button>
								</div>
							</div>
						</li>
					</ul>

				</div>
				<!-- comment list -->
				<!-- comment-input -->
				<div class="d-flex mb-4 comment-input w-100">
					<label for="textarea"><span class="sr-only">댓글입력창</span></label>
					<textarea class="form-control" rows="5" placeholder="댓글을 입력해주세요"
						id="textarea"></textarea>
					<input class="btn btn-secondary register" type="submit" value="등록">
				</div>
				<!-- comment-input -->

			</div>
		</div>
	</form>
	<!-- commentForm -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<strong class="modal-title fs-5" id="exampleModalLabel">안내</strong>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">"댓글을 삭제하시겠습니까?"</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">확인</button>
				</div>
			</div>
		</div>
	</div>
	<!-- modal -->
	<!-- commentForm -->

</div>

<!-- button -->
<div class="btn-box clearfix mt-4">
	<button onclick="moveList()" class="btn btn-secondary">목록</button>
	<div class="right float-end">
		<!-- <button class="btn btn-danger">취소</button> -->
		<button class="btn btn-danger">삭제</button>
		<button onclick="moveMod()" class="btn btn-primary">수정</button>
	</div>
</div>
<!-- button -->


<!-- project veiw -->


<!-- ui : 포토공간목록 e -->

<script>
	function moveList() {
		location.href = "${pageContext.request.contextPath }/board/photo"
	}
	function moveMod() {
		location.href = "${pageContext.request.contextPath }/board/photo/photoUpdate.do"
	}
</script>
