/**
 * 
 */
$(function(){
	
	// 역 코드 클릭 이벤트
	$(document).on("click",'.station-map',function(){		
		
		stationMap($(this).text());
		exitInfo($(this).text(), mgtLayout);
	});
	
	// 검색 버튼 클릭
	$('#search-button').click(function(){
		stationList($('#search-station').val());
	});
	
	// 노선 클릭 - 드롭다운 버튼
	var lineList = $('#line-list').find('a');
	lineList.click(function(){
		
		lineList.removeClass("active");
		$(this).addClass("active");
		$.ajax({
			type : "get",
			data : {"line" : $(this).text()},
			url : "/mgt/stationInfo.do",
			dataType : "json",
			success : function(data){
				listStation(data);
				$('#this-page').text(1);
			}
		});
	});
});
// 색상 지정용
var colorWheel = new Array("primary","secondary","success", "danger","warning","info","dark");
// API 키 랜덤 호출 용
var apiKey = new Array(
						"5651457766776f6f38366244585056",
						"447a617656776f6f34366b6b554177",
						"586d436c6b776f6f3130356745725964",
						"48786d4d45776f6f37345741547678",
						"4e66454d77776f6f313955716b414d",
						"6551707063776f6f353652754f5356"
						);
// 1 - 평일, 2 - 토, 3 - 일,휴일
var weekTag = 1;

function stationMap(code){
	
	// 역코드 해당역에서 가장 빠른 코드 번호 조회
	$.ajax({
		type : "get",
		url : "/mgt/stationCode.do/" + code,
		success : function(data){
			
			// 서울시 역코드로 지하철역 위치 조회
			$.getJSON("http://openapi.seoul.go.kr:8088/"
					+ apiKey[Math.floor(Math.random()*(apiKey.length))]
					+ "/json/SearchLocationOfSTNByIDService/1/1/" + data, 
					function(data){
							var coord = data.SearchLocationOfSTNByIDService.row[0];
							var yCoord = coord.YPOINT_WGS;
							var xCoord = coord.XPOINT_WGS;
							
							//console.log("X:" + xCoord + ", Y:" + yCoord);
							getMap(xCoord,yCoord);				
			});
		}
	});	
}

function getMap(x,y){
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(x, y), //지도의 중심좌표.
		level: 4 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
}

function exitInfo(code, fnc){
		
	// 지하철 출구정보 조회
	$.ajax({
		type : "get",
		data : {"stationCode" : code},
		url : "/mgt/exitInfo.do",
		dataType : "json",
		success : function(data){
			fnc(data);			
		}
	});
}

function setExitInfo(exitName){
	// 역 정보 화면 출구별 정보 처리
	$('.exit-map-card').find('.dropdown-toggle').text(exitName);
	$('#exit-info').find('p').hide();	
	var exitNumber = exitName.replace("번 출구", "");
	$('#exit-' + exitNumber).show();
}

function mgtLayout(data){
	// 관리자 모듈 역 출구 정보 출력
	var cols = $('.card-columns-exits');
	cols.empty();
	if(jQuery.isEmptyObject(data)){
		cols.append("<div class='card bg-primary text-white text-center p-3'></div>");
		var div = cols.find("div:nth-of-type(1)");
		div.append("<blockquote class='blockquote mb-0'></blockquote>");
		var bQuote = div.find("blockquote");
		bQuote.append("<p>출구정보가 존재하지 않습니다.</p>");
		bQuote.append("<footer class='blockquote-footer text-white'></footer>");
		bQuote.find("footer").append("<small>00<cite title='Source Title'> 번 출구 </cite></small>");
		return;
	}
	
	
	var exits = Object.keys(data);
	for(var i=0; i < exits.length; i++){
		cols.append("<div class='card bg-" + colorWheel[i%colorWheel.length] + " text-white text-center p-3'></div>");
		var div = cols.find("div:nth-of-type(" + (i+1) + ")");
		div.append("<blockquote class='blockquote mb-0'></blockquote>");
		var bQuote = div.find("blockquote");
		bQuote.append("<p>" + data[exits[i]] + "</p>");
		bQuote.append("<footer class='blockquote-footer text-white'></footer>");
		bQuote.find("footer").append("<small>" + exits[i] +  "<cite title='Source Title'> 번 출구 </cite></small>");
	}
}

function stnExitInfo(data){
	// 지하철 역 정보 화면 출구 정보
	var position = $('#exit-info').empty();
	console.log("station exit info");
	position.find('h5').text("출구정보");
	
	if(jQuery.isEmptyObject(data)){		
		position.find('p').text("출구정보를 제공하지 않습니다.");
		return;
	}
	
	var exits = Object.key(data);
	var exitList = $('#exit-list').empty();
	for(var i=0; i < exits.length; i++){
		console.log(data[exits[i]]);
		exitList.append('<a class="dropdown-item" href="#">' + exits[i] + '</a>');
		position.append('<p class="card-text lead" display="none">' + data[exits[i]] + '</p>');
	}
	position.find('p:first-of-type').removeAttr("display");
}

function stationList(searchWord){
	
	// 지하철 역 검색
	$.ajax({
		type : "get",
		data : {
				"searchWord" : searchWord,
				"page" : 1
			},
		url : "/mgt/stationInfo.do",
		dataType : "json",
		success : function(data){
			listStation(data);
			$('#this-page').text(1);
		},
		error : function(e){
			console.log(e.status);
			console.log(e);
		}
	});
}

function listByPage(page){
	
	var lineNum = $('#line-list').find('.active').text();
	var searchWord = $('#search-station').val();
	
	// page 이동 함수
	$.ajax({
		type : "get",
		data : {
				"page" : page,
				"line" : lineNum,
				"searchWord" : searchWord
			},
		url : "/mgt/stationInfo.do",
		dataType : "json",
		success : function(data){
			listStation(data);
		}
	});
	
	$('#this-page').text(page);
}

function listStation(data){
	
	var tBody = $('tbody');
	tBody.empty();
	var i = 1;
	for(var a in data){
		//console.log(data[a]);
		tBody.append("<tr></tr>");
		var tr = tBody.find("tr:nth-of-type(" + i + ")");
		tr.append("<th scope='row'><button type='button' class='station-map btn btn-sm btn-block btn-secondary'>" 
				+ data[a]["stationCode"] + "</button></th>");
		tr.append("<td>" + data[a]["stationName"] + "</td>");
		tr.append("<td>" + data[a]["stationNameEng"] + "</td>");
		tr.append("<td>" + data[a]["lineNumber"] + "</td>");
		tr.append("<td>" + data[a]["fCode"] + "</td>");
		i++;
	}
}

// 열차 시간표 - SearchArrivalInfoByIDService, 열차별 경유 구간 정보 - SearchViaSTNArrivalTimeByTrainService
function trainSchedule(lineNumber, stationCode, inOrOut){
	// 역 기준 도착 스케줄 조회 - 도착시간, 열차코드
	$.getJSON("http://openapi.seoul.go.kr:8088/" + apiKey[Math.floor(Math.random()*(apiKey.length))]
			+ "/json/SearchSTNTimeTableByIDService/1/200/"
			+ stationCode + "/" + weekTag + "/" + inOrOut +"/", 
			function(data){
					var result = data.SearchSTNTimeTableByIDService.row;
					var arr = new Array();
					for(var i=0; i<result.length; i++){
						var timeRemain = strToDate(result[i].ARRIVETIME);						
						if(timeRemain < 0) continue;						// 현재 시간 이전 스케줄 제외
						var trainCode = result[i].TRAIN_NO;
						arr.push({
							"timeRemain" 		: timeRemain, 
							"trainCode" 		: trainCode, 
							"destinationName" 	: result[i].SUBWAYENAME
							});						
					}
					
					if(inOrOut == 1){
						var liveStation = $('#liveStation > div:first-child');
						liveStation.find("div:first-child").text(arr[0].destinationName + "(상행)");
						liveStation.find("div:nth-child(2) > h5").text(Math.floor(arr[0].timeRemain/60) + "분 " + (arr[0].timeRemain%60) + "초");
						liveStation.find("div:last-child").text("열차 " + arr[0].trainCode);
					} else {
						var liveStation = $('#liveStation > div:last-child');
						liveStation.find("div:first-child").text(arr[0].destinationName + "(하행)");
						liveStation.find("div:nth-child(2) > h5").text(Math.floor(arr[0].timeRemain/60) + "분 " + (arr[0].timeRemain%60) + "초");
						liveStation.find("div:last-child").text("열차 " + arr[0].trainCode);
					}
					
					// 차량기준 열차 스케줄 조회 - 역 별 차량 도착 예정 시간
					$.getJSON("http://openapi.seoul.go.kr:8088/" + apiKey[Math.floor(Math.random()*(apiKey.length))]
							+ "/json/SearchViaSTNArrivalTimeByTrainService/1/100/"
							+ arr[0].trainCode + "/" + weekTag + "/" + inOrOut + "/",
							function(dataSet){
								var resultSet = dataSet.SearchViaSTNArrivalTimeByTrainService.row;
								var arr = new Array();
								for(var i=0; i<resultSet.length; i++){
									var timeRemain = strToDate(resultSet[i].ARRIVETIME);
									if(timeRemain < 0) continue;
									arr.push({
										"timeRemain" 		: timeRemain,
										"fCode" 			: resultSet[i].FR_CODE,
										"stationCode" 		: resultSet[i].STATION_CD,
										"stationName" 		: resultSet[i].STATION_NM,
										"destinationName" 	: resultSet[i].SUBWAYENAME,
										"arriveTime" 		: resultSet[i].ARRIVETIME
									});
								}
								console.log(arr.sort(function(a,b){
									return a["timeRemain"] - b["timeRemain"];
								}));
					});					
	});
}

function strToDate(strTime){
	var aTime = strTime.split(":");
	var arriveTime = new Date();
	arriveTime.setHours(aTime[0]);
	arriveTime.setMinutes(aTime[1]);
	arriveTime.setSeconds(aTime[2]);
	return (arriveTime - new Date())/1000;
}

