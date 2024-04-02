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

<pre>
${fm }
</pre>
//모달
<form:form action="${pageContext.request.contextPath }/form" method="PUT" id="modifyForm">
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<strong class="modal-title fs-5" id="exampleModalLabel">안내</strong>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body" id="updateResult">"서식자료를 수정하시겠습니까?"</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
				<button type="submit" class="btn btn-primary" id="modifyBtn">확인</button>
			</div>
		</div>
	</div>
//모달
</div>
<div class="content">
	<div class="inner html">
		<!-- ui : s -->
		<!-- modify veiw -->
		<div class="view edit">
			<div class="view_inner">

				<div class="view-info">
					<strong class="view-tit d-flex align-items-center">
						<div class=" col-sm-1">
							<label for="" class="">${fm.bpTitle }</label>
						</div>
						<div class=" col-sm-11">
							<input type="text" class="form-control" placeholder="제목을입력해주세요"
								value="${fm.bpTitle }">
						</div>
					</strong>
					<ul class="ul clearfix">
						<li><span class="list-tit">작성자</span> <span>${fm.bpModId }</span>
						</li>
						<li><span class="list-tit">등록일자</span> <span>${fm.bpRegDtStr }</span>
						</li>
						<li class="d-flex w-50  align-items-center mb-2"><span
							class="list-tit">수정일자</span> <span> <input type="text"
								id="datepicker" class="form-control" value="날짜선택" />
						</span></li>
					</ul>
				</div>

				<div class="view_content" id="viewEdit"
					style="visibility: hidden; display: none;">사업 협약 양식입니다. 첨부파일
					확인해주세요.</div>
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
	<script>
		// https://jqueryui.com/datepicker/#default
		//https://github.com/jquery/jquery-ui/tree/main/ui/i18n
		$("#datepicker").datepicker({
			changeMonth : true,//월 선택
			changeYear : true,//년도선택
			showButtonPanel : true,//하단 버튼 패널
			closeText : "닫기",//닫기버튼
			currentText : "오늘",//당일 날짜
			showOn : "both",//포커스,버튼
			showAnim : "fadeIn",//애니메이션
			showOtherMonths : true,//다른달 날짜 보여주기
			dateFormat : "yy-mm-dd",
		//navigationAsDateFormat: true,
		//firstDay: 0,
		//numberOfMonths: 2,//여러달
		//showCurrentAtPos: 3
		//constrainInput: true,
		});
	</script>

</div>
</form:form>
<!-- button -->
<div class="btn-box clearfix mt-4">
	<div class="right float-end">
		<button onclick="moveDetail()" class="btn btn-danger">취소</button>
		<button onclick="moveAddList()" class="btn btn-primary">확인</button>
	</div>
</div>
<!-- button -->



<script>
	function moveDetail() {
		location.href = "${pageContext.request.contextPath }/board/form/detail"
	}
	//	추가된 상태
	function moveAddList() {
		location.href = "${pageContext.request.contextPath }/board/form"
	}
</script>
<!-- ui : e -->
</div>
</div>






<!-- modify veiw -->
<!-- modify veiw -->

