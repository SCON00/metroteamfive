<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 채팅 </title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<meta name="viewport" content="width=device-width" />

<link href="./../resources/css/bootstrap.css" rel="stylesheet" />
<link href="./../resources/css/quickmenu.css" rel="stylesheet" />

<script type="text/javascript" src='./../resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='./../resources/js/bootstrap.js'></script>
<script type="text/javascript" src="./../resources/js/cs.js"></script>

</head>
<body>
	
	<div class="form-group chat-list-all" style="display: table; margin-left: auto; margin-right: auto; width: 100%">
		<!-- header -->
		<div class="header">
			<div class="header-text">
				<span>이지톡</span>
			</div>
		</div>
		<!-- 채팅 영역 -->
		<div class="input-group">
			<div class="input-text-container">
				<div class="chat-area">
				<div class="scrollbar">
					<p class="introtxt">
					<img src="">
						반가워요. 고객님! <br /> 무엇을 도와드릴까요?
					</p>
					<!-- 채팅 대화 영역 -->
					<ul class="chat-list" id=chat-list>
						
					</ul>
				</div>
				</div>
			</div>
		</div>
		<!-- 메세지 입력 영역_footer -->
		<div class="footer">
			<div class="input-group">
				<input type="text" id="chat" class="form-control" size="100" placeholder="이지톡에 무엇이든 물어보세요!"/>
				<span class="input-group-btn">
					<button class="btn btn-default" type="button" id="chatBtn">
						<img src="./../resources/img/noticeList_search.png">
					</button>
				</span>
			</div>		
		</div>
	</div>
	
</body>
</html>