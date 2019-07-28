<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LINE</title>
<link href="../resources/css/bootstrap.css" rel="stylesheet" />
<link href="../resources/css/bootstrap-grid.css" rel="stylesheet" />
<link href="../resources/css/bootstrap-reboot.css" rel="stylesheet" />
<link href="../resources/css/css_lineInfo.css" rel="stylesheet" />
<script type="text/javascript" src='../resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='../resources/js/bootstrap.js'></script>
<script type="text/javascript" src='../resources/js/bootstrap.bundle.js'></script>
<script type="text/javascript">
	$(function() {
		$('[data-toggle="tooltip"]').tooltip();

		var list = '${listSize}';

		var lineGyeongui = 55;
		var lineAirport = 14;
		var lineGyeongchun = 25;
		var lineIncheon = 29;
		var line2Incheon = 27;
		var lineSuin = 14;
		var lineBundang = 37;
		var lineShinbundang = 13;
		var lineUiSinseol = 13;

		/**
		 * 1호선
		 * 소요산 -> 인천
		 * 광운대 -> 서동탄
		 * 청량리 -> 신창
		 */
		var line1 = 98;
		var line1Train1 = $(".line1Train1");
		var line1Train2 = $(".line1Train2");
		var line1Train3 = $(".line1Train3");

		var SoIn = 61;
		var KwangSeo = 60;
		var CheongSin = 73;
		if (list == line1) {

			// 소요산 -> 인천
			line1Train1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < SoIn; i++) {
					line1Train1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}

			// 광운대 -> 서동탄
			line1Train2.animate({
				left : "+=66.3"
			}, 10000, train2);

			function train2() {
				for (var i = 1; i < KwangSeo; i++) {
					line1Train2.animate({
						left : "+=66.3"
					}, 10000);
				}
			}

			// 청량리 -> 신창
			line1Train3.animate({
				left : "+=66.3"
			}, 12000, train3);

			function train3() {
				for (var i = 1; i < CheongSin; i++) {
					line1Train3.animate({
						left : "+=66.3"
					}, 12000);
				}
			}
		}

		/**
		 * 2호선
		 * 시청 -> 충정로
		 * 성수 -> 신설동
		 * 신도림 -> 까치산 
		 */
		var line2 = 51;
		var line2Train1 = $(".line2Train1");
		var line2Train2 = $(".line2Train2");
		var line2Train3 = $(".line2Train3");

		var CiChung = 46;
		var SeongSin = 4;
		var SinKka = 4;
		if (list == line2) {

			// 시청 -> 충정로
			line2Train1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < CiChung; i++) {
					line2Train1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}

			// 성수 -> 신설동
			line2Train2.animate({
				left : "+=66.3"
			}, 9000, train2);

			function train2() {
				for (var i = 1; i < SeongSin; i++) {
					line2Train2.animate({
						left : "+=66.3"
					}, 9000);
				}
			}

			// 신도림 -> 까치산
			line2Train3.animate({
				left : "+=66.3"
			}, 9000, train3);

			function train3() {
				for (var i = 1; i < SinKka; i++) {
					line2Train3.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 3호선
		 * 대화 -> 오금
		 */
		var line3 = 44;
		var line3Train1 = $(".line3Train1");

		if (list == line3) {

			// 대화 -> 오금
			line3Train1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < line3 - 1; i++) {
					line3Train1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 4호선
		 * 당고개 -> 오이도
		 * 당고개 -> 사당
		 */
		var line4 = 48;
		var line4Train1 = $(".line4Train1");
		var line4Train2 = $(".line4Train2");

		var DangOi = 42;
		var DangSa = 13;
		if (list == line4) {

			// 당고개 -> 오이도
			line4Train1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < DangOi; i++) {
					line4Train1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}

			// 당고개 -> 사당
			line4Train2.animate({
				left : "+=66.3"
			}, 9000, train2);

			function train2() {
				for (var i = 1; i < DangSa; i++) {
					line4Train2.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 5호선
		 * 방화 -> 마천
		 * 방화 -> 상일동
		 */
		var line5 = 51;
		var line5Train1 = $(".line5Train1");
		var line5Train2 = $(".line5Train2");

		var BangMa = 41;
		var BangSang = 27;

		if (list == line5) {

			// 방화 -> 마천
			line5Train1.animate({
				left : "+=66.3"
			}, 8972, train1);

			function train1() {
				for (var i = 1; i < BangMa; i++) {
					line5Train1.animate({
						left : "+=66.3"
					}, 8972);
				}
			}

			// 방화 -> 상일동
			line5Train2.animate({
				left : "+=66.3"
			}, 8972, train2);

			function train2() {
				for (var i = 1; i < BangSang; i++) {
					line5Train2.animate({
						left : "+=66.3"
					}, 8972);
				}
			}
		}

		/**
		 * 6호선
		 * 응암 -> 봉화산
		 */
		var line6 = 38;
		var line6Train1 = $(".line6Train1");

		if (list == line6) {

			// 응암 -> 봉화산
			line6Train1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < line6 - 1; i++) {
					line6Train1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 7호선
		 * 장암 -> 부평구청
		 * 장암 -> 온수
		 */
		var line7 = 51;
		var line7Train1 = $(".line7Train1");
		var line7Train2 = $(".line7Train2");

		var JangBu = 47;
		var JangOn = 30;

		if (list == line7) {

			// 장암 -> 부평구청
			line7Train1.animate({
				left : "+=66.3"
			}, 8972, train1);

			function train1() {
				for (var i = 1; i < JangBu; i++) {
					line7Train1.animate({
						left : "+=66.3"
					}, 8972);
				}
			}

			// 장암 -> 온수
			line7Train2.animate({
				left : "+=66.3"
			}, 8972, train2);

			function train2() {
				for (var i = 1; i < JangOn; i++) {
					line7Train2.animate({
						left : "+=66.3"
					}, 8972);
				}
			}
		}

		/**
		 * 8호선
		 * 암사 -> 모란
		 */
		var line8 = 17;
		var line8Train1 = $(".line8Train1");
		var line8Train2 = $(".line8Train2");
		var line8Train3 = $(".line8Train3");
		var line8Train4 = $(".line8Train4");

		if (list == line8) {

			// 암사 -> 모란(8181)
			line8Train1.animate({
				left : "+=66.3"
			}, 9361, train1);

			function train1() {
				for (var i = 1; i < line8 - 4; i++) {
					line8Train1.animate({
						left : "+=66.3"
					}, 9361);
				}
			}
			
			// 암사 -> 모란(8179)
			line8Train2.animate({
				left : "+=66.3"
			}, 9361, train2);

			function train2() {
				for (var i = 1; i < line8 - 8; i++) {
					line8Train2.animate({
						left : "+=66.3"
					}, 9361);
				}
			}
			
			// 암사 -> 모란(8177)
			line8Train3.animate({
				left : "+=66.3"
			}, 9361, train3);

			function train3() {
				for (var i = 1; i < line8 - 12; i++) {
					line8Train3.animate({
						left : "+=66.3"
					}, 9361);
				}
			}
			
			// 암사 -> 모란(8175)
			line8Train4.animate({
				left : "+=66.3"
			}, 9361, train4);

			function train4() {
				for (var i = 1; i < line8 - 16; i++) {
					line8Train4.animate({
						left : "+=66.3"
					}, 9361);
				}
			}
		}

		/**
		 * 9호선
		 * 개화 -> 중앙보훈병원
		 */
		var line9 = 38;
		var line9Train1 = $(".line9Train1");

		if (list == line9) {

			// 개화 -> 중앙보훈병원
			line9Train1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < line9 - 1; i++) {
					line9Train1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 경의선
		 * 용산 -> 서울역
		 */
		var lineGyeongui = 55;
		var lineGyeonguiTrain1 = $(".lineGyeonguiTrain1");

		if (list == lineGyeongui) {

			// 용산 -> 서울역
			lineGyeonguiTrain1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < lineGyeongui - 1; i++) {
					lineGyeonguiTrain1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 공항철도
		 * 서울역 -> 인천공항2터미널
		 */
		var lineAirport = 14;
		var lineAirportTrain1 = $(".lineAirportTrain1");

		if (list == lineAirport) {

			// 서울역 -> 인천공항2터미널
			lineAirportTrain1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < lineAirport - 1; i++) {
					lineAirportTrain1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 경춘선
		 * 광운대 -> 춘천
		 */
		var lineGyeongchun = 25;
		var lineGyeongchunTrain1 = $(".lineGyeongchunTrain1");

		if (list == lineGyeongchun) {

			// 광운대 -> 춘천
			lineGyeongchunTrain1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < lineGyeongchun - 1; i++) {
					lineGyeongchunTrain1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 인천선
		 * 계양 -> 국제업무지구
		 */
		var lineIncheon = 29;
		var lineIncheonTrain1 = $(".lineIncheonTrain1");

		if (list == lineIncheon) {

			// 계양 -> 국제업무지구
			lineIncheonTrain1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < lineIncheon - 1; i++) {
					lineIncheonTrain1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 인천2호선
		 * 검단오류 -> 운연
		 */
		var line2Incheon = 27;
		var line2IncheonTrain1 = $(".line2IncheonTrain1");

		if (list == line2Incheon) {

			// 검단오류 -> 운연
			line2IncheonTrain1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < line2Incheon - 1; i++) {
					line2IncheonTrain1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 수인선
		 * 오이도 -> 인천
		 */
		var lineSuin = 14;
		var lineSuinTrain1 = $(".lineSuinTrain1");

		if (list == lineSuin) {

			// 오이도 -> 인천
			lineSuinTrain1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < lineSuin - 1; i++) {
					lineSuinTrain1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 분당선
		 * 왕십리 -> 청량리
		 */
		var lineBundang = 37;
		var lineBundangTrain1 = $(".lineBundangTrain1");

		if (list == lineBundang) {

			// 왕십리 -> 청량리
			lineBundangTrain1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < lineBundang - 1; i++) {
					lineBundangTrain1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 신분당선
		 * 청계산입구 -> 양재시민의숲
		 */
		var lineShinbundang = 13;
		var lineShinbundangTrain1 = $(".lineShinbundangTrain1");

		if (list == lineShinbundang) {

			// 청계산입구 -> 양재시민의숲
			lineShinbundangTrain1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < lineShinbundang - 1; i++) {
					lineShinbundangTrain1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

		/**
		 * 우이신설경전철
		 * 북한산우이 -> 신설동
		 */
		var lineUiSinseol = 13;
		var lineUiSinseolTrain1 = $(".lineUiSinseolTrain1");

		if (list == lineUiSinseol) {

			// 북한산우이 -> 신설동
			lineUiSinseolTrain1.animate({
				left : "+=66.3"
			}, 9000, train1);

			function train1() {
				for (var i = 1; i < lineUiSinseol - 1; i++) {
					lineUiSinseolTrain1.animate({
						left : "+=66.3"
					}, 9000);
				}
			}
		}

	})
</script>
</head>

<body>
	<div id="content">
		<div id="arsIdlist">
			<div id="srch" class="srch">
				<!-- 지하철 호선 -->
				<div class="hosunTxt">
					<div class="align font-weight-bold" style="color: #fade0c">지하철 호선</div>
				</div>
				<div>
					<div class="alignLine">
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=01호선" style="color: #00498B;">01호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=02호선" style="color: #009246;">02호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=03호선" style="color: #F36630;">03호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=04호선" style="color: #00A2D1;">04호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=05호선" style="color: #A064A3;">05호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=06호선" style="color: #9E4510;">06호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=07호선" style="color: #5D6519;">07호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=08호선" style="color: #D6406A;">08호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=09호선" style="color: #A17E46;">09호선</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=경의선" style="color: #72C7A6;">경의중앙</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=공항철도" style="color: #0065B3;">공 항</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=경춘선" style="color: #2ABFD0;">경 춘</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=인천선" style="color: #6E98BB;">인 천</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=인천2호선" style="color: #ED8B00;">인 천2</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=수인선" style="color: #E9A600;">수 인</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=분당선" style="color: #D4A017;">분 당</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=신분당선" style="color: #BB1833;">신분당</a>
						</div>
						<div class="lnTxt btn btn-link">
							<a href="line.do?line=우이신설경전철" style="color: #B7C452;">우이신설</a>
						</div>
					</div>
				</div>
				<!-- 지하철 호선 검색결과 -->
				<div id="searchResult" class="searchResult">
					<div class="title font-weight-bold" style="color: #fade0c">지하철역 정보</div>
				</div>
				<div class='container-fluid'>
					<table class='table table-hover table-responsive'>
						<tbody>
							<tr>
								<c:forEach var="m" items="${list}">
									<c:set var="line" value="${m.line}" />
								</c:forEach>
								<c:choose>
									<c:when test="${line eq '01호선'}">
										<td>
											<div class="line1Train1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="0129열차 인천행" href="train.do"> <img
														src='../resources/img/line/line1.png' alt='' />
													</a>
												</div>
											</div>
										</td>
										<c:forEach var="i" begin="0" end="18">
											<td>
										</c:forEach>
										<div class="line1Train2">
											<div class="up">
												<a data-toggle="tooltip" data-placement="bottom"
													title="0473열차 서동탄행" href="train.do"> <img
													src='../resources/img/line/line1.png' alt='' />
												</a>
											</div>
										</div>
										</td>
										<c:forEach var="i" begin="0" end="4">
											<td>
										</c:forEach>
										<div class="line1Train3">
											<div class="up">
												<a data-toggle="tooltip" data-placement="bottom"
													title="0679열차 신창행" href="train.do"> <img
													src='../resources/img/line/line1.png' alt='' />
												</a>
											</div>
										</div>
									</c:when>
									<c:when test="${line eq '02호선'}">
										<c:forEach var="i" begin="0" end="3">
											<td>
										</c:forEach>
										<td>
											<div class="line2Train1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="2313열차 내선순환" href="train.do"> <img
														src='../resources/img/line/line2.png' alt='' />
													</a>
												</div>
											</div>
										</td>
										<c:forEach var="i" begin="0" end="5">
											<td>
										</c:forEach>
										<div class="line2Train2">
											<div class="up">
												<a data-toggle="tooltip" data-placement="bottom"
													title="2619열차 신설동행" href="train.do"> <img
													src='../resources/img/line/line2.png' alt='' />
												</a>
											</div>
										</div>
										<c:forEach var="i" begin="0" end="26">
											<td>
										</c:forEach>
										<div class="line2Train3">
											<div class="up">
												<a data-toggle="tooltip" data-placement="bottom"
													title="2618열차 까치산행" href="train.do"> <img
													src='../resources/img/line/line2.png' alt='' />
												</a>
											</div>
										</div>
									</c:when>
									<c:when test="${line eq '03호선'}">
										<td>
											<div class="line3Train1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="3263열차 오금행" href="train.do"> <img
														src='../resources/img/line/line3.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '04호선'}">
										<c:forEach var="i" begin="0" end="4">
											<td>
										</c:forEach>
										<td>
											<div class="line4Train1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="4641열차 오이도행" href="train.do"> <img
														src='../resources/img/line/line4.png' alt='' />
													</a>
												</div>
											</div>
										</td>
										<c:forEach var="i" begin="0" end="4">
											<td>
										</c:forEach>
										<td>
											<div class="line4Train2">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="4135열차 사당행" href="train.do"> <img
														src='../resources/img/line/line4.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '05호선'}">
										<c:forEach var="i" begin="0" end="8">
											<td>
										</c:forEach>
										<td>
											<div class="line5Train1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="5643열차 마천행" href="train.do"> <img
														src='../resources/img/line/line5.png' alt='' />
													</a>
												</div>
											</div>
										</td>
										<c:forEach var="i" begin="0" end="5">
											<td>
										</c:forEach>
										<td>
											<div class="line5Train2">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="5125열차 상일동행" href="train.do"> <img
														src='../resources/img/line/line5.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '06호선'}">
										<td>
											<div class="line6Train1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="6203열차 봉화산행" href="train.do"> <img
														src='../resources/img/line/line6.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '07호선'}">
										<c:forEach var="i" begin="0" end="2">
											<td>
										</c:forEach>
										<td>
											<div class="line7Train1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="7269열차 부평구청행" href="train.do"> <img
														src='../resources/img/line/line7.png' alt='' />
													</a>
												</div>
											</div> <c:forEach var="i" begin="0" end="7">
												<td>
											</c:forEach>
											<div class="line7Train2">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="7297열차 온수행" href="train.do"> <img
														src='../resources/img/line/line7.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '08호선'}">
										<c:forEach var="i" begin="0" end="2">
											<td>
										</c:forEach>
										<td>
											<div class="line8Train1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="8181열차 모란행" href="train.do"> <img
														src='../resources/img/line/line8.png' alt='' />
													</a>
												</div>
											</div>
										</td>
										<c:forEach var="i" begin="0" end="2">
											<td>
										</c:forEach>
										<td>
											<div class="line8Train2">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="8179열차 모란행" href="train.do"> <img
														src='../resources/img/line/line8.png' alt='' />
													</a>
												</div>
											</div>
										</td>
										<c:forEach var="i" begin="0" end="2">
											<td>
										</c:forEach>
										<td>
											<div class="line8Train3">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="8177열차 모란행" href="train.do"> <img
														src='../resources/img/line/line8.png' alt='' />
													</a>
												</div>
											</div>
										</td>
										<c:forEach var="i" begin="0" end="2">
											<td>
										</c:forEach>
										<td>
											<div class="line8Train4">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="8175열차 모란행" href="train.do"> <img
														src='../resources/img/line/line8.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '09호선'}">
										<td>
											<div class="line9Train1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="중앙보훈병원행" href="train.do"> <img
														src='../resources/img/line/line9.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '경의선'}">
										<td>
											<div class="lineGyeonguiTrain1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="서울역행" href="train.do"> <img
														src='../resources/img/line/lineGyeongui.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '공항철도'}">
										<td>
											<div class="lineAirportTrain1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="인천공항2터미널행" href="train.do"> <img
														src='../resources/img/line/lineAirport.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '경춘선'}">
										<td>
											<div class="lineGyeongchunTrain1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="춘천행" href="train.do"> <img
														src='../resources/img/line/lineGyeongchun.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '인천선'}">
										<td>
											<div class="lineIncheonTrain1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="국제업무지구행" href="train.do"> <img
														src='../resources/img/line/lineIncheon.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '인천2호선'}">
										<td>
											<div class="line2IncheonTrain1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="운연행" href="train.do"> <img
														src='../resources/img/line/line2Incheon.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '수인선'}">
										<td>
											<div class="lineSuinTrain1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="인천행" href="train.do"> <img
														src='../resources/img/line/lineSuin.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '분당선'}">
										<td>
											<div class="lineBundangTrain1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="청량리행" href="train.do"> <img
														src='../resources/img/line/lineBundang.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '신분당선'}">
										<td>
											<div class="lineShinbundangTrain1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="양재시민의숲행" href="train.do"> <img
														src='../resources/img/line/lineShinbundang.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
									<c:when test="${line eq '우이신설경전철'}">
										<td>
											<div class="lineUiSinseolTrain1">
												<div class="up">
													<a data-toggle="tooltip" data-placement="bottom"
														title="신설동행" href="train.do"> <img
														src='../resources/img/line/lineUiSinseol.png' alt='' />
													</a>
												</div>
											</div>
										</td>
									</c:when>
								</c:choose>
							</tr>
							<tr>
								<c:forEach var="m" items="${list}">
									<c:set var="line" value="${m.line}" />
									<c:choose>
										<c:when test="${line eq '01호선'}">
											<td><a style="color: #00498B;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '02호선'}">
											<td><a style="color: #009246;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '03호선'}">
											<td><a style="color: #F36630;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '04호선'}">
											<td><a style="color: #00A2D1;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '05호선'}">
											<td><a style="color: #A064A3;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '06호선'}">
											<td><a style="color: #9E4510;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '07호선'}">
											<td><a style="color: #5D6519;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '08호선'}">
											<td style="width: 30px"><a style="color: #D6406A;"
												class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '09호선'}">
											<td><a style="color: #A17E46;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '경의선'}">
											<td><a style="color: #72C7A6;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '공항철도'}">
											<td style="width: 30px"><a style="color: #0065B3;"
												class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '경춘선'}">
											<td><a style="color: #2ABFD0;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '인천선'}">
											<td><a style="color: #6E98BB;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '인천2호선'}">
											<td><a style="color: #ED8B00;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '수인선'}">
											<td style="width: 30px"><a style="color: #E9A600;"
												class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '분당선'}">
											<td><a style="color: #D4A017;" class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '신분당선'}">
											<td style="width: 30px"><a style="color: #BB1833;"
												class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
										<c:when test="${line eq '우이신설경전철'}">
											<td style="width: 30px"><a style="color: #B7C452;"
												class="btn btn-link"
												href="station.do?stationName=${m.stationName}">${m.stationName}</a>
											</td>
										</c:when>
									</c:choose>
								</c:forEach>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>