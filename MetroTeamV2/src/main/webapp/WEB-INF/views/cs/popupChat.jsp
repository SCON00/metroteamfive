<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<link href="./../resources/css/bootstrap.css" rel="stylesheet" />
<link href="./../resources/css/cs.css" rel="stylesheet" />

<script type="text/javascript" src='./../resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript"
	src='./../resources/js/bootstrap.bundle.js'></script>
<script type="text/javascript" src="./../resources/js/cs.js"></script>

</head>
<body>

	<div class="form-group chat-list-all"
		style="display: table; margin-left: auto; margin-right: auto; width: 100%">
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
							반가워요. 고객님! <br /> 무엇을 도와드릴까요?
						</p>
						<div class="introtxt" id="insertTxt">
							<p class="introlistdesc">
								현재 이용 중인 노선을 선택하고 역이름 입력해주세요 :)
							</p>
							<div class="row">
								<div class="col-lg-6">
									<div class="input-group">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default dropdown-toggle"
												data-toggle="dropdown" aria-expanded="false">
												노선선택 <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<% for (int i = 1; i < 10; i++) { %>
													<li value="<%=i%>"><a href="#"><%=i%>호선</a></li>
												<% } %>
												<li class="divider"></li>
												<li value="경의중앙"><a href="#">경의중앙</a></li>
												<li value="공항"><a href="#">공항</a></li>
												<li value="경춘"><a href="#">경춘</a></li>
												<li value="인천"><a href="#">인천</a></li>
												<li value="수인"><a href="#">수인</a></li>
												<li value="분당"><a href="#">분당</a></li>
												<li value="우이신설"><a href="#">우이신설</a></li>
												<li value="신분당"><a href="#">신분당</a></li>
											</ul>
										</div>
										<input type="text" id="sname" class="form-control"
											placeholder="역이름(Ex)서울)" /><span class="input-group-btn">
											<button class="btn btn-default" type="button" id="insertBtn">
												<img src="./../resources/img/noticeList_search.png">
											</button>
										</span>
									</div>
								</div>
							</div>
							
						</div>
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
			<input type="text" id="content" class="form-control" size="100"
				placeholder="이지톡에 무엇이든 물어보세요!" /> <span class="input-group-btn">
				<button class="btn btn-default" type="button" id="chatBtn">
					<img src="./../resources/img/noticeList_search.png">
				</button>
			</span>
		</div>
	</div>
	</div>

</body>
</html>