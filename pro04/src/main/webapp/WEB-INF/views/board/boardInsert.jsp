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
	<title>공지사항 작성하기</title>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
</head>
<body>
<header id="head">
<jsp:include page="../include/header.jsp"></jsp:include>
</header>
    <div class="row column text-center">
      <h2>공지사항 작성하기</h2>
      <hr>
      <form action="${path1 }/board/insert.do" method="post" name="insert" id="insert">
      <table>
      	<tbody>
      		<tr>
      			<th>글 제목</th>
      			<td>
      				<input type="text" placeholder="제목입력" maxlength="90"  id="title" name="title" required>
      			</td>
      		</tr>
      		<tr>
      			<th>글 내용</th>
      			<td>
      				<textarea placeholder="내용입력" rows="8" cols="10" maxlength="800" id="content" name="content" required></textarea>
      			</td>
      		</tr>
      	</tbody>
      </table>
      </form>
      <div class="button-group">
      <input type="submit" class="submit success button" value="등록">
      <a class="button" href="${path1 }/board/list.do">글 목록</a>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
    <script>
      $(document).foundation();
    </script>
</body>
<footer id="foot">
<jsp:include page="../include/footer.jsp"></jsp:include>	
</footer>
</html>