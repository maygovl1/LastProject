<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%-- 추천모달버튼 --%>
<div class="d-flex justify-content-end">
	<button type="button" class="btn btn-primary mb-3" id="openModalBtn"
		data-bs-toggle="modal" data-bs-target="#recomModal">음식추천</button>
</div>
<%-- 추천모달버튼 --%>

<%-- ${recomList} --%>
<%-- 추천모달 --%>
<div class="modal fade recomModal" id="recomModal" tabindex="-1"
	aria-labelledby="recomModal" aria-hidden="true">

	<div class="modal-dialog modal-fullsize">
		<div class="modal-content" >
			<div class="modal-header bg-primary text-white">
				<strong class="modal-title">음식추천</strong>
			</div>
			<div class="modal-body" id="modalRecom">
				<!-- modal con -->
				<div class="row row-cols-3 g-4 list  common_list recomList" id="resultFoodRecom">
			
				<c:forEach items="${recomList}" var="recomList">
							<a href="<c:url value='/quick/food/${recomList.foodId}'/>" > 
								<div class="col">
								
									<div class="card">
									
										<div class="photo_img">
											<div class="img-in">
												<img src="${recomList.foodImgUrl}" class="card-img-top" alt="${recomList.foodPlace}${recomList.foodName}">
											</div>
										</div>
										<div class="card-body">
											<strong class="card-title">
												<em class="text-elipsis">${recomList.foodName}</em>
											</strong>
											<ul class="card-footer d-flex justify-content-between border-0 py-0">
												<li>
													<span>
														<i class="icon market_b"><em class="sr-only">음식점</em></i>
														${recomList.foodPlace}
													</span>
												</li>
											</ul>
										</div>
										
									</div>
								
								</div> 
							</a>
							
						</c:forEach> 
					</div>
				
			</div>
			<div class="modal-footer justify-content-center">
				<button type="button" class="btn btn-light btn-outline-secondary"
					data-bs-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<%-- 추천모달  --%>



<div class="row row-cols-2 row-cols-md-4 g-4 list mb-4 common_list recomList" id="foodRecomList">
<c:forEach items="${foodList}" var="food">
<!-- col -->
		<a href="<c:url value='/quick/food/${food.foodId}'/>"  class="recomfood"> 
			<div class="col">
			<%-- 카드 --%>
				<div class="card">
					<%-- 	<span class="category weather">${todayWeather.weatherId}</span> --%>
					<div class="photo_img">
						<div class="img-in">
							<img src="${food.foodImgUrl}" class="card-img-top" alt="${food.foodPlace}${food.foodName}">
						</div>
					</div>
					<div class="card-body">
						<strong class="card-title">
							<em class="text-elipsis">${food.foodName}</em>
						</strong>
						<ul class="card-footer d-flex justify-content-between border-0 py-0">
							<li>
								<span>
									<i class="icon market_b"><em class="sr-only">음식점</em></i>
									${food.foodPlace}
								</span>
							</li>
							<li>
								<span>
									<i class="icon see_b"><em class="sr-only">조회수</em></i>
									<em class="seenum">0</em>
								</span>
							</li>
						</ul>
					</div>
					
				</div>
				<%-- 카드 --%>
			</div> 
		</a>
		<!-- col -->
	</c:forEach>
</div>
<%-- 추천모달버튼 --%>

<script>
/*
document.addEventListener("DOMContentLoaded", (event) => {

    const cPath = document.body.dataset.contextPath;
    function getCsrfToken(){    
        return document.querySelector('meta[name="_csrf"]').getAttribute('content');
    }
    function getCsrfHeader(){
        return document.querySelector('meta[name="_csrf_header"]').getAttribute('content');
    }


   	function recomDateList(var data){
   		
   		data.forEach((item,idx),function(){
   			
   				console.log(item.idx)
   			
   		});
   		
   	};
    


    var recomData = [];

    document.getElementById('openModalBtn').addEventListener('click', function() {

            console.log(url);
            var url= location.href + "/test";
            console.log(url);
            // 모달을 열기 전에 fetch를 사용하여 데이터를 가져옵니다.
            fetch(url, {
                headers: {
                "Accept": "application/json",
                [getCsrfHeader()]: getCsrfToken()
                }
            }).then(resp => {
                if (resp.ok) {
                return resp.json(); // JSON 형식으로 파싱하여 반환합니다.
                } else {
                throw new Error(`상태코드 ${resp.status} 수신`, { cause: resp })
                }
            }).then(jsonData => {
            // 받아온 JSON 데이터를 recomData에 저장합니다.
                recomData = jsonData.recomList;
                console.log(recomData);
                insertDataIntoJSP(recomData);
            
                // 모달 열기
                $('#recomModal').modal('show');
            }).catch(err => {

                console.error(err);
            });
       

    });


});

*/

	</script>

