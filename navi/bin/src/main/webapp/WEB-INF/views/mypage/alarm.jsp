<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>

									
				
				<!--  alram -->
				<div class="alramBoard board"  id="alram">
					<div class="row mb-3">
						<div class="col-md-6 text-start">
							<button class="btn btn-primary btn-sm">전체읽음</button>
							<button class="btn btn-danger btn-sm">전체삭제</button>
						</div>
						<!-- 알림설정버튼 -->
						<div class="col-md-6 text-end">
							<button class="btn" data-bs-toggle="modal" data-bs-target="#settingmodal">
								<i class="icon setting"></i>
								<span class="sr-only">알림유형 설정버튼</span>
							</button>
						</div>
						<!-- 알림설정버튼 -->
					</div>
					<table class="table text-center">
						<caption class="sr-only">
							게시판별 알림설정 테이블입니다.
						</caption>
						<colgroup>
							<col style="width:5%">
							<col style="width:10%">
							<col style="width:15%">
							<col style="width:35%">
							<col style="width:10%">
							<col style="width:10%">
							<col style="width:15%">
						</colgroup>
						<thead>
							<th>
								<input type="checkbox">
							</th>
							<th>번호</th>
							<th>알림타입ID</th>
							<th>내용</th>
							<th>읽음확인</th>
							<th>발생일</th>
							<th>삭제</th>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox"></td>
								<td><span>000001</span></td>
								<td><span>나눔공간</span></td>
								<td class="text-start"><a href="#" class="text-link"><em class="text-elipsis">게시판에
											새로운 글이 등록되었습니다. 게시판에 새로운 글이 등록되었습니다.게시판에 새로운 글이 등록되었습니다.게시판에 새로운 글이
											등록되었습니다.게시판에 새로운 글이 등록되었습니다.게시판에 새로운 글이 등록되었습니다.게시판에 새로운 글이 등록되었습니다.게시판에
											새로운 글이 등록되었습니다.게시판에 새로운 글이 등록되었습니다.</em></a></td>
								<td><span>읽음</span></td>
								<td><span>2024-12-31 13:14</span></td>
								<td><button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal"
										data-bs-target="#deletemodal">삭제</button></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td><span>2</span></td>
								<td><span>일감배정</span></td>
								<td class="text-start"><a href="#">새로운 일감을 배정 받았습니다.</a></td>
								<td><span>읽음</span></td>
								<td><span>2024-12-31 11:10</span></td>
								<td><button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal"
										data-bs-target="#deletemodal">삭제</button></td>
							</tr>
						</tbody>
					</table>
					<!-- delete modal -->
					<div class="modal fade" id="deletemodal" tabindex="-1" aria-labelledby="deletemodalLabel"
						aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-body text-center mt-5 mb-5">
									<p>삭제하시겠습니까?</p>
									<button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
									<button type="button" class="btn btn-primary">확인</button>
								</div>
							</div>
						</div>
					</div>
					<!-- setting modal -->
					<div class="modal fade" id="settingmodal" tabindex="-1" aria-labelledby="settingmodalLabel"
						aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header bg-primary mb-1">
									<strong class="modal-title text-white" id="exampleModalLabel">알림설정</strong>
								</div>
								<div class="modal-body ">
									<div class="alrambox">
										<ul class="table-bordered ming-sun text-center align-middle mb-0">
											<li class="d-flex justify-content-between py-2 border-bottom">
												<span>공지게시판 알림</span>
												<div class="wk_con form-check form-switch">
													<input class="form-check-input" type="checkbox" role="switch"
														id="noticeAlram" checked="">
													<label class="form-check-label" for="noticeAlram">on</label>
												</div>

											</li>
											<li class="d-flex justify-content-between py-2 border-bottom">
												<span>서식게시판 알림</span>
												<div class="wk_con form-check form-switch">
													<input class="form-check-input" type="checkbox" role="switch"
														id="formAlram" checked="">
													<label class="form-check-label" for="formAlram">on</label>
												</div>
											</li>
											<li class="d-flex justify-content-between py-2">
												<span>댓글 알림</span>
												<div class="wk_con form-check form-switch">
													<input class="form-check-input" type="checkbox" role="switch"
														id="newAlram" checked="">
													<label class="form-check-label" for="newAlram">on</label>
												</div>
											</li>
										</ul>
									</div>
									<div class="modal-footer justify-content-center">
										<button type="button" class="btn btn-light btn-outline-secondary"
											data-bs-dismiss="modal"> 닫기</button>
										<button type="button" class="btn btn-primary">확인</button>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!--alram -->

				
									
								