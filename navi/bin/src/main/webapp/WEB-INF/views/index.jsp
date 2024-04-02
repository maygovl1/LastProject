<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- wrap -->
<div class="wrap">
	<!-- section1 -->
	<div class="section sc1">
		<div class="inner">
			<div class="box img">
				<div class="box-in img-in">
					<div class="imgcon"></div>
				</div>
			</div>
			<div class="box text">
				<div class="box-in">
					<em class="tit s-tit">project managment System</em> <strong
						class="tit m-tit">NAVIMINE</strong> <em class="tit m-tit yel">SEAMLESS</em>
					<em class="tit m-tit yel">SOLUTIONS</em>
				</div>
			</div>
		</div>
	</div>
	<!-- section1 -->
	<!-- section2 프로젝트현황-->
	<div class="section sc2">
		<div class="inner">
		<div class="object obj1"></div>
			<!-- text -->
			<div class="box text">
				<div class="box-in">
					<em class="tit s-tit">project managment System</em> <strong
						class="tit m-tit">NAVIMINE</strong> <em
						class="tit m-tit yel anchor">CONSTRACT</em>
				</div>
			</div>
			<!-- text -->
			<!-- img  /* 그래프 넣아야함 */-->
			<div class="box img">
				<div class="box-in img-in">
					<div class="imgcon"></div>
				</div>
			</div>
			<!-- img -->
		</div>
	</div>
	<!-- section2 프로젝트현황 -->
	<!-- section3 우수회원-->
	<div class="section sc3 ">
		
		<div class="inner testimonials">
			<div class="object obj2"></div>
			<!-- 우수회원 -->
			<strong class="sc-tit">Top Performer</strong>

			<div class="top row">
				<div class=" d-flex row-in img-card-list">
					<!-- 1 -->
					<div class="col-lg-4">
						<div class="item mx-auto mb-5 mb-lg-0">

							<div class="img-card">
								<div class="object star"></div>
								<div class="img-in clearfix">
								
									<img class="img img-fluid rounded-circle mb-3"
										src="./resources/images/main/noImg.jpg" alt="...">
								</div>
								<span class="category  depart">개발1팀</span>
							</div>
							<div class="text">
								<strong>유길상 사원</strong>
							</div>

						</div>
					</div>
					<!-- 2 -->
					<div class="col-lg-4">
						<div class="item mx-auto mb-5 mb-lg-0">

							<div class="img-card">
								<div class="object star"></div>
								<div class="img-in">
									<img class="img img-fluid rounded-circle mb-3"
										src="./resources/images/main/noImg.jpg" alt="...">
								</div>
								<span class="category  depart">개발1팀</span>
							</div>
							<div class="text">
								<strong>유길상 사원</strong>
							</div>

						</div>
					</div>
					<!-- 3 -->
					<div class="col-lg-4">
						<div class="item mx-auto mb-5 mb-lg-0">

							<div class="img-card">
								<div class="object star"></div>
								<div class="img-in">
									<img class="img img-fluid rounded-circle mb-3"
										src="./resources/images/main/noImg.jpg" alt="...">
								</div>
								<span class="category  depart">개발1팀</span>
							</div>
							<div class="text">
								<strong>유길상 사원</strong>
							</div>

						</div>
					</div>
					<!-- end -->

				</div>
			</div>
			<!-- 우수회원 -->
			<!-- 공지사항-->
			<strong class="sc-tit"> Notice </strong>
			<div class="bottom row">

				<div class="row-in board-notice">

					<div class="board-list">
						<div class="content-box">
							<a href="" class="content-link"> <strong
								class="content-title">2222PMS 공지사항2입니다 PMS 공지사항2입니다 PMS
									공지사항입니2다 PMS 공지사항2입니다 PMS 공지사항2입니다 PMS 공지사항2입니다 PMS 2공지사항2입니다
									PMS 공지사항입니다</strong> <span class="content-date">2023.12.30</span>
							</a>
						</div>
						<div class="content-box">
							<a href="" class="content-link"> <strong
								class="content-title">2222PMS 공지사항2입니다 PMS 공지사항2입니다 PMS
									공지사항입니2다 PMS 공지사항2입니다 PMS 공지사항2입니다 PMS 공지사항2입니다 PMS 2공지사항2입니다
									PMS 공지사항입니다</strong> <span class="content-date">2023.12.30</span>
							</a>
						</div>
						<div class="content-box">
							<a href="" class="content-link"> <strong
								class="content-title">2222PMS 공지사항2입니다 PMS 공지사항2입니다 PMS
									공지사항입니2다 PMS 공지사항2입니다 PMS 공지사항2입니다 PMS 공지사항2입니다 PMS 2공지사항2입니다
									PMS 공지사항입니다</strong> <span class="content-date">2023.12.30</span>
							</a>
						</div>
						<div class="content-box">
							<a href="" class="content-link"> <strong
								class="content-title">2222PMS 공지사항2입니다 PMS 공지사항2입니다 PMS
									공지사항입니2다 PMS 공지사항2입니다 PMS 공지사항2입니다 PMS 공지사항2입니다 PMS 2공지사항2입니다
									PMS 공지사항입니다</strong> <span class="content-date">2023.12.30</span>
							</a>
						</div>
					</div>
					<a href="" class="more"> 
						<span> <i class="sr-only">공지사항더보기</i></span>
					</a>
				</div>
			</div>

		</div>
		<!-- 공지사항-->
	</div>

<!-- wrap -->
	<%-- quick --%>
	<div class="quick-box" id="qickScroll">
		<ul class="ul quick-conbox clearfix">
		  <li>
			<a href="${pageContext.request.contextPath}/quick/img" class="btn btn1">
			  <span class="icon imageAPI"></span><span class="txt">이미지</span>
			</a>
		  </li>
		  <li>
			<a href="${pageContext.request.contextPath}/quick/translation"  class="btn btn2">
			  <span class="icon translation"></span><span class="txt">번역</span>
			</a>
		  </li>
		  
		  <li>
			<a href="${pageContext.request.contextPath}/quick/cert" class="btn btn3">
			  <span class="icon license"></span><span class="txt">자격증</span>
			</a>
		  </li>
		  
<!-- 		  <li> -->
<!-- 			<a href="javascript:void(0);" class="btn btn3" onclick="openCertModal()">  -->
<!-- 			<span class="icon license"></span><span class="txt">자격증</span> -->
<!-- 			</a> -->
<!-- 		  </li> -->
		  
		  <li>
			<a href="${pageContext.request.contextPath}/quick/book" class="btn btn4">
			  <span class="icon book"></span><span class="txt">도서</span>
			</a>
		  </li>
		  <li>
			<a href="${pageContext.request.contextPath}/quick/news" class="btn btn5">
			  <span class="icon news"></span><span class="txt">뉴스</span>
			</a>
		  </li>
		  <li>
			<a href="${pageContext.request.contextPath}/quick/vac" class="btn btn6">
			  <span class="icon tourplace"></span
			  ><span class="txt">휴양지</span>
			</a>
		  </li>
		  <li>
			<a href="${pageContext.request.contextPath}/quick/food" class="btn btn7">
			  <span class="icon food"></span><span class="txt">음식</span>
			</a>
		  </li>
		  
			<!-- 메일 -->
			<li><a href="${pageContext.request.contextPath}/mail" class="btn btn8"> <span class="icon mail"></span><span
					class="txt">메일</span>
			</a></li>
			<!-- 메일 -->
			<!-- 졸음방지알림 -->
			<li>
				<button type="button" class="btn btn9" data-bs-toggle="modal" data-bs-target="#wakeupModal">
					 <span class="icon wakeup"></span>
					 <span class="txt">졸음방지</span>
				 </button>
			</li>
			<!-- 졸음방지알림 -->
			<!-- 마이페이지 -->
			<li><a href="${pageContext.request.contextPath}/mypage" class="btn btn10"> <span class="icon mypage"></span><span
					class="txt">Mypage</span>
			</a></li>
			<!-- 마이페이지 -->
			<!-- 프로그램가이드 -->
			<li>
				<a href='${pageContext.request.contextPath }/prog' class="btn btn11" target="_blank" title="새창열림"> <span class="icon prog"></span><span
		class="txt">프로그램<br>가이드</span>
				</a>
			</li>
			<!-- 프로그램가이드 -->
		 
		</ul>
	  </div>
	<%-- quick --%>
	<!-- chat -->
	<div class="chat-box quick" id="chatBtn">
		<button class="chat-tit btn">
			<span class="sr-only">채팅</span>
		</button>
		  <!-- chat-conbox : s -->
        <div class="chat-conbox">
            <!-- 클래스나 아이디로 페이지 구분 -->
            <!-- chat_in : s -->
            <!-- 자리비움 설정 시 나와야함 -->
            <div class="chat_in chat_pw">
                <div class="chat_top point_bg">
                   <button class="btn close">
                        <i class="icon left_arrow"></i>
                        <em class="sr-only">채팅닫기</em>
                    </button>
                    <strong class="chat_tit">비밀번호 입력</strong>
                    <em class="chat_desc">설정하신 비밀번호를 입력해주세요.</em>
                </div>
                <div class="chat_middle">
                    <div class="input_pw">
                        <input type="password" title="PMS 비밀번호를 입력해주세요." placeholder="PMS 비밀번호를 입력해주세요."
                            class="form-control" id="password" name="password" autocomplete="off" required=""
                            aria-required="true">
                        <button type="submit" class="btn btn-custom">확인</button>
                    </div>
                    <button type="button" class="btn btn btn-secondary">비밀번호찾기</button>

                </div>
            </div>
            <!-- 자리비움 설정 시 나와야함 -->
            <!-- chat_in : e -->
        </div>
        <!-- chat-conbox : e -->
	</div>
	<!-- chat -->
</div>


<%-- 졸음방지모달 --%>
<div class="modal fade wakeupModal" id="wakeupModal" tabindex="-1" 	aria-labelledby="wakeupModal" aria-hidden="true">
							
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-primary text-white">
				<strong class="modal-title" id="wakeupModal">졸음방지</strong>
			</div>
			<div class="modal-body">
				
				<!-- modal bottom -->
				<div class="cal-Modal_table">
					졸음방지알림설정 모달
				
				</div>
				<!-- modal bottom -->
			</div>
			<div class="modal-footer justify-content-center">
				<button type="button" class="btn btn-light btn-outline-secondary" data-bs-dismiss="modal">닫기</button>
				<button type="button" class="btn btn-primary"> 확인</button>
			</div>
		</div>
	</div>
</div>
<%-- 졸음방지모달 --%>

<%-- <%-- 자격증추천 모달 --%>
<!-- <script> -->
//   function openCertModal() {
//     // 모달을 보이도록 설정
//     $('#certModal').modal('show');
//   }
<!-- </script> -->
<!-- <div class="modal modal-center fade" id="certModal" tabindex="-1" aria-labelledby="certModalLabel" aria-hidden="true"> -->
<!-- 	<div class="modal-dialog modal-lg"> -->
<!-- 		<div class="modal-content" style="transform: translate(1%, 30%)"> -->
<!-- 			<div class="modal-header"> -->
<!-- 				<h5 class="modal-title" id="certModalLabel">자격증 추천</h5> -->
<!-- 				<button type="button" class="btn-close" data-bs-dismiss="modal" -->
<!-- 					aria-label="Close"></button> -->
<!-- 			</div> -->
<!-- 			<div class="modal-body"> -->
<!-- 				page1 -->
<!-- 				<div class="content first_recom"> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-4 text-center"> -->
<!-- 							<img src="resources/images/recom/cert/cert0.jpg" -->
<!-- 								class="img-thumbnail" alt="도서 표지 이미지"> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-8"> -->
<!-- 							<ul class="list-unstyled"> -->
<!-- 								<li><strong>자격증 명 :</strong> <span id="bookTitle">정보처리기사</span> -->
<!-- 								</li> -->
<!-- 								<hr> -->
<!-- 								<li><strong>자격 구분 :</strong> <span id="bookAuthor">국가자격</span> -->
<!-- 								</li> -->
<!-- 								<hr> -->
<!-- 								<div class="box"> -->
<!-- 									<li><strong>도서 설명 :</strong></li> -->

<!-- 									<li><span id="bookDescription">자격증정보가 적히는 공간입니다</span></li> -->
<!-- 								</div> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				/page1 -->
<!-- 				page2 -->
<!-- 				<div class="content second_recom"> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-4 text-center"> -->
<!-- 							<img src="resources/images/recom/cert/cert1.jpg" -->
<!-- 								class="img-thumbnail" alt="도서 표지 이미지"> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-8"> -->
<!-- 							<ul class="list-unstyled"> -->
<!-- 								<li><strong>자격증 명 :</strong> <span id="bookTitle">정보보안기사</span> -->
<!-- 								</li> -->
<!-- 								<hr> -->
<!-- 								<li><strong>자격 구분 :</strong> <span id="bookAuthor">국가자격</span> -->
<!-- 								</li> -->
<!-- 								<hr> -->
<!-- 								<div class="box"> -->
<!-- 									<li><strong>도서 설명 :</strong></li> -->

<!-- 									<li><span id="bookDescription">자격증정보가 적히는 공간입니다</span></li> -->
<!-- 								</div> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				/page2 -->
<!-- 				page3 -->
<!-- 				<div class="content third_recom"> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-4 text-center"> -->
<!-- 							<img src="resources/images/recom/cert/cert5.jpg" -->
<!-- 								class="img-thumbnail" alt="도서 표지 이미지"> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-8"> -->
<!-- 							<ul class="list-unstyled"> -->
<!-- 								<li><strong>자격증 명 :</strong> <span id="bookTitle">SQLD</span> -->
<!-- 								</li> -->
<!-- 								<hr> -->
<!-- 								<li><strong>자격 구분 :</strong> <span id="bookAuthor">국가자격</span> -->
<!-- 								</li> -->
<!-- 								<hr> -->
<!-- 								<div class="box"> -->
<!-- 									<li><strong>도서 설명 :</strong></li> -->

<!-- 									<li><span id="bookDescription">자격증정보가 적히는 공간입니다</span></li> -->
<!-- 								</div> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="modal-footer"> -->
<!-- 				<button type="button" class="btn btn-secondary" -->
<!-- 					data-bs-dismiss="modal">Close</button> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->
<%-- <%-- 자격증추천 모달 --%> 


<script src="${pageContext.request.contextPath}/resources/js/index.js"></script>