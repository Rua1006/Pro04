<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 수정하기</title>
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
      <h2 class="h2">공지사항 수정하기</h2>
      <hr>
      <form action="${path1 }/board/edit.do" method="post">
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
      				<textarea placeholder="내용입력" name="content" id="content" rows="8" cols="10" maxlength="800" required>${dto.content }</textarea>
      			</td>
      		</tr>
      	</tbody>
      </table>
      </form>
      <div class="button-group">
       <input type="submit" class="submit success button" value="수정">
     	<a class="button" href="${path1 }/board/list.do">글 목록</a>
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