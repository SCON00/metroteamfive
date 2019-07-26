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
					<div class="align font-weight-bold">지하철 호선</div>
				</div>
				<div>
					<div class="alignLine">
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=01호선" style="color: #00498B;">01호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=02호선" style="color: #009246;">02호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=03호선" style="color: #F36630;">03호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=04호선" style="color: #00A2D1;">04호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=05호선" style="color: #A064A3;">05호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=06호선" style="color: #9E4510;">06호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=07호선" style="color: #5D6519;">07호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=08호선" style="color: #D6406A;">08호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=09호선" style="color: #A17E46;">09호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=경의선" style="color: #72C7A6;">경의중앙</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=공항철도" style="color: #0065B3;">공 항</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=경춘선" style="color: #2ABFD0;">경 춘</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=인천선" style="color: #6E98BB;">인 천</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=인천2호선" style="color: #ED8B00;">인 천2</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=수인선" style="color: #E9A600;">수 인</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=분당선" style="color: #D4A017;">분 당</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=신분당선" style="color: #BB1833;">신분당</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="lineInfo.do?line=우이신설경전철" style="color: #B7C452;">우이신설</a>
						</div>
					</div>
				</div>
				<!-- 지하철 호선 검색결과 -->
				<div id="searchResult" class="searchResult">
					<div class="title font-weight-bold">지하철역 정보</div>
				</div>
				<c:forEach var="m" items="${list}">
					<div id="resultPoint" style="clear: both;" class="stnm">
						<div style="float: left;">
							<c:set var="line" value="${m.line}" />
							<c:choose>
								<c:when test="${line eq '01호선'}">
									<a style="color: #00498B;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '02호선'}">
									<a style="color: #009246;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '03호선'}">
									<a style="color: #F36630;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '04호선'}">
									<a style="color: #00A2D1;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '05호선'}">
									<a style="color: #A064A3;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '06호선'}">
									<a style="color: #9E4510;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '07호선'}">
									<a style="color: #5D6519;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '08호선'}">
									<a style="color: #D6406A;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '09호선'}">
									<a style="color: #A17E46;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '경의선'}">
									<a style="color: #72C7A6;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '공항철도'}">
									<a style="color: #0065B3;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '경춘선'}">
									<a style="color: #2ABFD0;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '인천선'}">
									<a style="color: #6E98BB;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '인천2호선'}">
									<a style="color: #ED8B00;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '수인선'}">
									<a style="color: #E9A600;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '분당선'}">
									<a style="color: #D4A017;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '신분당선'}">
									<a style="color: #BB1833;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
								<c:when test="${line eq '우이신설경전철'}">
									<a style="color: #B7C452;" class="btn btn-link"
										href="station.do?stationName=${m.stationName}">
										${m.stationName}(${m.stationNameEng})</a>
								</c:when>
							</c:choose>
						</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>