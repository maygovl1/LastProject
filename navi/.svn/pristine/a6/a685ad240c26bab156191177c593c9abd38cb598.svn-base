<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags"  prefix="spring"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/template/login.css"/>
    <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<form:form> 
     <%-- 로그인  --%>
       <div class="wrap">

        <div class="wrap-inner">
            <div class="centerBox">
             <%-- right:box  --%>
                <div class="box right">
                	<%-- login  --%>
                    <div class="login">
                       
                        <strong class="login-title">
                            <em class="sr-only">PMS LOGIN</em>
                        </strong>
                        <em class="sub-title">
                            NAVI MINE에 오신걸 환영합니다.
                        </em>
                    
                        <div class="login-info">
                            <div class="mb-1">
                                <input type="text" title="사원번호를 입력해주세요." placeholder="사원번호를 입력해주세요."
                                    class="form-control" id="id" name="username" autocomplete="off" required=""
                                    aria-required="true">
                            </div>
                            <div class="mb-2">
                                <input type="password" title="비밀번호를 입력해주세요." placeholder="비밀번호를 입력해주세요."
                                    class="form-control" id="password" name="password" autocomplete="off"
                                    required="" aria-required="true">
                            </div>
                            <div class="d-flex justify-content-start m-2 my-3 align-items-center">
                                <span class="ui-check">
                                    <input class="form-check-input" type="checkbox" id="loginStateCheck"
                                        name="username" title="로그인 상태 유지하기" value="d">
                                    <label class="checkbox-inline" for="loginStateCheck">
                                        로그인상태 유지하기
                                    </label>
                                    <input type="hidden" name="loginState" id="loginState" value="false">
                                </span>
                            </div>
                            <button type="submit" class="btn btn-primary">로그인</button>
                            <button type="button" class="btn btn btn-secondary">사원번호찾기</button>
                            <button type="button" class="btn btn btn-secondary">비밀번호찾기</button>
                        </div>
                    </div>
                     <%-- login  --%>
                </div>
              <%-- right:box  --%>

            </div>
        </div>
    </div>
     
     <%-- 로그인  --%>
</form:form>
</body>
</html>