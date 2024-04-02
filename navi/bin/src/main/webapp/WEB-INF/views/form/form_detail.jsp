<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<pre>

${bf }
</pre>
    
<!-- project veiw -->
						<div class="view task">
							<div class="view_inner">
								<div class="view-info">
									<strong class="view-tit">
										<em>
										${bf.bpTitle }
										</em></strong>
									<ul class="ul clearfix">

										<li><span class="list-tit">작성자</span>
											<span>${bf.empName }</span>
											
										</li>
										<li><span class="list-tit">수정일자</span>
											<span>${bf.bpModDt }</span>
										</li>
										<li><span class="list-tit">작성일자</span><span>${bf.bpRegDtStr }</span></li>
										<!-- 프로젝트 상태값:
                                        <li><span class="">상태</span><span>신규</span></li>
                                        <li><span class="">상태</span><span>안정</span></li>
                                        <li><span class="">상태</span><span>긴급</span></li>
                                -->

									</ul>
								</div>
								<div class="view_content">
					${bf.bpCn}

								</div>
							</div>

						</div>
						<!-- project veiw -->
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
<!-- 										<i class="icon close"><em class="sr-only">첨부파일삭제</em></i> -->
										<i class="icon pdf"><em class="sr-only">pdf파일</em></i>
										<span class="">
											<em class="file_name">kakao 사업 협약서.pdf</em>
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
						
 <script>
	function moveList() {
		location.href = "${pageContext.request.contextPath }/board/form"
	}
	function moveMod() {
		location.href = "${pageContext.request.contextPath }/board/form/modify/${bf.bpId}"
	}
</script>