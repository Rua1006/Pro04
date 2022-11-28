<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path2" value="${pageContext.request.contextPath }"/> 
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home</title>
	<jsp:include page="include/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
	<jsp:include page="include/header.jsp"></jsp:include>
</header>
<div class="content">
	<hr>
	<div class="container">
		<h2 class="h1">콘텐츠</h2>
	</div>
</div>

<footer id="footer">
	<jsp:include page="include/footer.jsp"></jsp:include>
</footer>
</body>
</html>
