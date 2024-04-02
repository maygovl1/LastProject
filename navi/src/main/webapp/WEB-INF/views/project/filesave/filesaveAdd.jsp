<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>




<form:form action="${pageContext.request.contextPath}/project/filesave/add/${project.proId }" 
method="POST" modelAttribute="fs"  id="insertForm" enctype="multipart/form-data">
<div class="modal fade info" id="insertModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<strong class="modal-title fs-5" id="exampleModalLabel">안내</strong>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body" id="insertResult">"파일글을 등록하시겠습니까?"</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">닫기</button>
					<input type="button" class="btn btn-primary" id="insertBtn" value="등록">
			</div>
		</div>
	</div>
</div>
<!-- project veiw -->
<div class="view task">
	<div class="view_inner">
		<div class="view-info">
			<strong class="view-tit d-flex align-items-center"><div class="mx-2"> <span>제목 </span></div>
				<div class="col-sm-11"><input type="text" class="form-control" name="fsnTitle"
						placeholder="제목을 입력해주세요" value="${fs.fsnTitle }"></div>
				</strong>
			<ul class="ul clearfix">

			</ul>
		</div>
	<div class="view_content" id="viewEdit">	
		${fs.fsnCn }	
		</div>
	</div>
	<input type="hidden" name="fsnCn" id="fsnCn">
	<div class="content">
		<div class="inner html">
			<c:forEach items="${fileList }" var="f">
				<div class="addfile">
					<ul class="fileList">
						<li
							class="d-flex file-row align-items-center justify-content-between mb-2">
							<a href="${pageContext.request.contextPath }/project/issue/download/${f.issffId}" class="file_item d-flex align-items-center"> <i
								class="icon close"><em class="sr-only">첨부파일삭제</em></i> <c:choose>
									<c:when test="${empty f.fsfGbId}">
										<em class="file_name">첨부된 파일이 없습니다.</em>
									</c:when>
									<c:otherwise>
										<c:if test="${f.fsfGbId eq 'pdf' }">
											<i class="icon pdf"><em class="sr-only">${f.fsfGbId }</em></i>
										</c:if>
										<c:if test="${f.fsfGbId eq 'txt' }">
											<i class="icon txt"><em class="sr-only">${f.fsfGbId }</em></i>
										</c:if>
										<c:if test="${f.fsfGbId eq 'jpg'}">
											<i class="icon txt"><em class="sr-only">${f.fsfGbId }</em></i>
										</c:if>
										<c:if test="${f.fsfGbId eq 'png' }">
											<i class="icon txt"><em class="sr-only">${f.fsfGbId }</em></i>
										</c:if>
										<c:if test="${f.fsfGbId eq 'word' }">
											<i class="icon word"><em class="sr-only">${f.fsfGbId }</em></i>
										</c:if>
										<c:if test="${f.fsfGbId eq 'xlsx' }">
											<i class="icon xlsx"><em class="sr-only">${f.fsfGbId }</em></i>
										</c:if>
										<c:if test="${f.fsfGbId eq 'zip' }">
											<i class="icon zip"><em class="sr-only">${f.fsfGbId }</em></i>
										</c:if>
										<c:if test="${f.fsfGbId eq 'hwp' }">
											<i class="icon hangle"><em class="sr-only">${f.fsfGbId }</em></i>
										</c:if>
										<c:if test="${f.fsfGbId eq 'ppt' }">
											<i class="icon ppt"><em class="sr-only">${f.fsfGbId }</em></i>
										</c:if>
										<c:if test="${f.fsfGbId eq 'pptx' }">
											<i class="icon ppt"><em class="sr-only">${f.fsfGbId }</em></i>
										</c:if>
									</c:otherwise>
								</c:choose> <span class=""> <em class="file_name">${f.fsfOrgNm }</em></span>
						</a> <span class="file_size p-1 border border-dark-subtle fileSize">${f.fsFileSize }</span>
						</li>
					</ul>

				</div>
			</c:forEach>
			<div class="input-group my-2">
				<input type="file" name="bpAttchFile" multiple="multiple"
					class="form-control" id="addFileInput"
					aria-describedby="addFileBtn" aria-label="Upload">
			</div>
		</div>
	</div>
</div>
<!-- project veiw -->
</form:form>
<!-- button -->
<div class="btn-box clearfix mt-4">
	<button class="btn btn-secondary">목록</button>
	<div class="right float-end">
		<!-- <button class="btn btn-danger">취소</button> -->
		<button class="btn btn-primary" data-bs-toggle="modal"
			data-bs-target="#insertModal">등록</button>
	</div>
</div>
<!-- button -->

<script type="text/javascript"
	src='<c:url value="/resources/js/common/ckeditor5/super/ckeditor.js"/>'></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/common/datepicker/jquery-ui.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/common/datepicker/lang/datepicker-ko.js'/>"></script>

<script>
$(document).ready(function(){
	function getCsrfToken(){
		return document.querySelector('meta[name="_csrf"]').getAttribute('content');
	}
	function getCsrfHeader(){
		return document.querySelector('meta[name="_csrf_header"]').getAttribute('content');
	}
	 let viewEdit = document.querySelector("#viewEdit")
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
	            	console.log(editor.getData());
	            	$(insertBtn).on("click",function(e){
	            		console.log(e.target)
	            		$(fsnCn).val(editor.getData())
	            		$(insertForm).submit()
	            	})
	            });
})

</script>

