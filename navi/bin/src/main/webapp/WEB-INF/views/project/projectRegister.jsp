<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="modal fade clanendarModal" id="modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-fullscreen">
			<div class="modal-content">
				<div class="modal-header bg-primary text-white">
					<strong class="modal-title" id="modal">회원 조회</strong>
				</div>
				<div class="modal-body">
					<!-- modal bottom -->
					<div class="cal-Modal_table">

						<table class="table text-center">
							<caption class="sr-only">회원목록입니다.</caption>

							<colgroup>
								<col style="width: 5%;">
								<col style="width: 10%;">
								<col style="width: 10%;">
								<col style="width: auto;">
								<col style="width: 10%;">
								<col style="width: 8%;">
								<col style="width: 8%;">
							</colgroup>

							<thead>
								<tr>
									<th scope="col"><input type="checkbox"></th>
									<th scope="col">사원번호</th>
									<th scope="col">사원명</th>
									<th scope="col">직급</th>
									<th scope="col">연락처</th>
									<th scope="col">경력</th>
									<th scope="col">권한설정</th>
								</tr>
							</thead>
							<tbody>
								<!-- 일반 -->
								<c:forEach items="${empList }" var="emp">
								<tr>
									<td><input type="checkbox" data-emp-id="${emp.empId}"></td>
									<th scope="row">${emp.empId }</th>
									<td>${emp.empName }(${emp.deptName })</td>
									<td>${emp.psName }</td>
									<td>${emp.empTel }</td>
									<td>${emp.empCareer }</td>
									<td><select
							class="form-select"
							aria-label="Default select example" name="roleIds">
								<c:forEach items="${roleList}" var="r">
									<option value="${r.roleId }">${r.roleName}</option>
								</c:forEach>
						</select></td>
								</tr>
								</c:forEach>
								<!-- 일반 -->
							</tbody>
						</table>

						<!-- page -->

						<div class="pageBox">
							<ul class="pagination justify-content-center">
								<li class="page-item"><a class="page-link" href="#">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul>
						</div>
						<!-- page -->
					</div>
					<!-- modal bottom -->
				</div>
				<div class="modal-footer justify-content-center">
					<button type="button" class="btn btn-light btn-outline-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">확인</button>
				</div>
			</div>
		</div>
	</div>
	<!-- modal e -->
<form:form modelAttribute="registerProject" id="rgForm"
	action="${pageContext.request.contextPath }/project/register.do">
	<!-- Modal s -->
	
	<!-- register veiw -->
	<div class="view edit">
		<div class="view_inner">
			<div class="view-info">
				<strong class="view-tit d-flex align-items-center">
					<div class=" col-sm-1">
						<label for="" class="">프로젝트 명</label>
					</div>
					<div class=" col-sm-11">
						<input type="text" class="form-control" name="proName"
							placeholder="프로젝트 명을 입력해주세요" value="${project.proName }">
							<form:errors path="proName" element="span" cssClass="text-danger" />
					</div>

				</strong>
				<ul class="ul clearfix">

					<li><span
						class="list-tit d-flex w-50  align-items-center mb-2">담당자</span> <span
						class=" col-sm-6" aria-label="Default select example">
							<div class="form-control">${realUser.empName }</div>
					</span></li>
					<li><span class="list-tit">마감일</span> <span class=" col-sm-6"
						aria-label="Default select example"> <input
							class="form-control" type="datetime-local" name="proDdlineEx" />
							<form:errors path="proDdlineEx" element="span" cssClass="text-danger" />
					</span></li>
					<li><span class="list-tit">상태</span> <span> <select
							class="form-select" name="proStId"
							aria-label="Default select example">
								<c:forEach items="${projectStateList}" var="ps">
									<option value="${ps.cmId }">${ps.cmName}</option>
								</c:forEach>
						</select>
					</span><form:errors path="proStId" element="span" cssClass="text-danger" /></li>
				</ul>
			</div>
			<div class="view_content" id="viewEdit">${project.proDesc }</div>
			<!-- 첨부파일 -->
			<!-- 첨부파일 -->

		</div>
		<input type="hidden" name="proDesc" id="proDesc"> <input
			type="hidden" name="empIds" id="empIds" value="${realUser.empId }">
		<input type="hidden" name="roleIds" id="roleIds">
	</div>
	<!-- modify veiw -->
</form:form>
	<!-- button -->
	<div class="btn-box clearfix mt-4">
		<button class="btn btn-secondary">목록</button>
		<div class="right float-end">
		<button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal">팀원 등록</button>
			<!-- <button class="btn btn-danger">취소</button> -->
		<input type="button" class="btn btn-primary" value="등록" id="regBtn">
		</div>
		${msg}
	</div>

<!-- button -->
<script type="text/javascript">
$(document).ready(function(){
    
});
</script>
<script type="text/javascript"
	src='<c:url value="/resources/js/common/ckeditor5/super/ckeditor.js"/>'></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/common/datepicker/jquery-ui.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/common/datepicker/lang/datepicker-ko.js'/>"></script>

<script>
$(document).ready(function(){
   let viewEdit = document.querySelector("#viewEdit");
   let editor;
   CKEDITOR.ClassicEditor.create(viewEdit, {
               
                toolbar: {
                    items: [
                        'exportPDF','exportWord', '|',
                        'findAndReplace', 'selectAll', '|',
                        'heading', '|',
                        'bold', 'italic', 'strikethrough', 'underline', 'code', 'subscript', 'superscript', 'removeFormat', '|',
                        'bulletedList', 'numberedList', 'todoList', '|',
                        'outdent', 'indent', '|',
                        'undo', 'redo',
                        '-',
                        'fontSize', 'fontFamily', 'fontColor', 'fontBackgroundColor', 'highlight', '|',
                        'alignment', '|',
                        'link', 'uploadImage', 'blockQuote', 'insertTable', 'mediaEmbed', 'codeBlock', 'htmlEmbed', '|',
                        'specialCharacters', 'horizontalLine', 'pageBreak', '|',
                        'textPartLanguage', '|',
                        'sourceEditing'
                    ],
                    shouldNotGroupWhenFull: true
                },
             
                language: 'ko',
                list: {
                    properties: {
                        styles: true,
                        startIndex: true,
                        reversed: true
                    }
                },
               
                heading: {
                    options: [
                        { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                        { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                        { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                        { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                        { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' },
                        { model: 'heading5', view: 'h5', title: 'Heading 5', class: 'ck-heading_heading5' },
                        { model: 'heading6', view: 'h6', title: 'Heading 6', class: 'ck-heading_heading6' }
                    ]
                },
                
                placeholder: 'Welcome to CKEditor 5!',
              
                fontFamily: {
                    options: [
                        'default',
                        'Arial, Helvetica, sans-serif',
                        'Courier New, Courier, monospace',
                        'Georgia, serif',
                        'Lucida Sans Unicode, Lucida Grande, sans-serif',
                        'Tahoma, Geneva, sans-serif',
                        'Times New Roman, Times, serif',
                        'Trebuchet MS, Helvetica, sans-serif',
                        'Verdana, Geneva, sans-serif'
                    ],
                    supportAllValues: true
                },
               
                fontSize: {
                    options: [ 10, 12, 14, 'default', 18, 20, 22 ],
                    supportAllValues: true
                },
             
                htmlSupport: {
                    allow: [
                        {
                            name: /.*/,
                            attributes: true,
                            classes: true,
                            styles: true
                        }
                    ]
                },
                
                htmlEmbed: {
                    showPreviews: true
                },
              
                link: {
                    decorators: {
                        addTargetToExternalLinks: true,
                        defaultProtocol: 'https://',
                        toggleDownloadable: {
                            mode: 'manual',
                            label: 'Downloadable',
                            attributes: {
                                download: 'file'
                            }
                        }
                    }
                },
             
                mention: {
                    feeds: [
                        {
                            marker: '@',
                            feed: [
                                '@apple', '@bears', '@brownie', '@cake', '@cake', '@candy', '@canes', '@chocolate', '@cookie', '@cotton', '@cream',
                                '@cupcake', '@danish', '@donut', '@dragée', '@fruitcake', '@gingerbread', '@gummi', '@ice', '@jelly-o',
                                '@liquorice', '@macaroon', '@marzipan', '@oat', '@pie', '@plum', '@pudding', '@sesame', '@snaps', '@soufflé',
                                '@sugar', '@sweet', '@topping', '@wafer'
                            ],
                            minimumCharacters: 1
                        }
                    ]
                },
            
                removePlugins: [
                 
                    'AIAssistant',
                    'CKBox',
                    'CKFinder',
                    'EasyImage',
                    'RealTimeCollaborativeComments',
                    'RealTimeCollaborativeTrackChanges',
                    'RealTimeCollaborativeRevisionHistory',
                    'PresenceList',
                    'Comments',
                    'TrackChanges',
                    'TrackChangesData',
                    'RevisionHistory',
                    'Pagination',
                    'WProofreader',
                    'MathType',
                    'SlashCommand',
                    'Template',
                    'DocumentOutline',
                    'FormatPainter',
                    'TableOfContents',
                    'PasteFromOfficeEnhanced',
                    'CaseChange'
                ]
            }).then(newEditor=>{
            	editor=newEditor
            	$('#regBtn').on('click', function(e) {
                    e.preventDefault();
                    
                    // 선택된 사원의 empId를 담을 배열
                    var selectedEmpIds = [];
                    // 선택된 사원의 roleId를 담을 배열
                    var selectedRoleIds = [];
                    
                    // 각 체크박스를 순회하며 선택된 사원 정보를 가져옴
                    $('.cal-Modal_table tbody input[type="checkbox"]:checked').each(function() {
                        var empId = $(this).attr('data-emp-id');
                        var roleId = $(this).closest('tr').find('select').val();
                        
                        // empId와 roleId를 각각 배열에 추가
                        selectedEmpIds.push(empId);
                        selectedRoleIds.push(roleId);
                    });
                    
                    // 선택된 사원 정보를 콘솔에 출력 (테스트용)
                    console.log('선택된 사원의 empId:', selectedEmpIds);
                    console.log('선택된 사원의 roleId:', selectedRoleIds);
                    
                    // 선택된 사원 정보를 hidden input 필드에 설정
                    $('#empIds').val(selectedEmpIds.join(','));
                    $('#roleIds').val(selectedRoleIds.join(','));
                    $(proDesc).val(editor.getData());
                    // 폼 서브밋
                    $('#rgForm').submit();
                });
            });
       
   
});
</script>