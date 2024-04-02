<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- datepicker lang -->
<script src="/navi/resources/js/common/datepicker/lang/datepicker-ko.js"></script>
<!-- datepicker lang-->
<!-- modify페이지에서만 로드 -->
<script src="/navi/resources/js/common/ckeditor4/ckeditor.js"></script>
<script src="/navi/resources/js/common/datepicker/jquery-ui.js"></script>
<!-- modify페이지에서만 로드 -->
<link rel="stylesheet"
	href="/navi/resources/assets/dist/css/bootstrap.min.css">
<!-- datepicker css  수정 , 등록 페이지에만 -일감-->
<link rel="stylesheet"
	href="/navi/resources/js/common/datepicker/jquery-ui.css">
<!-- datepicker css  수정 , 등록 페이지에만 -일감-->


<div class="content">
	<div class="inner html">
		<!-- ui : s -->
		<!-- modify veiw -->
		<div class="view edit">
			<div class="view_inner">
			
				<div class="view-info">
					<strong class="view-tit d-flex align-items-center">
						<div class=" col-sm-1">
						<span class="category project">P00001</span>
						</div>
						<div class=" col-sm-11">
							<input type="text" class="form-control" placeholder="제목을입력해주세요" value="2024대덕인재개발원 리뉴얼">
						</div>

					</strong>
					<ul class="ul clearfix">
						<li><span class="list-tit">작성자</span> <span>김태은(개발1팀)</span>
						</li>
						<li><span class="list-tit">등록일</span> <span>2024.04.05</span>
						</li>
						<li><span class="list-tit">수정일</span> <span>2024.04.04</span></li>

						<!-- 프로젝트 상태값:
														<li><span class="">상태</span><span>신규</span></li>
														<li><span class="">상태</span><span>안정</span></li>
														<li><span class="">상태</span><span>긴급</span></li>
												-->
					</ul>
				</div>
				
				<div class="view_content" id="viewEdit" style="visibility: hidden; display: none;">
(삭제예정)<br>
진행율을 선택하면 데이터베이스에 처리상태가 자동반영 -> 오늘의 일정.<br>

진행률 = 처리상태<br>
10% = 대기<br>
30%, 50%, 70%, 90% = 진행중<br>
99% = 처리완료<br>
100% = 최종완료<br>
99% -> 30% = 반려<br>
진행률이 선택되면 처리상태가 자동반영<br>
<br>
첨부파일은 위키 상세, 수정과 동일
				</div>


			</div>
		</div>
		<!-- 첨부파일 -->
		<div class="inner html">
			<!-- ui : s -->
			<!-- ui : file list & upload  s -->
			<div class="addfile">
				<!-- file_list -->
				<ul class="fileList">
					<!-- pdf -->
					<li
						class="d-flex file-row align-items-center justify-content-between">
						<a href="" class="file_item d-flex align-items-center"> <i
							class="icon close"><em class="sr-only">첨부파일삭제</em></i> <i
							class="icon pdf"><em class="sr-only">pdf파일</em></i> <span
							class=""> <em class="file_name">대덕인재개발원 리뉴얼.pdf</em> <span
								class="tm d-flex"><i class="icon time"></i>2분 전</span>
						</span>
					</a> <span class="file_size p-1 border border-dark-subtle fileSize">604KB</span>
					</li>
					<!-- pdf -->

				</ul>
				<!-- file_list -->
				<div class="input-group my-2">
					<input type="file" class="form-control" id="addFileInput"
						aria-describedby="addFileBtn" aria-label="Upload">
					<button class="btn btn-primary" type="button" id="addFileBtn">첨부</button>
				</div>
				<!-- ui : addfile e -->

			</div>
			<!-- ui : file list & upload :  e -->

			<!-- ui : e -->
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
		location.href = "${pageContext.request.contextPath }/wiki/detail"
	}
	//	추가된 상태
	function moveAddList() {
		location.href = "${pageContext.request.contextPath }/wiki"
	}
</script>
<!-- ui : e -->
</div>
</div>






<!-- modify veiw -->
<!-- modify veiw -->

