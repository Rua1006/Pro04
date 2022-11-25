<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }"  />
<div class="top-bar">
  <div class="top-bar-left">
    <ul class="dropdown menu" data-dropdown-menu>
      <li class="menu-text">한미약품</li>
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
      <li>
      	<a href="#">고객</a>
      	<ul class="menu">
      	<li><a href="${path1 }/board/list.do">공지사항</a></li>
      	<li><a href="#">1:1문의</a></li>
      	<li><a href="${path1 }/free/list.do">자유게시판</a></li>
 		</ul>
      </li>
      <li><a href="#">채용</a></li>
    </ul>
  </div>
  <div class="top-bar-right">
    <ul class="menu">
      <li><a href="#">로그인</a></li>
      <li><a href="${path1 }/member/insert.do">회원가입</a></li>
      <li><a href="#">로그아웃</a></li>
      <li><a href="#">회원목록</a></li>
      <li><a href="#">관리자</a></li>
    </ul>
  </div>
</div>