<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
    

<%--  datepicker css  수정 , 등록 페이지에만 -일감--%>
<link rel="stylesheet" href="<c:url value='/resources/js/common/datepicker/jquery-ui.css'/>"> 
<%--  datepicker css  수정 , 등록 페이지에만 -일감--%>
<!-- modify veiw -->
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
                <li>
                    <span class="list-tit">작성자</span>
                    <span>김태은(개발1팀)</span>
                </li>
                <li>
                    <span class="list-tit">등록일</span>
                    <span>2024.04.05</span>
                </li>
                <li>
                    <span class="list-tit">수정일</span>
                    <span>2024.04.04</span>
                </li>
                </li>
                <!-- 프로젝트 상태값:
														<li><span class="">상태</span><span>신규</span></li>
													<li><span class="">상태</span><span>안정</span></li>
														<li><span class="">상태</span><span>긴급</span></li>
												-->
            </ul>
        </div>
        <div class="view_content" id="viewEdit"></div>
        <!-- 첨부파일 -->
        <!-- 첨부파일 -->
       
    </div>

</div>
<!-- modify veiw -->
<!-- button -->
<div class="btn-box clearfix mt-4">
    <button class="btn btn-secondary">목록</button>
    <div class="right float-end">
        <!-- <button class="btn btn-danger">취소</button> -->
        <button class="btn btn-danger">삭제</button>
        <button class="btn btn-primary">수정</button>
    </div>
</div>
<!-- button -->
<script type="text/javascript" src='<c:url value="/resources/js/common/ckeditor5/super/ckeditor.js"/>'></script>
<script type="text/javascript" src="<c:url value='/resources/js/common/datepicker/jquery-ui.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/common/datepicker/lang/datepicker-ko.js'/>"></script>

<script>
   let viewEdit = document.querySelector("#viewEdit")
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
            });
       
   

</script>
								

						
	

		
								
							