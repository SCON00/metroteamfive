<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LINE-INFO</title>
<link href="../resources/css/bootstrap.css" rel="stylesheet" />
<link href="../resources/css/style.css" rel="stylesheet" />
<link href="../resources/css/css_lineInfo.css" rel="stylesheet" />

<script type="text/javascript" src='../resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='../resources/js/bootstrap.js'></script>
</head>

<body>
	<div id="content">
		<div id="arsIdlist">
			<div id="srch" class="srch">
				<!-- 지하철 호선 -->
				<div class="hosunTxt">
					<div class="align">지하철 호선</div>
				</div>
				<div>
					<div class="alignLine">
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=01호선">01호선</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=02호선">02호선</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=03호선">03호선</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=04호선">04호선</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=05호선">05호선</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=06호선">06호선</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=07호선">07호선</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=08호선">08호선</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=09호선">09호선</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=경의선">경의중앙</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=공항철도">공 항</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=경춘선">경 춘</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=인천선">인 천</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=수인선">수 인</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=분당선">분 당</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=신분당선">신분당</a></div>
						<div class="lnTxt"><a href="lineInfo.do?lineNumber=우이신설경전철">우이신설</a></div>
					</div>
				</div>
				<!-- 지하철 호선 검색결과 -->
				<div id="searchResult" class="searchResult">
					<div class="title">지하철역 정보
						<img style="position: relative; float: right; right: 22px; top: 6px; width: 18px; height: 18px;"
							id="upArro" src="../resources/img/upArro.png" alt="upArro" /> 
						<img style="position: relative; float: right; right: 53px; top: 6px; width: 18px; height: 18px;"
							id="downArro" src="../resources/img/downArro.png" alt="downArro" />
					</div>
				</div>
				<c:forEach var="m" items="${list}">
					<div id="resultPoint" style="clear: both;" class="stnm"> 
						<div style="float: left;" onclick="makeArvlSubway();javascript:window.scrollTo(0,0);">
							<a href="">${m.stationName}(${m.stationNameEng})</a>
						</div>
						<div style="float: right;">
							<img src="../resources/img/v_line.png" alt="라인" class="vline">
							<img src="../resources/img/v_line.png" alt="라인" class="vline2">
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>