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
		var winWidth = 400;
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
	 * 	########## popupChat.jsp ##########
	 * 	***** 선택한 노선 정보 입력 *****
	 */
	// 드롭다운의 노선을 선택 했을 때
	$(".dropdown-menu li a").click(function(){
		// 선택한 노선번호 보여주기
		$(".dropdown-toggle").text($(this).text());
	    $(".dropdown-toggle").val($(this).text());
	    
	    // 선택한 노선번호 값 받기
	    var lno = this.text;
	    lno = lno.replace(/호선/,'');
	    
	    // 역이름을 입력하고 검색버튼을 눌렀을 때
	    $("#insertBtn").click(function(){
	    	// 입력한 역이름 값 받기
	    	var sname = document.getElementById('sname').value;
	    	
	    	// 날짜 입력 ############################## mid mdate 수정하기
    		var mid=7;
    		var date = new Date();
    		var year = date.getFullYear();
    		var month = date.getMonth()+1;
    		var day = date.getDate();
    		if((day+"").length < 2){
    			day = "0" + day;
    		}
    		var hour = date.getHours();
    		var min = date.getMinutes();
    		var sec = date.getSeconds();
    		var mdate = year + "-" + month + "-" + day + "-" + hour + "-" + min + "-" + sec;
    		
    		$.ajax({
    			type: "post", 
    			url: "insertMessage.do", 
    			data: {"lno" : lno , "sname" : sname, "mid" : mid, "mdate" : mdate}, 
    			contentType : 'application/x-www-form-urlencoded;charset=UTF-8', 
    			success: function(data){
    				$.each(data, function(data){
    					// 화면에 입력 정보 확인 문구 띄우기
    					$("#chat-list").append(
    							"<hr>"
    							+ "<div class='insertMessage' id='chating'>"
    							+ "<p class='introtxt'>" + lno + "(호선)의 " + sname + "역의 궁금한 점! " 
    							+ "<br/> 이지톡에 무엇이든 물어보세요 :)</p>"
    							+ "</div>"
    							+ "<input type='hidden' id='messageid' value="+this.messageid+">"
    					)
    				});
    			}, 
    			error: function() {
					alert("insertMessage_error");
				}
    		});
	    });
	});
	
	/*
	 	***** 질문하기(채팅입력창에 내용을 쓰고 검색버튼을 눌렀을 때) *****
	 */
	$("#chatBtn").click(function(){
		// 입력한 내용 값 받기
		var content =  document.getElementById('content').value;
		var messageid = document.getElementById('messageid').value;
		$("#content").val("");
		$.ajax({
			type: "post", 
			url: "insertContent.do", 
			data: {"content" : content, "messageid" : messageid}, 
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8', 
			success: function(data){
				$("#chatting").empty();
				$("#chating").append(
						"<ul class='chat-list' id='chatting'></ul>" 
				);
				$.each(data, function(){
					$("#chatting").append(
							"<li><div class='userMessage'>" + this.content + "</div></li><br/>"
							 + "<li><div class='serviseError'> " 
							 + "이지톡을 이용해주셔서 감사합니다 :) <br/> " 
							 + "업무시간은 00시~00시 이며 <br/>"
							 + "업무시간 이외의 문의 사항은 <br/>" 
							 + "순차적으로 답변 드리겠습니다." 
							 + "</div></li><br/>"
					);
				});
			}, 
			error: function() {
				alert("insertContent_error");
			}
		});
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
				alert("updateMessage_error");
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