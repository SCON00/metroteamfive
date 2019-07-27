<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="google-signin-client_id" content="436174646369-8s9f5t135dlboq1kapo4h5arahuoj1pj.apps.googleusercontent.com">
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>지하철</title>
<!-- ******* include 시 MemberController.java 에서 logout.do 부분 주석 해제해주세요  ******-->

<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- 사용자 정의 css -->
<link href="<%=application.getContextPath()%>/resources/css/member.css" rel="stylesheet" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- ******* include 시 아래 https://...bootstrap.min.js 주석 필요  ******-->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<%-- <script src="<%=application.getContextPath()%>/resources/js/jquery.cookie.js"></script> --%>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="https://apis.google.com/js/platform.js" asyn defer></script>

<!-- 사용자 정의 js -->
<script type="text/javascript" src='<%=application.getContextPath()%>/resources/js/member.js'></script>
<script>

/* function signOut() { 
    var auth2 = gapi.auth2.getAuthInstance(); 
    auth2.signOut().then(function() { 
     console.log('User signed out.'); 
    }); 
    }  */
</script>
<script>
$(document).ready(function(){
				var sessionUsername = '<%=(String) session.getAttribute("username")%>';
				if (sessionUsername != 'null' ) {
					$('#username').text(sessionUsername);
					$('#beforelogin').addClass("collapse");
					$('#afterlogin').removeClass("collapse");
					if(sessionUsername == 'ezymaster'){
						$('#username').text(sessionUsername);
						$('.mastermenu').removeClass("collapse");
						$('.customermenu').addClass("collapse");
					}
				}else{
					$('#beforelogin').removeClass("collapse");
					$('#afterlogin').addClass("collapse");
				}
});
</script> 

</head> 
<body>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.3&appId=466246033938572&autoLogAppEvents=1"></script>

<!-- 상단 메뉴바 -->
<nav class="navbar navbar-default navbar-expand-lg navbar-light">
	<!-- 로고 -->
	<div class="navbar-header d-flex col">
		<a class="navbar-brand" href="<%=application.getContextPath()%>/member/start.do"><b>Ezy</b></a>  		
		<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle navbar-toggler ml-auto">
			<span class="navbar-toggler-icon"></span>
			<!-- <span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span> -->
		</button>
	</div>
	<!-- end of 로고 -->
	
	<!-- 페이지 이동, 폼 등 모음 -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
		<!-- 페이지 이동 -->
		<ul class="nav navbar-nav ml-auto customermenu">
			<%-- <li class="nav-item"><a href='<%=application.getContextPath()%>/mgt/dashboard.do/stationBoard' class="nav-link">관리자모듈</a></li> --%>
			<li class="nav-item"><a href='<%=application.getContextPath()%>/station/lineMap.do' class='nav-link'>지하철&nbsp노선도</a></li>
			<li class="nav-item"><a href='<%=application.getContextPath()%>/station/line.do?line=01호선' class='nav-link'>역정보</a></li>
			<li class="nav-item"><a href='<%=application.getContextPath()%>/cs/noticeAllList.do' class='nav-link'>공지사항</a></li>
		</ul>
		<!-- end of 페이지 이동 -->
		<ul class="nav navbar-nav ml-auto mastermenu collapse">
			<li class="nav-item"><a href='<%=application.getContextPath()%>/mgt/dashboard.do/stationBoard' class="nav-link">관리자모듈</a></li>
			<li class="nav-item"><a href='<%=application.getContextPath()%>/station/lineMap.do' class='nav-link'>지하철&nbsp노선도</a></li>
			<li class="nav-item"><a href='<%=application.getContextPath()%>/station/line.do' class='nav-link'>역정보</a></li>
			<li class="nav-item"><a href='<%=application.getContextPath()%>/cs/noticeAllList.do' class='nav-link'>공지사항</a></li>
		</ul>
		
		<!-- 로그인 또는 회원가입 성공 시 보여질 부분 -->
		<ul class="nav navbar-nav navbar-right ml-auto collapse" id="afterlogin">
			<li class="nav-item"><a href="<%=application.getContextPath()%>/member/mypage.do" class="nav-link" id="username">${sessionScope.username}</a></li>
			<li class="nav-item"><a href="<%=application.getContextPath()%>/member/logout.do" class='nav-link' id="logout">로그아웃</a></li>	
		</ul>
		
		<!-- 로그인, 회원가입 -->
		<ul class="nav navbar-nav navbar-right ml-auto" id="beforelogin">
			<!-- 로그인 폼 -->			
			<li class="nav-item" id="loginopen">
				<a data-toggle="dropdown" id="dologin" class="nav-link dropdown-toggle" href="#">로그인</a>
				<ul class="dropdown-menu form-wrapper"  id="first">					
					<li>
						<form action="" method="post"  name="loginform">
							<!-- <div class="g-signin2" data-onsuccess="onSingnIn"></div> --><!-- 구글 로그인 버튼 -->
							<div class="form-group social-btn clearfix text-center">
								<a id="kakao-login-btn"></a> <!-- 카카오 로그인 버튼 -->
								<a href="http://developers.kakao.com/logout"></a> <!-- 카카오 로그인 버튼 -->
								<!-- <a href="#" onclick="signOut()">Sign out</a> --> <!-- 구글 로그아웃 테스트 -->
							</div>
							<!-- <div id="naverIdLogin"></div> --> <!-- 네이버 로그인 버튼 -->
							<div class="or-seperator"><b>or</b></div>
							<div class="form-group">
								<input type="text" class="form-control" name="mid" id="mid" placeholder="사용자 이름, 이메일 또는 휴대폰 번호" required="required">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="pass" id="pass" placeholder="비밀번호" required="required">
							</div>
							<input type="button" name="login" id="login" class="btn btn-primary btn-block" value="로그인">
							<label id="loginresult"></label>
							<div class="form-footer">
								<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="forgetpass">비밀번호를 잊으셨습니까?</a>
							</div>
							<div class="form-footer">
								계정이 없으십니까?&nbsp<a href="#" name="gotosignup" id="gotosignup">회원가입</a>
							</div>
						</form>
					</li>
				</ul>
				
				<!-- 비밀번호 찾기 -->
				<ul class="dropdown-menu form-wrapper" id="newpass">					
					<li>
						<form action="<%=application.getContextPath()%>/member/pwreset.do" method="post" class="newpassform">
							<div class="form-group text-center">
								<label>비밀번호찾기</label>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="mid" id="mid" placeholder="등록한 이메일 또는 휴대폰 번호" required="required">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="username" id="username" placeholder="등록한 사용자이름" required="required">
							</div>
							<div id="resetpassform" class="form-group hide">
								<div class="form-group">
									<input type="password" class="form-control" name="pass" id="pass" placeholder="새로운 비밀번호" required="required">
								</div>
								<input type="submit" name="resetpass" id="resetpass" class="btn btn-primary btn-block" value="비밀번호 재설정">
							</div>
							<input type="button" name="newpassnext" id="newpassnext" class="btn btn-primary btn-block" value="다음단계">
							<div class="form-footer">
								<label id="newpassformresult" class="hide">정보확인결과</label>
							</div>
							<div class="or-seperator"><b>or</b></div>
							<div class="form-footer">
								<a href="#" name="newpasscancle" id="newpasscancle">로그인으로&nbsp돌아가기</a>
							</div>
							<div class="form-footer">
								<a href="#" name="gotosignup" id="gotosignup">새&nbsp계정&nbsp만들기</a>
							</div>
							
						</form>
					</li>
				</ul>
				<!-- end of 비번 찾기 -->
			</li>
			<!-- end of 로그인 폼 -->
			
			<!-- 회원가입 -->
			<li class="nav-item" id="signupopen">
				<a href="#" data-toggle="dropdown" name="dosignup" id="dosignup" class="nav-link dropdown-toggle">회원가입</a>
				<ul class="dropdown-menu form-wrapper" id="second">					
					<li>
						<form action="" name="signupform" id="signupform" method="post">
							<div class="form-group social-btn clearfix text-center">
								<!-- <a href="#" class="btn btn-primary pull-left"><i class="fa fa-facebook"></i> Facebook</a>
								<a href="#" class="btn btn-info pull-right"><i class="fa fa-twitter"></i> Twitter</a> -->
								<a id="kakao-login-btn-forsignup"></a> 
								<a href="http://developers.kakao.com/logout"></a>
							</div>
							<div class="or-seperator"><b>or</b></div>
							<div class="form-group">
								<input type="text" name="mid" id="mid" class="form-control" placeholder="이메일 또는 휴대폰 번호" required="required">
								<label id="midmessage"></label>
							</div>
							<div class="form-group">
								<input type="text" name="username" id="username" class="form-control" placeholder="사용자 이름" required="required">
								<label id="usernamemessage"></label>
							</div>
							<div class="form-group">
								<input type="password" name="pass" id="pass" class="form-control" placeholder="비밀번호" required="required">
							</div>
							<div class="form-footer">
								<label class="policy">가입하면&nbsp<a href="#locationdatapolicy">위치 데이터 정책</a>과&nbsp<a href="#termofservice">이용약관</a>에 동의하게 됩니다.</label>
							</div>
							<input type="button" name="signup" id="signup" class="btn btn-primary btn-block" value="회원가입">
							<div class="form-footer">
								계정이 있으십니까?&nbsp<a href="#" name="gotologin" id="gotologin">로그인</a>
							</div>
						</form>
					</li>
				</ul>
			</li>
			<!-- end of 회원가입 -->
		</ul>
		<!-- end of 로그인, 회원가입 -->
		
		
		
	</div>
	<!-- end of 페이지 이동, 폼 등 모음 -->
</nav>
<!-- end of 상단 메뉴바 -->

<%-- <script>
				var sessionUsername = '<%=(String) session.getAttribute("username")%>';
				if (sessionUsername != null) {
					alert(sessionUsername);
					document.getElementById('username').text(sessionUsername);
				}
</script> --%>

</body>
</html>   