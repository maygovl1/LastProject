<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
대시보드


<%-- 모달버튼 --%>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteModal">
   모달테스트삭제
</button>
<%-- 모달버튼 --%>

<%-- 모달 --%>
<div class="modal fade deleteModal" id="deleteModal" tabindex="-1"    aria-labelledby="deleteModal" aria-hidden="true">
                     
   <div class="modal-dialog modal-lg">
      <div class="modal-content">
         <div class="modal-header bg-primary text-white">
            <strong class="modal-title" id="recomModal">추천</strong>
         </div>
         <div class="modal-body">
            
            <!-- modal bottom -->
            <div class="cal-Modal_table">

               <table class="table text-center">
                  <caption class="sr-only">추천테이블입니다</caption>

                  <colgroup>
                     <col style="width: 5%;">
                     <col style="width: 10%;">
                     <col style="width: 10%;">
                     <col style="width: auto;">
                     <col style="width: 10%;">
                     <col style="width: 8%;">
                     <col style="width: 8%;">
                     <col style="width: 8%;">
                  </colgroup>

                  <thead>
                     <tr>
                        <th scope="col">
                           <input type="checkbox">
                        </th>
                        <th scope="col">번호</th>
                        <th scope="col">상태</th>
                        <th scope="col">제목</th>
                        <th scope="col">담당자</th>
                        <th scope="col">등록일</th>
                        <th scope="col">마감일</th>
                        <th scope="col">진행률</th>
                     </tr>
                  </thead>
                  <tbody>
                     <!-- 일감없음 -->
                     <tr>
                        <td class="text-center" colspan="8">분배된 일감이 없습니다</td>
                     </tr>
                     <!-- 일감없음 -->
                  </tbody>

               </table>

               <!-- page -->            
         
               <div class="pageBox">
                  <ul class="pagination justify-content-center">
                     <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                           <span aria-hidden="true">«</span>
                        </a>
                     </li>
                     <li class="page-item"><a class="page-link" href="#">1</a></li>
                     <li class="page-item"><a class="page-link" href="#">2</a></li>
                     <li class="page-item"><a class="page-link" href="#">3</a></li>
                     <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                           <span aria-hidden="true">»</span>
                        </a>
                     </li>
                  </ul>
               </div>      
               <!-- page -->
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
<%--모달 --%>