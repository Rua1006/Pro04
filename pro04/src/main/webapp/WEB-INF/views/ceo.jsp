<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
  	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>인사말</title>
	<!-- 헤드 부분 인클루드 -->
    <jsp:include page="include/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
<!-- 헤더 부분 인클루드 -->
<jsp:include page="include/header.jsp"></jsp:include>
</header>
<div class="content row column">
      <h2 class="h2">대표이사 인사말</h2>
      <hr>
	<div class="bd_wrap">      
        <div class="media-object">
            <div class="media-object-section">
              <div class="thumbnail">
                <img src= "../resources/img/bg_ceo_greeting.jpg">
              </div>
            </div>
            <div class="media-object-section main-section">
            <h4>투명한 지배구조를 바탕으로 환경과 사회적 책임 준수</h4>
            <p>안녕하십니까? <br>
                한미약품에 대한 신뢰와 사랑을 보내주시는 고객 여러분께 깊은 감사의 말씀을 드립니다. <br>
         1973년 창립한 한미약품은 '고귀한 생명을 위하여 더 좋은 약을 만든다'는 회사의 철학을 바탕으로 글로벌 신약 창출에 매진하는 한국의 대표적인 R&D 중심 제약기업입니다. <br>
                한미약품은 1990년대부터 국내 제약산업을 선도하는 신약 라이선스 성과를 지속적으로 창출하고 있으며, 유수의 글로벌 제약기업들과 공고한 파트너십을 통해 대한민국의 첫 번째 글로벌 혁신신약 창출에 다가서고 있습니다. <br>
                특히 플랫폼 기술을 적용해 당뇨·비만과 항암, 면역질환, 희귀질환 등 분야 혁신신약을 개발함으로써 질병으로 고통받는 인류의 건강을 지키고, 국민들의 삶의 질 향상을 위해 부단한 노력을 경주하고 있습니다. <br>
                이와 함께 미국, 유럽 등 선진 의약품 허가당국의 GMP 인증을 선도적으로 획득하고 글로벌 제약회사들에 완제의약품을 수출하는 등 차별화된 품질경영으로 국민건강에 기여하고 있습니다. <br>
                한미약품은 이같은 노력을 통해 대한민국이 제약강국으로 우뚝 서는데 앞장서 나가겠습니다. 무엇보다 '신뢰경영'을 통해 국민들에게 확고한 믿음을 드릴 수 있는 제약기업으로 우뚝 설 것입니다. <br>
                창조와 혁신 정신을 기치로 '아무도 가지 않는 길'을 개척해 온 한미약품은 보다 높은 도약을 위해 최선을 다하겠습니다. 대한민국을 '제약강국'으로 발돋움시키는데 한미약품이 앞장서 나갈 것입니다. <br>
                한미약품은 국민들이 보내주신 사랑과 성원에 보답하는 길은 글로벌 혁신신약 창출이라고 확신하고 있습니다. 글로벌 제약기업으로 발전해 나가는 한미약품과 늘 함께 해 주시길 부탁드립니다. <br>
                감사합니다.
            </p>
            </div>
        </div>
    </div>
</div>
</body>
<footer id="footer" class="footer-nav row expanded collapse">
<!-- 푸터 부분 인클루드 -->
<jsp:include page="include/footer.jsp"></jsp:include>
</footer>
</html>