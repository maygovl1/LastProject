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


<!-- modify veiw -->
		<div class="view edit">
			<div class="view_inner">
				<div class="view-info">
					<strong class="view-tit d-flex align-items-center">
						<div class="mx-2">
							<span>제목</span>
						</div>
						<div class="col-sm-11">
							<input type="text" class="form-control" placeholder="제목을입력해주세요">
						</div>
						
					</strong>
					<ul class="ul clearfix">
						<li class="d-flex w-50 align-items-center mb-2">
							<span class="list-tit">작성자</span>
							<span class="col-sm-12">유길상(기획1팀)</span>
						</li>
								
						<li class="d-flex w-50  align-items-center mb-2">
							<span class="list-tit">작성일자</span>
							<span> 
								<input type="text" id="datepicker" class="form-control" value="날짜선택" />
							</span>
						</li>
				<!-- 						<li class="d-flex w-50  align-items-center mb-2"> -->
				<!-- 							<span class="list-tit">등록일</span> -->
				<!-- 							<span>2024.04.04</span></li> -->
				<!-- 						</li> -->
				<!-- 일감 상태값:
									<li><span class="">상태</span><span>신규</span></li>
									<li><span class="">상태</span><span>안정</span></li>
									<li><span class="">상태</span><span>긴급</span></li>
							-->
					</ul>
				</div>
				<div class="view_content" id="viewEdit2" placeholder="내용을 입력해주세요">
				</div>
				<!-- 첨부파일 -->
				<!-- 첨부파일 -->
				<script>
					let viewEdit2 = document.querySelector("#viewEdit2")
					
					CKEDITOR.replace(viewEdit2,{
						language: "ko",
					
					});
					
				</script>
				<script>
				// https://jqueryui.com/datepicker/#default
				//https://github.com/jquery/jquery-ui/tree/main/ui/i18n
				$( "#datepicker" ).datepicker({
					changeMonth: true,//월 선택
					changeYear: true,//년도선택
					showButtonPanel: true,//하단 버튼 패널
					closeText: "닫기",//닫기버튼
					currentText: "오늘",//당일 날짜
					showOn: "both",//포커스,버튼
					showAnim: "fadeIn",//애니메이션
					showOtherMonths: true,//다른달 날짜 보여주기
					dateFormat:"yy-mm-dd",
					//navigationAsDateFormat: true,
					//firstDay: 0,
					//numberOfMonths: 2,//여러달
					//showCurrentAtPos: 3
					//constrainInput: true,
				});
							
					
				</script>
			
			</div>

		</div>
		<!-- modify veiw -->



<!-- button -->
<div class="btn-box clearfix mt-4">
	<!-- 			<button onclick="moveList()" class="btn btn-secondary">목록</button> -->
	<div class="right float-end">
		<button onclick="moveList()" class="btn btn-danger">취소</button>
		<!-- 				<button class="btn btn-danger">삭제</button> -->
		<button onclick="moveAddList()" class="btn btn-primary">확인</button>
	</div>
</div>
<!-- button -->


<script>
	function moveList() {
		location.href = "${pageContext.request.contextPath }/board/form"
	}
	//변경된 리스트
	function moveAddList() {
		location.href = "${pageContext.request.contextPath }/board/form"
	}
</script>