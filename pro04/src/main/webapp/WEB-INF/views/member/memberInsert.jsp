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
	<title>회원가입</title>
    <link rel="stylesheet" href="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.min.css">
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>

<header id="head">
<jsp:include page="../include/header.jsp"></jsp:include>
</header>

<div class="row colum">
 <h2>회원가입</h2>
<form action="${path1 }/member/insert.do" method="post" name="insert" id="insert" data-abide novalidate >
  <div data-abide-error class="alert callout" style="display: none;">
    <p><i class="fi-alert"></i> There are some errors in your form.</p>
  </div>
  <div class="grid-container">
    <div class="grid-x grid-margin-x">
      <div class="cell small-12">
        <label>아이디
          <input type="text" placeholder="아이디를 입력하세요" id="id" name="id" aria-errormessage="example1Error1" required>
          <span class="form-error">
           	아이디를 입력하지 않았습니다.
          </span>
        </label>
      <p class="help-text" id="example1Hint1">아이디 입력칸입니다.</p>
      </div>
      <div class="cell small-12">
        <label>비밀번호
          <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요" aria-errormessage="example1Error2" required > 
          <span class="form-error">
			비밀번호를 입력하지 않았습니다.
          </span>
        </label>
        <p class="help-text" id="example1Hint2">비밀번호 입력칸입니다.</p>
      </div>
      <div class="cell small-12">
        <label>비밀번호 확인
          <input type="password" placeholder="비밀번호 다시 한번 더 입력하세요" id="pw2" name="pw2" aria-errormessage="example1Error3" required pattern="alpha_numeric" data-equalto="password">
          <span class="form-error">
          	중복확인을 하지 않았습니다.
          </span>
        </label>
        <p class="help-text" id="example1Hint3">비밀번호 확인을 위한 입력칸입니다.</p>
      </div>
    </div>
  </div>
  <div class="grid-container">
    <div class="grid-x grid-margin-x">
      <div class="cell large-6">
        <label>이름
          <input type="text" id="name" name="name" placeholder="이름을 입력하세요">
        </label>
      </div>
      <div class="cell large-4">
        <label>이메일
          <input type="text" name="email1" id="email1"> @ <input type="text" name="email2" id="email2">
        </label> 
      </div>
    </div>
  </div>
  <div class="grid-container">
    <div class="grid-x grid-margin-x">
      <div class="cell large-6">
        <label>이메일 선택
          <select id="select" onchange="selectEmail(this)">
            <option value="">직접입력</option>
            <option value="google.com">구글</option>
            <option value="naver.com">네이버</option>
            <option value="daum.net">다음</option>
          </select>
        </label>
      </div>
	 </div>
	</div>
	<div class="cell large-6">
    <label>전화번호
      <input type="text" id="tel" name="tel" placeholder="000-0000-0000(-제외하고 입력해주세요)">
    </label>
 	</div>
</form>
<div class="button-group">
	<input type="submit" class="submit success button" value="가입하기">
	<a class="button" href="${path1 }">돌아가기</a>
</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://dhbhdrzi4tiry.cloudfront.net/cdn/sites/foundation.js"></script>
<script>
  $(document).foundation();
</script>
<script>
function selectEmail(k){
	var $k = $(k);
	var $email2 = $('input[name=email2]');
	
	if($k.val()==""){
		$email2.attr('readonly', false);	
	}else{
		$email2.attr('readonly', true);
		$email2.val($k.val());
	}
}

</script>
<footer id="foot">
<jsp:include page="../include/footer.jsp"></jsp:include>	
</footer>
</html>