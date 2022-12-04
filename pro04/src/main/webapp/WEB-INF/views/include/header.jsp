<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!-- 헤더 내용 기술 -->
<nav class="top-bar">
   <div class="top-bar-left" id="gnb">
   	 <!-- <button class="menu-icon" type="button" data-toggle="responsive-menu"></button> -->
     <ul class="dropdown menu" data-dropdown-menu>
      <img class="header_img" src="${path1 }/resources/img/logo_hanmi.png" alt="hami" style="height: 30px;">
       <li class="menu-text"><a href="/" class="logo">한미약품</a></li>
       <li>
      	<a href="#">기업</a>
      	<ul class="menu">
      	<li><a href="#">인사말</a></li>
      	<li><a href="#">소개</a></li>
      	<li><a href="#">뉴스</a></li>
 		</ul>
      </li>
      <li>
      	<a href="#">제품</a>
      	<ul class="menu">
      	<li><a href="#">제품소식</a></li>
      	<li><a href="#">검색</a></li>
 		</ul>
      </li>
      <li>
      	<a href="#">연구</a>
      	<ul class="menu">
      	<li><a href="#">소개</a></li>
      	<li><a href="#">기술</a></li>
      	<li><a href="#">성과</a></li>
 		</ul>
      </li>
       <li class="has-submenu">
			<a href="#">고객</a>
			<ul class="submenu menu vertical" data-submenu>
				<li><a href="${path1 }/board/list.do">공지사항</a></li>
				<li><a href="#">자료실</a></li>
				<li><a href="#">질문 및 답변</a></li>
				<li><a href="${path1 }/free/list.do">자유게시판</a></li>
			</ul>
    	</li>
       <li><a href="#">채용</a></li>
     </ul>
   </div>
            
     <div class="top-bar-right">
       <ul class="menu">
        <c:if test="${empty sid }">
          <li><a href="${path1 }/member/loginForm.do">로그인</a></li>
          <li><a href="${path1 }/member/agree.do">회원가입</a></li>
        </c:if>
        <c:if test="${not empty sid }">  
          <li><a href="${path1 }/member/logout.do">로그아웃</a></li>
          <li><a href="${path1 }/member/read.do">회원정보</a></li>
        </c:if>  
        <c:if test='${sid eq "admin"}'>
          <li><a href="#">관리자 페이지</a></li>
        </c:if>  
       </ul>
     </div>
  </nav>
    <!-- End Top Bar -->

    <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>
      <ul class="orbit-container">
        <button class="orbit-previous" aria-label="previous"><span class="show-for-sr">Previous Slide</span>&#9664;</button>
        <button class="orbit-next" aria-label="next"><span class="show-for-sr">Next Slide</span>&#9654;</button>
        <li class="orbit-slide is-active">
          <img class="header_img" src="${path1 }/resources/img/2079405_127044_5957.jpg" alt="hami" style="width: 80vw; height: 40vh; overflow: hidden; margin-left: 10vw;">
        </li>
        <li class="orbit-slide">
          <img src="${path1 }/resources/img/262BA843551813CC24.jpg" alt="hanmi" style="width: 80vw; height: 40vh; overflow: hidden; margin-left: 10vw;">
        </li>
      </ul>
    </div>