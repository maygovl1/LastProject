<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- register veiw -->
	<div class="view edit">
		<div class="view_inner">
			<div class="view-info">
				<strong class="view-tit d-flex align-items-center">
					<div class=" col-sm-1">
						<label for="" class="">제목</label>
					</div>
					<div class=" col-sm-11">
						<input type="text" class="form-control" placeholder="제목을입력해주세요">
					</div>

				</strong>
				<ul class="ul clearfix">
					<li><span class="list-tit">작성자</span> <span>김태은(개발1팀)</span></li>
					<li><span class="list-tit">등록일</span> <span>2024.04.05</span>
					</li>
					<li><span class="list-tit">수정일</span> <span>2024.04.04</span></li>
					</li>
					<!-- 프로젝트 상태값:
									<li><span class="">상태</span><span>신규</span></li>
									<li><span class="">상태</span><span>안정</span></li>
									<li><span class="">상태</span><span>긴급</span></li>
							-->
				</ul>
			</div>

			<div class="view_content" id="viewEdit">
				<input type="text" class="form-control" placeholder="내용을 입력해주세요"
					value="">

			</div>
			<!-- 첨부파일 -->
			<!-- 첨부파일 -->
			<script>
				let viewEdit = document.querySelector("#viewEdit")

				CKEDITOR.replace(viewEdit, {
					language : "ko",

				});
			</script>
		</div>

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
						class="icon pdf"><em class="sr-only">pdf파일</em></i> <span class="">
							<em class="file_name">대덕인재개발원 리뉴얼.pdf</em> <span
							class="tm d-flex"><i class="icon time"></i>2분 전</span>
					</span>
				</a> <span class="file_size p-1 border border-dark-subtle fileSize">604KB</span>
				</li>
				<!-- pdf -->
				<!-- hangle -->
				<li
					class="d-flex file-row align-items-center justify-content-between">
					<a href="" class="file_item d-flex align-items-center"> <i
						class="icon close"><em class="sr-only">첨부파일삭제</em></i> <i
						class="icon hangle"><em class="sr-only">한글파일</em></i> <span
						class=""> <em class="file_name">대덕인재개발원 리뉴얼.hwp</em> <span
							class="tm d-flex"><i class="icon time"></i>2분 전</span>
					</span>
				</a> <span class="file_size p-1 border border-dark-subtle fileSize">604KB</span>
				</li>
				<!-- hangle -->
				<!-- excel -->
				<li
					class="d-flex file-row align-items-center justify-content-between">
					<a href="" class="file_item d-flex align-items-center"> <i
						class="icon close"><em class="sr-only">첨부파일삭제</em></i> <i
						class="icon xlsx"><em class="sr-only">엑셀파일</em></i> <span class="">
							<em class="file_name">대덕인재개발원 리뉴얼.xlsx</em> <span
							class="tm d-flex"><i class="icon time"></i>2분 전</span>
					</span>
				</a> <span class="file_size p-1 border border-dark-subtle fileSize">604KB</span>
				</li>
				<!-- excel -->
				<!-- zip -->
				<li
					class="d-flex file-row align-items-center justify-content-between">
					<a href="" class="file_item d-flex align-items-center"> <i
						class="icon close"><em class="sr-only">첨부파일삭제</em></i> <i
						class="icon zip"><em class="sr-only">zip파일</em></i> <span class="">
							<em class="file_name">대덕인재개발원 리뉴얼.zip</em> <span
							class="tm d-flex"><i class="icon time"></i>2분 전</span>
					</span>
				</a> <span class="file_size p-1 border border-dark-subtle fileSize">604KB</span>
				</li>
				<!-- zip -->
				<!-- txt -->
				<li
					class="d-flex file-row align-items-center justify-content-between">
					<a href="" class="file_item d-flex align-items-center"> <i
						class="icon close"><em class="sr-only">첨부파일삭제</em></i> <i
						class="icon txt"><em class="sr-only">텍스트 파일</em></i> <span
						class=""> <em class="file_name">대덕인재개발원 리뉴얼.txt</em> <span
							class="tm d-flex"><i class="icon time"></i>2분 전</span>
					</span>
				</a> <span class="file_size p-1 border border-dark-subtle fileSize">604KB</span>
				</li>
				<!-- txt -->
				<!-- ppt -->
				<li
					class="d-flex file-row align-items-center justify-content-between">
					<a href="" class="file_item d-flex align-items-center"> <i
						class="icon close"><em class="sr-only">첨부파일삭제</em></i> <i
						class="icon ppt"><em class="sr-only">텍스트 파일</em></i> <span
						class=""> <em class="file_name">대덕인재개발원 리뉴얼.ppt</em> <span
							class="tm d-flex"><i class="icon time"></i>2분 전</span>
					</span>
				</a> <span class="file_size p-1 border border-dark-subtle fileSize">604KB</span>
				</li>
				<!-- txt -->
				<!-- word -->
				<li
					class="d-flex file-row align-items-center justify-content-between">
					<a href="" class="file_item d-flex align-items-center"> <i
						class="icon close"><em class="sr-only">첨부파일삭제</em></i> <i
						class="icon word"><em class="sr-only">word 파일</em></i> <span
						class=""> <em class="file_name">대덕인재개발원 리뉴얼.docx</em> <span
							class="tm d-flex"><i class="icon time"></i>2분 전</span>
					</span>
				</a> <span class="file_size p-1 border border-dark-subtle fileSize">604KB</span>
				</li>
				<!-- word -->
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
			location.href = "${pageContext.request.contextPath }/board/photo"
		}
		function moveAddList() {
			location.href = "${pageContext.request.contextPath }/board/photo"
		}
		s
	</script>