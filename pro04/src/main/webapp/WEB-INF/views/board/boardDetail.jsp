<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path0" value="<%=request.getContextPath() %>"/>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<c:set var="path2" value="${request.getContextPath() }"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 목록</title>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
    <jsp:include page="../include/head.jsp"></jsp:include>
    <style>
	.content {height: 100vh;}
	.table_form {width: 80%; margin: 0 auto;}
	.h2 {margin-top: 40px;}
	</style>
</head>
<body>
<header id="head">
<jsp:include page="../include/header.jsp"></jsp:include>
</header>
    <div class="content row column text-center">
      <h2 class="h2">공지사항 상세보기</h2>
      <hr>
      <table>
      	<tbody>
      		<tr>
      			<th>글번호</th>
      			<td>${dto.no }</td>
      		</tr>
      		<tr>
      			<th>글 제목</th>
      			<td>${dto.title }</td>
      		</tr>
      		<tr>
      			<th>글 내용</th>
      			<td>${dto.content }</td>
      		</tr>
      		<tr>
      			<th>작성자</th>
      			<td>${dto.author }</td>
      		</tr>
      		<tr>
      			<th>작성일</th>
      			<td>${dto.resdate }</td>
      		</tr>
      		<tr>
      			<th>조회수</th>
      			<td>${dto.visited }</td>
      		</tr>	
      	</tbody>
      </table>
    <div class="button-group">
	  <a class="button" href="${path1 }/board/edit.do?no=${dto.no}">글 수정하기</a>
	  <a class="button" href="${path1 }/board/delete.do?no=${dto.no}">글 삭제하기</a>
	  <a class="button" href="${path1 }/board/list.do">글 목록으로이동</a>
	</div>
    </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
</body>
<footer id="footer" class="footer-nav row expanded collapse">
   	<!-- 푸터 부분 인클루드 -->
  	<jsp:include page="../include/footer.jsp"></jsp:include>
</footer>
</html>