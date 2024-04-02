<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
										
				
				<!-- ui : table s -->
				<table class="table text-center">
					<caption class="sr-only">프로젝트 목록 테이블입니다.</caption>

					<colgroup>
						
						<col style="width: auto;">
						<col style="width: auto;">
						<col style="width: auto;">
						<col style="width: auto;">
						<col style="width: auto;">
						<col style="width: auto;">
						<col style="width: auto;">

					</colgroup>

					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">게시판</th>
							<th scope="col">제목</th>
							<th scope="col">관리자</th>
							<th scope="col">등록일자</th>
							<th scope="col">수정일자</th>
							<th scope="col">첨부파일</th>
						</tr>
					</thead>
					<tbody>
						<!-- 1 -->
						<tr>
							<th>
								<input type="checkbox">
							</th>
							<th scope="row">000007</th>
							<td>P000007</td>
							<td><span class="category ordinary">안정</span></td>
							<td class="text-start"><a href="#" class="text-link d-flex new">

									<span class="icon new_icon">
										<span class="sr-only">new</span>
									</span>
									<em class="text-elipsis">프로젝트 게시판입니다. 프로젝트 게시판입니다. 프로젝트 게시판입니다. 프로젝트 게시판입니다. 프로젝트
										게시판입니다.프로젝트 게시판입니다. 프로젝트 게시판입니다.프로젝트 게시판입니다.프로젝트 게시판입니다.프로젝트 게시판입니다. 프로젝트
										게시판입니다. 프로젝트 게시판입니다. 프로젝트 게시판입니다. 프로젝트 게시판입니다.프로젝트 게시판입니다. 프로젝트 게시판입니다.프로젝트
										게시판입니다.프로젝트 게시판입니다.</em>
								</a>
							</td>
							<td>유길상</td>
							<td>
								<a href="" class="download_link" download=""><i class="icon hangle"></i><em
										class="sr-only">한글파일 다운로드</em></a>
							</td>
							<td>24.01.01</td>
							<td>24.03.01</td>

							<td><button type="button" class="btn btn-primary">위키등록</button></td>
						</tr>
						<!-- 1 -->
						<!-- 2 -->
						<tr>
							<th>
								<input type="checkbox">
							</th>
							<th scope="row">000006</th>
							<td>P000006</td>
							<td><span class="category emergency">긴급</span></td>
							<td class="text-start"><a href="#" class="text-link d-flex">
									<span class="icon new_icon"><span class="sr-only">new</span></span>
									<em class="text-elipsis">프로젝트 게시판입니다.프로젝트 게시판입니다.</em>
								</a>
							</td>
							<td>유길상</td>
							<td>
								<a href="" class="download_link" download=""><i class="icon xlsx"></i><em
										class="sr-only">엑셀파일 다운로드</em></a>

							</td>
							<td>24.01.01</td>
							<td>24.03.01</td>
							<td><button type="button" class="btn btn-secondary" disabled="">위키등록</button></td>
						</tr>
						<!-- 2 -->
						<!-- 3 -->
						<tr>
							<th>
								<input type="checkbox">
							</th>
							<th scope="row">000003</th>
							<td>P000003</td>
							<td><span class="category project">신규</span></td>
							<td class="text-start"><a href="#" class="text-link d-flex new">

									<span class="icon new_icon"><span class="sr-only">new</span></span>
									<em class="text-elipsis">프로젝트 게시판입니다.프로젝트 게시판입니다.</em>
								</a>
							<td>유길상</td>
							<td>
								<a href="" class="download_link" download=""><i class="icon ppt"></i><em
										class="sr-only">파워포인트파일 다운로드</em></a>
							</td>
							<td>24.01.01</td>
							<td>24.03.01</td>
							<td><button type="button" class="btn btn-primary">위키등록</button></td>
						</tr>
						<!-- 3 -->
						<!-- 4 -->
						<tr>
							<th>
								<input type="checkbox">
							</th>
							<th scope="row">004</th>
							<td>BA</td>
							<td><span class="category ordinary">안정</span></td>
							<td class="text-start">
								<a href="#" class="text-link d-flex">
									프로젝트입니다
								</a>
							</td>
							<td>유길상</td>
							<td><a href="" class="download_link" download=""><i class="icon txt"></i><em
										class="sr-only">텍스트파일 다운로드</em></a>
							</td>
							<td>24.01.01</td>
							<td>24.03.01</td>
							<td><button type="button" class="btn btn-primary">위키등록</button></td>
						</tr>
						<!-- 4 -->
						<!-- 5 -->
						<tr>
							<th>
								<input type="checkbox">
							</th>
							<th scope="row">005</th>
							<td>BA</td>
							<td><span class="category ordinary">안정</span></td>
							<td class="text-start">
								<a href="#" class="text-link d-flex">
									프로젝트입니다
								</a>
							</td>
							<td>유길상</td>
							<td>
								<a href="" class="download_link" download=""><i class="icon pdf"></i><em
										class="sr-only">pdf 다운로드</em></a>
							</td>
							<td>24.01.01</td>
							<td>24.03.01</td>
							<td><button type="button" class="btn btn-primary">위키등록</button></td>

						</tr>
						<!-- 5 -->
						<!-- 6 -->
						<tr>
							<th>
								<input type="checkbox">
							</th>
							<th scope="row">005</th>
							<td>BA</td>
							<td><span class="category ordinary">안정</span></td>
							<td class="text-start">
								<a href="#" class="text-link d-flex">
									프로젝트입니다22222
								</a>
							</td>
							<td>유길상</td>
							<td>
								<a href="" class="download_link" download=""><i class="icon zip"></i><em
										class="sr-only">zip 다운로드</em></a>
							</td>
							<td>24.01.01</td>
							<td>24.03.01</td>
							<td><button type="button" class="btn btn-primary">위키등록</button></td>
						</tr>
						<!-- 6 -->
						<!-- 7 -->
						<tr>
							<th>
								<input type="checkbox">
							</th>
							<th scope="row">005</th>
							<td>BA</td>
							<td><span class="category ordinary">안정</span></td>
							<td class="text-start">
								<a href="#" class="text-link d-flex">
									프로젝트입니다22222
								</a>
							</td>
							<td>유길상</td>
							<td>
								<a href="" class="download_link" download=""><i class="icon word"></i><em
										class="sr-only">word 다운로드</em></a>
							</td>
							<td>24.01.01</td>
							<td>24.03.01</td>
							<td><button type="button" class="btn btn-primary">위키등록</button></td>
						</tr>
						<!-- 7 -->	
					</tbody>
				</table>
				<!-- ui : table e -->
				
										
									