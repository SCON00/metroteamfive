/**
 *	cs
 */

$(function() {
	/* 
	 * 	########## index.jsp ##########
	 * 	***** 스크롤을 따라 움직이는 퀵메뉴바 *****
	 */
	var offset = $("#quickMenu").offset();
	var topPadding = 110;
	$(window).scroll(function() {
		if ($(window).scrollTop() > offset.top) {
			$("#quickMenu").stop().animate({
				marginTop : $(window).scrollTop() - offset.top + topPadding
			}, 500);
		} else {
			$("#quickMenu").stop().animate({
				marginTop : 0
			});
		};
	});

	/* 
			***** 날씨 이미지 클릭시 날씨정보 제공 *****
	 */
	$("#weather").click(function(){
		alert("날씨정보버튼");
	});

	/* 
			***** 역/노선 검색 이미지 클릭시 역/노선 검색 팝업창을 띄움 *****
	 */
	/*
	 * 	##### 팝업 옵션 #####
	 * [yes/no로 지정]
	 * toolbar = 상단 도구창 출력 여부 
	 * menubar = 상단 메뉴 출력 여부
	 * location = 메뉴아이콘 출력 여부
	 * directories = 제목 표시줄 출력 여부
	 * status = 하단의 상태바 출력 여부
	 * scrollbars = 스크롤바 사용 여부
	 * resizable = 팝업창의 사이즈 변경 가능 여부
	 * [사이즈 정의(px)]
	 * width = 팝업창의 가로 길이 설정
	 * height = 팝업창의 세로 길이 설정
	 * top = 팝업창이 뜨는 위치(화면 위에서부터의 거리 지정)
	 * left = 팝업창이 뜨는 위치(화면 왼쪽에서부터의 거리 지정)
	 */
	$("#map").click(function(){
		var url = "cs/popupSearch.do"
		var winWidth = 300;
	    var winHeight = 500;
	    var popupOption= "width=" + winWidth + ", height=" + winHeight + "top=50%, left=80%";    //팝업창 옵션(optoin)
		window.open(url,"",popupOption);
	});

	/* 
			***** 역 검색의 값을 받아와 정보 조회 *****
	 */
	$("#searchStationBtn").click(function(){
		var searchValue = document.getElementById('searchStation').value;
		$.ajax({
			type: post
		});
	});

	/* 
			***** 메세지 이미지 클릭시 메세지창 띄움 *****
	 */
	$("#message").click(function(){
		var url = "cs/popupChat.do"
		var winWidth = 370;
		var winHeight = 500;
		var popupOption= "width=" + winWidth + ", height=" + winHeight + "top=50%, left=80%";    //팝업창 옵션(optoin)
		window.open(url,"",popupOption);
	});

	/* 
			***** 상향 이미지 클릭시 페이지 상단으로 이동 *****
	 */
	$("#up").click(function(){
		$('html, body').animate({scrollTop: 0}, 1000);
	});

	/* 
			***** 하향 이미지 클릭시 페이지 하단으로 이동 *****
	 */
	$("#down").click(function(){
		$('html, body').animate({scrollTop: $(document).height()}, 1000);
	});
	
	
	/* 
	 * 	########## noticeList.jsp ##########
	 * 	***** 한눈에 보이는 노선을 선택해 글 목록 조회 *****
	 */
	$("[name='lineNo']").click(function(){
		var lineNo = this.value;
		$.ajax({
			type: "post", 
			url: "noticeList.do", 
			data: "lno=" + lineNo, 
        	contentType : 'application/x-www-form-urlencoded;charset=UTF-8', 
        	success: function(data){
        		$("#resultTable").empty();
        		$("#resultTable").append("<tr><th></th><th>제목</th><th>호선</th><th>등록일</th><th>조회수</th></tr>");
        		$.each(data, function(){
        			$("#resultTable").append(
        					"<tr>" 
        						+ "<td>" + this.nid + "</td>"
        						+ "<td align='left'>" 
        							+ "<a href='noticeView.do?nid=" + this.nid + "'>" 
        							+ this.ntitle + "</a>" 
        						+ "</td>" 
        						+ "<td>" + this.lno + "</td>" 
        						+ "<td>" + this.ndate + "</td>" 
        						+ "<td>" + this.cnt + "</td>" 
        					+ "</tr>")
        		});
        	}, 
			error: function(){
				alert("error");
			}
		});
	});
	
	/*
	 	***** 검색어로 찾기 *****
	 */
	$("#searchForBtn").click(function(){
		var searchValue = document.getElementById('searchFor').value;
		$.ajax({
			type: "post", 
			url: "noticeList.do", 
			data: "ntitle=" + searchValue, 
        	contentType : 'application/x-www-form-urlencoded;charset=UTF-8', 
        	success: function(data){
        		$("#resultTable").empty();
        		$("#resultTable").append("<tr><th></th><th>제목</th><th>호선</th><th>등록일</th><th>조회수</th></tr>");
        		$.each(data, function(){
        			$("#resultTable").append(
        					"<tr>" 
        						+ "<td>" + this.nid + "</td>"
        						+ "<td align='left'>" 
        							+ "<a href='noticeView.do?nid=" + this.nid + "'>" 
        							+ this.ntitle + "</a>" 
        						+ "</td>" 
        						+ "<td>" + this.lno + "</td>" 
        						+ "<td>" + this.ndate + "</td>" 
        						+ "<td>" + this.cnt + "</td>" 
        					+ "</tr>")
        		});
        	}, 
			error: function(){
				alert("error");
			}
		});
	});
	
});