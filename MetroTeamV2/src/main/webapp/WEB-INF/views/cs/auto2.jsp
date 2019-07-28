<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- stylesheet -->
<link href="./../resources/css/bootstrap.css" rel="stylesheet">
<link href="./../resources/css/cs.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jquery -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" 
	crossorigin="anonymous"></script>
<!-- bootstrap -->
<script type="text/javascript" src='./../resources/js/bootstrap.js'></script>
<script type="text/javascript" src="./../resources/js/bootstrap.bundle.js"></script>

<script type="text/javascript" src="./../resources/js/cs.js"></script>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="btn-group">
					<button type="button" class="btn btn-default dropdown-toggle"
						data-toggle="dropdown" aria-expanded="false">
						노선선택 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu scrollable-menu" role="menu">
						<% for (int i = 1; i < 10; i++) { %>
						<li id="line" value="<%=i%>">
						<a href="/MetroTeamV2/station/line.do?line=0<%=i%>호선"> 0<%=i%>호선
						</a></li>
						<% } %>
						<li id="line" value="경의선"><a
							href="/MetroTeamV2/station/line.do?line=경의선">경의중앙</a></li>
						<li id="line" value="공항철도"><a
							href="/MetroTeamV2/station/line.do?line=공항철도">공 항</a></li>
						<li id="line" value="경춘선"><a
							href="/MetroTeamV2/station/line.do?line=경춘선">경 춘</a></li>
						<li id="line" value="인천선"><a
							href="/MetroTeamV2/station/line.do?line=인천선">인 천</a></li>
						<li id="line" value="인천2호선"><a
							href="/MetroTeamV2/station/line.do?line=인천2호선">인천2</a></li>
						<li id="line" value="수인선"><a
							href="/MetroTeamV2/station/line.do?line=수인선">수 인</a></li>
						<li id="line" value="분당선"><a
							href="/MetroTeamV2/station/line.do?line=분당선">분 당</a></li>
						<li id="line" value="신분당선"><a
							href="/MetroTeamV2/station/line.do?line=신분당선">신분당</a></li>
						<li id="line" value="우이신설경전철"><a
							href="/MetroTeamV2/station/line.do?line=우이신설경전철">우이신설</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="ui-widget">
			<label for="tags">Tags: </label> <input id="tags"
				placeholder="search for station...">
			<button type="button" class="btn btn-default btn-sm" id="tagsBtn">
				<img src="./../resources/img/noticeList_search.png">
			</button>
		</div>
	</div>

</body>
</html>