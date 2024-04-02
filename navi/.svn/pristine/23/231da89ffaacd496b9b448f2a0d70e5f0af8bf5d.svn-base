<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!--inner-->
<div class="side_inner">
	<div class="content-box">
		<div class="content">
			<div class="inner html">
				<!-- ui : s -->
				<!-- project veiw -->
				<strong class="ui-tit">공지사항수정</strong>
				<div class="view">
					<div class="view_inner">
						<div class="view-info">
							<strong class="view-tit d-flex align-items-center">
								<div class="mx-2">
									<span class="category project">제목 입력</span>
								</div>
								<div class="col-sm-11">
									<input type="text" class="form-control"
										value="기존 수정하고자하는 공지사항 게시글의 제목">
								</div>

							</strong>
							<ul class="ul clearfix">
								<!-- 일감상태  -->
								<!-- 진행률  -->
								<!-- 10% : 대기  & 30%,50%,70%,90% : 진행중 & 99%: 처리완료 & 100%:최종완료 
                                                오늘의 일정과 일감의 목록에 진행률이 수정되면  자동반영되어야 함.  
                                                반려 처리는 99%(처리완료) 이하의 값으로 되면 "반려"처리로 카운트
                                            -->
								<li class="d-flex w-50  align-items-center mb-2"><span
									class="list-tit">게시판선택</span> <span class="col-sm-6"> <select
										class="form-select" aria-label="Default select example">
											<option value="ano">일반</option>
											<option value="task_ano">서식게시판</option>
											<option value="share_ano">나눔게시판</option>
											<option value="prais_ano">칭찬게시판</option>
											<option value="photo_ano">포토게시판</option>
									</select>
								</span></li>
								<!-- <li class="d-flex w-50  align-items-center mb-2">
                                                <span class="list-tit">등록일</span>
                                                <span>2024.04.04</span></li>
                                            </li> -->
								<!-- 일감 상태값:
                                                        <li><span class="">상태</span><span>신규</span></li>
                                                        <li><span class="">상태</span><span>안정</span></li>
                                                        <li><span class="">상태</span><span>긴급</span></li>
                                                -->
							</ul>
						</div>
					</div>

					<div class="view_content">
						<textarea class="form-control" placeholder="서식자료를 입력하세요."
							id="formContent" rows="30">기존 수정하고자하는 공지사항 게시글의 내용이 적혀있습니다.
                                    </textarea>
					</div>
				</div>
			</div>
			<!-- project veiw -->
			<div class="content">
				<div class="inner html">
					<!-- ui : s -->
					<!-- ui : table s -->
					<div class="addfile">
						<ul>
							<li class="d-flex justify-content-center border-bottom"
								id="split">
								<button type="button" class="m-3 btn-close" aria-label="Close"></button>
								<i class="m-2 icon pdf"></i> <span
								class="p-2 flex-grow-1 oneLine"> <span class="i">대덕인재개발원
										리뉴얼.pdf</span> <span class="ii">2m ago</span>
							</span> <span id="fileSize" class="p-1 border border-dark-subtle">604KB</span>
							</li>
							<li class="d-flex justify-content-center border-bottom"
								id="split">
								<button type="button" class="m-3 btn-close" aria-label="Close"></button>
								<i class="m-2 icon zip"></i> <span
								class="p-2 flex-grow-1 oneLine"> <span class="i">대덕인재개발원
										리뉴얼.zip</span> <span class="ii">2m ago</span>
							</span> <span id="fileSize" class="p-1 border border-dark-subtle">2.20GB</span>
							</li>
							<li class="d-flex justify-content-center border-bottom"
								id="split">
								<button type="button" class="m-3 btn-close" aria-label="Close"></button>
								<i class="m-2 icon hangle"></i> <span
								class="p-2 flex-grow-1 oneLine"> <span class="i">대덕인재개발원
										리뉴얼.img</span> <span class="ii">3 days ago</span>
							</span> <span id="fileSize" class="p-1 border border-dark-subtle">1.46MB</span>
							</li>
							<li class="d-flex justify-content-center border-bottom"
								id="split">
								<button type="button" class="m-3 btn-close" aria-label="Close"></button>
								<i class="m-2 icon ppt"></i> <span
								class="p-2 flex-grow-1 oneLine"> <span class="i">대덕인재개발원
										리뉴얼.pptx</span> <span class="ii">3 days ago</span>
							</span> <span id="fileSize" class="p-1 border border-dark-subtle">929KB</span>
							</li>
						</ul>
						<div class="input-group">
							<input type="file" class="form-control" id="addFileInput"
								aria-describedby="addFileBtn" aria-label="Upload">
							<button class="btn btn-primary" type="button" id="addFileBtn">Button</button>
						</div>
						<!-- ui : table e -->
						<!-- ui : e -->
					</div>
				</div>
				<div class="btn-box clearfix mt-4">
					<div class="right float-end">
						<!-- <button class="btn btn-danger">취소</button> -->
						<button class="btn btn-primary">완료</button>
						<button class="btn btn-danger">취소</button>
					</div>
				</div>
			</div>
			<!-- button -->
			<!-- ui : e -->
		</div>
	</div>
</div>
<!--inner-->