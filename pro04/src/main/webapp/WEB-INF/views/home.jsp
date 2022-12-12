<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Home</title>
	<!-- 헤드 부분 인클루드 -->
    <jsp:include page="include/head.jsp"></jsp:include>
    <style>
    .lead, .subheader { white-space:nowrap; overflow:hidden; text-overflow:ellipsis; }
    </style>
</head>
<body>
<header id="header">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="include/header.jsp"></jsp:include>
	<div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>
      <ul class="orbit-container">
        <li class="orbit-slide is-active">
          <img class="header_img" src="${path1 }/resources/img/main_text.gif" alt="hami" style="width: 100vw; height: 100vh; overflow: hidden;">
        </li>
      </ul>
    </div>
</header>
	<hr>
<article class="grid-container">
      <div class="grid-x grid-margin-x">
        <div class="medium-7 large-6 cell" style="margin-top: 100px; text-align: center; font-weight: 600; font-size: 50px;">
          <span>창조와 혁신, 도전</span>
        </div>
        <div class="show-for-large large-3 cell">
          <img src="${path2 }/resources/img/logo.jpg" alt="picture of space">
        </div>
    
        <div class="medium-5 large-3 cell">
          <div class="callout secondary">
			<c:if test="${!empty msg }">
			<script>
			alert("로그인 실패");
			document.loginForm.userid.focus();
			</script>
			</c:if>
			<c:if test="${empty sid }">
            <form action="${path1 }/member/loginCheck.do" method="post" name="loginForm">
              <div class="grid-x">
                <div class="small-12 cell">
                  <label>Login ID
                    <input type="text" name="id" id="id" size="100" class="single100" placeholder="아이디 입력" required>
                    <!--  pattern="^[a-z0-9]+$"  -->
                  </label>
                </div>
                <div class="small-12 cell">
                  <label>Login PW
                    <input type="password" name="pw" id="pw"  class="single100" placeholder="비밀번호 입력" required>
                    <!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
                  </label>
                  <button type="submit" class="button">LOGIN</button>
                  <a href="${path2 }/member/agree.do" class="button" style="float:right;">회원가입</a>
                </div>
              </div>
            </form>
			<script>
			function loginFaiure() {
				alert("로그인 실패");
			}
			</script>
			</c:if>
			<c:if test="${not empty sid }">
             <div class="grid-x" style="height:218px">
                <div class="small-12 cell">
                  <label><strong>${sid }</strong>님 안녕하세요~!</label>
                </div>
                <div class="small-12 cell">
                  <label>&nbsp;&nbsp;</label>
                </div>
                <div class="small-12 cell">
                  <label>
                  	<c:set var="now" value="<%=new java.util.Date() %>" />
                  	<fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일" type="date"/>
                  </label>
                </div>
                <div class="small-12 cell">
                  <label><fmt:formatDate value="${now }" pattern="a h:mm" type="date"/></label>
                </div>
                <div class="small-12 cell">
                  <label><span style="display:none">${serverTime }</span></label>
                </div>
                <div class="small-12 cell">
                  <label>&nbsp;</label>
                </div>
              </div>
			</c:if>
          </div>
        </div>
    
      </div>
    
    <div class="">
      <hr>
    </div>
    
    <div class="">
      <p class="lead">한미약품을 빛낸 상품</p>
    </div>
    
    <div class="grid-x grid-margin-x small-up-1 medium-up-2 large-up-3">
      <div class="cell">
        <div class="callout">
          <p>일반의약품</p>
          <p class="pic"><img src="${path2 }/resources/img/main1.png" alt="main1"></p>
       		<p class="lead"><strong>케어가글</strong></p>
          <p class="subheader">약국에서 판매하는 '일반의약품' 구강청결제</p>
        </div>
      </div>
      <div class="cell">
        <div class="callout">
          <p>일반의약품</p>
          <p class="pic"><img src="${path2 }/resources/img/main2.png" alt="main2"></p>
          <p class="lead"><strong>텐텐츄정</strong></p>
          <p class="subheader">성분강화 어린이 영양제</p>
        </div>
      </div>
      <div class="cell">
        <div class="callout">
          <p>일반의약품</p>
          <p class="pic"><img src="${path2 }/resources/img/main3.png" alt="main3"></p>
          <p class="lead"><strong>비엘비정</strong></p>
          <p class="subheader">고함량 활성형 메가비타민</p>
        </div>
      </div>
      <div class="cell">
        <div class="callout">
          <p>의료기기</p>
          <p class="pic"><img src="${path2 }/resources/img/main4.png" alt="main4"></p>
          <p class="lead"><strong>HANMI COVID-19 Quick TEST</strong></p>
          <p class="subheader">COVID-19 신속항원진단키트</p>
        </div>
      </div>
      <div class="cell">
        <div class="callout">
          <p>일반의약품</p>
          <p class="pic"><img src="${path2 }/resources/img/main5.png" alt="main5"></p>
          <p class="lead"><strong>코앤쿨나잘스프레이</strong></p>
          <p class="subheader">코막힘/콧물 2중 복합작용, 뿌리는 비염 치료제</p>
        </div>
      </div>
      <div class="cell">
        <div class="callout">
          <p>일반의약품</p>
          <p class="pic"><img src="${path2 }/resources/img/main6.png" alt="main6"></p>
          <p class="lead"><strong>목앤스프레이</strong></p>
          <p class="subheader">염증완화/항균 2중 효과, 뿌리는 인후염 치료제</p>
        </div>
      </div>
    
    </div>
    
</article>
<footer id="footer" class="footer-nav row expanded collapse">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="include/footer.jsp"></jsp:include>
</footer>    
</body>
</html>