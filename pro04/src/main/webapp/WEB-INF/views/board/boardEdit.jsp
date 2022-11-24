<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 작성하기</title>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
</head>
<body>
<header id="head">
<%-- <jsp:include page="${path2 }/include/head.jsp"></jsp:include> --%>
</header>

    <div class="top-bar">
  <div class="top-bar-left">
    <ul class="menu">
      <li class="menu-text">한미약품</li>
      <li><a href="#">기업</a></li>
      <li><a href="#">제품</a></li>
      <li><a href="#">연구</a></li>
      <li><a href="#">고객</a></li>
      <li><a href="#">채용</a></li>
    </ul>
  </div>
  <div class="top-bar-right">
    <ul class="menu">
      <li><a href="#">로그인</a></li>
      <li><a href="#">회원가입</a></li>
      <li><a href="#">로그아웃</a></li>
      <li><a href="#">회원목록</a></li>
      <li><a href="#">관리자</a></li>
    </ul>
  </div>
</div>


    <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit>
      <ul class="orbit-container">
        <button class="orbit-previous" aria-label="previous"><span class="show-for-sr">Previous Slide</span>&#9664;</button>
        <button class="orbit-next" aria-label="next"><span class="show-for-sr">Next Slide</span>&#9654;</button>
        <li class="orbit-slide is-active">
          <img src="https://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="https://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="https://placehold.it/2000x750">
        </li>
        <li class="orbit-slide">
          <img src="https://placehold.it/2000x750">
        </li>
      </ul>
    </div>
    <div class="row column text-center">
      <h2>공지사항 작성하기</h2>
      <hr>
      <form action="${path1 }/board/insert.do" method="post" name="insert" id="insert"></form>
      <table>
      	<tbody>
      		<tr>
      			<th>글 제목</th>
      			<td>
      				<input type="hidden" name="no" id="no" value="${dto.no }" >
      				<input type="text" name="title" id="title" placeholder="제목 입력" value="${dto.title }" maxlength="90" required>
      			</td>
      		</tr>
      		<tr>
      			<th>글 내용</th>
      			<td>
      				<textarea placeholder="내용입력" rows="8" cols="10" maxlength="800" required>${dto.content }</textarea>
      			</td>
      		</tr>
      	</tbody>
      </table>
      <input type="submit" class="submit success button" value="수정">
      <a class="button" href="${path1 }/board/list.do">글 목록</a>
    </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
</body>
</html>