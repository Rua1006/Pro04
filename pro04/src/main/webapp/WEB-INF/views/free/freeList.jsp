<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%-- <c:set var="path0" value="<%=request.getContextPath() %>"/> --%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<%-- <c:set var="path2" value="${request.getContextPath() }"/> --%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>자유게시판 목록</title>
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
      <h2 class="h2">자유게시판 목록</h2>
      <hr>
	<div class="bd_wrap">      
      <table>
      	<thead>
      		<tr>
      			<th width="80">No</th>
      			<th width="720">Title</th>
      			<th width="200">ResDate</th>
      			<th width="200">Visited</th>
      		</tr>
      	</thead>
      	<tbody>
      	<c:forEach items="${freeList }" var="free" varStatus="status">
      		<tr>
      			<td>${status.count }</td>
      			<td><a href="/free/detail.do?bno=${free.bno }">${free.title }</a></td>
      			<td>${free.resdate }</td>
      			<td>${free.visited }</td>
      		</tr>
      	</c:forEach>	
      	</tbody>
      </table>
      	<div class="button-group">
		  <a class="button" href="${path1 }/free/insert.do">글 작성하기</a>
		</div>
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