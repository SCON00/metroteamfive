<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRAIN</title>
<link href="<%=application.getContextPath()%>/resources/css/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src='<%=application.getContextPath()%>/resources/js/jquery-3.4.1.js'></script>
<script type="text/javascript" src='<%=application.getContextPath()%>/resources/js/bootstrap.js'></script>
</head>

<body>
	<h1 class='display-1'>TRAIN</h1>
	<!-- 
		칸별 정원인 160명의 무게를 기준으로 계산해 79% 이하면 ‘여유’, 80%~129%면 ‘보통’, 130% 이상일 경우 ‘혼잡’으로 분류한다. 
		즉, 사람의 몸무게를 65kg으로 가정하면, 127명(약 8.2ton)보다 적은 수가 타면 ‘여유’, 128~207명(8.2~13.4ton)이 타면 ‘보통’, 
		208명(13.4ton)보다 많이 타면 ‘혼잡’으로 표시되는 것이다. 출·퇴근 등 매우 혼잡한 시간대엔 정원의 200%까지도 탑승한다. 
		[출처 : 테크월드(http://www.epnc.co.kr)]
	 -->
	<div class='container-fluid'>
		<table class='table table-hover table-responsive'>
			<tbody>
				<tr>
					<th scope='row' class='upTrain'>상<br />행
					</th>
					<td class='up1'><button
							class='btn btn-lg btn-outline-success btn-block'>
							1<br />호<br />차
						</button></td>
					<td class='up2'><button
							class='btn btn-lg btn-outline-success btn-block'>
							2<br />호<br />차
						</button></td>
					<td class='up3'><button
							class='btn btn-lg btn-outline-danger btn-block'>
							3<br />호<br />차
						</button></td>
					<td class='up4'><button
							class='btn btn-lg btn-outline-warning btn-block'>
							4<br />호<br />차
						</button></td>
					<td class='up5'><button
							class='btn btn-lg btn-outline-danger btn-block'>
							5<br />호<br />차
						</button></td>
					<td class='up6'><button
							class='btn btn-lg btn-outline-warning btn-block'>
							6<br />호<br />차
						</button></td>
					<td class='up7'><button
							class='btn btn-lg btn-outline-warning btn-block'>
							7<br />호<br />차
						</button></td>
					<td class='up8'><button
							class='btn btn-lg btn-outline-success btn-block'>
							8<br />호<br />차
						</button></td>
					<td class='up9'><button
							class='btn btn-lg btn-outline-warning btn-block'>
							9<br />호<br />차
						</button></td>
					<td class='up10'><button
							class='btn btn-lg btn-outline-success btn-block'>
							10<br />호<br />차
						</button></td>
				</tr>
				<tr>
					<th scope='row' class='downTrain'>하<br />행
					</th>
					<td class='down10'><button
							class='btn btn-lg btn-outline-warning btn-block'>
							10<br />호<br />차
						</button></td>
					<td class='down9'><button
							class='btn btn-lg btn-outline-success btn-block'>
							9<br />호<br />차
						</button></td>
					<td class='down8'><button
							class='btn btn-lg btn-outline-success btn-block'>
							8<br />호<br />차
						</button></td>
					<td class='down7'><button
							class='btn btn-lg btn-outline-warning btn-block'>
							7<br />호<br />차
						</button></td>
					<td class='down6'><button
							class='btn btn-lg btn-outline-danger btn-block'>
							6<br />호<br />차
						</button></td>
					<td class='down5'><button
							class='btn btn-lg btn-outline-danger btn-block'>
							5<br />호<br />차
						</button></td>
					<td class='down4'><button
							class='btn btn-lg btn-outline-warning btn-block'>
							4<br />호<br />차
						</button></td>
					<td class='down3'><button
							class='btn btn-lg btn-outline-success btn-block'>
							3<br />호<br />차
						</button></td>
					<td class='down2'><button
							class='btn btn-lg btn-outline-success btn-block'>
							2<br />호<br />차
						</button></td>
					<td class='down1'><button
							class='btn btn-lg btn-outline-warning btn-block'>
							1<br />호<br />차
						</button></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>