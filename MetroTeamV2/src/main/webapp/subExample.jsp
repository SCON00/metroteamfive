<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html>
	<head>
		<title>Page Title</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="initial-scale=1.0">
		<link href="<%=application.getContextPath() %>/resources/css/subExample.css" rel="stylesheet" />
        <script type="text/javascript" src="<%=application.getContextPath() %>/resources/js/jquery.js"></script>
        <script type="text/javascript" src="<%=application.getContextPath() %>/resources/js/svg-pan-zoom.min.js"></script>
        <script type="text/javascript" src="<%=application.getContextPath() %>/resources/js/thumbnailViewer.js"></script>
        <script type="text/javascript" src="<%=application.getContextPath() %>/resources/js/subExample.js"></script>
        <style>
            html, body{
                width:100%;
                height: 100%;
                padding: 0;
                margin: 0;
            }
            #mainViewContainer {
                width: 100%;
                height : 960px;
                /* border: 1px solid black; */
                margin: 10px;
                padding: 3px;
                overflow: hidden;
            }
            #seoulSubwayMap{
                width: 95%;
                height: 95%;
                min-height: 100%;
                display: inline;
            }
            .thumbViewClass {
                border: 1px solid black;
                position: absolute;
                top:5px;
                left: 5px;
                width: 10%;
                height: 20%;
                margin: 3px;
                padding: 3px;
                overflow: hidden;
            }
            #thumbView {
                z-index: 110;
                background: white;
            } 
            #scopeContainer {
                z-index: 120;
            }
        </style>
        <script>
        var obj;
        var addFvList=new Array();	// 이전에 추가해놓은 즐겨찾기 목록
       	var sessionRealMid = '<%=(String) session.getAttribute("realMid")%>';
        if(sessionRealMid != '' || sessionRealMid != 'null'){
        	// ajax로 즐겨찾기 목록 갖고와서 addFvList에 넣어놓기
        	$.ajax({
        		type: "get",
    			async : true,
    			url : "../member/getfavoritelist.do",
    			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
    			success : function(data){
    				$.each(JSON.parse(data), function(){
    					addFvList.push(this.STATION_NAME);
    				});
    			}
        	});
        }
        var newAddFvList=addFvList; // 새로 추가한 즐겨찾기 목록
        
      //******8
    	function closeLayer( obj ) {
    		$(obj).parent().parent().hide();
    	}
    	//*******888
        $(document).ready(function(){
        	
            $('#seoulSubwayMap')[0].addEventListener('load', function(){
                obj = svgPanZoom('#seoulSubwayMap');
                
                obj.zoomAtPointBy(0, {x: $('#mainViewContainer').width()/2, y: 0});
                
                var svgDoc = $('#seoulSubwayMap')[0].getSVGDocument();
                
                svgDoc.onmousemove = function (evt){
                    var clickedElement = evt.target;
                    
                    $(svgDoc).find('text').attr('font-size', '20px');
                    $(svgDoc).find('tspan').attr('font-size', '20px');
                    if ($(clickedElement).is("text") || $(clickedElement).is("tspan")){
                        if ($(clickedElement).parent().attr('id') != 'legend_x5F_ko'){
                            $(clickedElement).css('cursor', 'pointer');
                            $(clickedElement).attr('font-size', '30px');
							if ($(clickedElement).is("tspan")){
	                            $(clickedElement).siblings().css('cursor', 'pointer');
        	                    $(clickedElement).siblings().attr('font-size', '30px');
							}
						}
                    }
                }
                
                svgDoc.onclick = function (evt){
                    var clickedElement = evt.target;
                    if ($(clickedElement).is("text") || $(clickedElement).is("tspan")){
                        console.log($(clickedElement).text());
                        //******
                        var stationName = $(clickedElement).text();
                        $('.popupLayer').empty();
                        $('.popupLayer').append(
                        		"<label id='stationname'></label>"
                        );
                        $('.popupLayer #stationname').text(stationName);
                        
                 
                       	var srcImgName = "../resources/img/plus.png";
                        if($.inArray(stationName, addFvList) != -1){
                        	srcImgName = srcImgName.replace(/plus/, "checked");
                        }
                        $('.popupLayer').append(
                        		"<div>"+
                    			"<a href='#s' class='favoritestatus'><img id='addfavorite' value='"+stationName+"' src='"+srcImgName+"'/></a>"+
                    			"</div>"+
                    			"<br/>"+
                    			"<div>"+
                    			"<a href='<%=application.getContextPath() %>station/station.do/"+stationName+"'>상세보기</a>"+
                    			"</div>"
                        );
                        var sWidth = window.innerWidth;
						var sHeight = window.innerHeight;

						var oWidth = $('.popupLayer').width();
						var oHeight = $('.popupLayer').height();

						// 레이어가 나타날 위치를 셋팅한다.
						var divLeft = evt.clientX + 40;
						var divTop = evt.clientY - 5;

						// 레이어가 화면 크기를 벗어나면 위치를 바꾸어 배치한다.
						if( divLeft + oWidth > sWidth ) divLeft -= oWidth;
						if( divTop + oHeight > sHeight ) divTop -= oHeight;
	
						// 레이어 위치를 바꾸었더니 상단기준점(0,0) 밖으로 벗어난다면 상단기준점(0,0)에 배치하자.
						if( divLeft < 0 ) divLeft = 0;
						if( divTop < 0 ) divTop = 0;
	
						$('.popupLayer').css({
							"top": divTop,
							"left": divLeft,
							"position": "absolute"
						}).show();
                       	 //******
                    } else{
                    	$('.popupLayer').hide();
                    }
                }
               
               // 즐겨찾기 추가 및 해제
               $(document).on('click', '#addfavorite', function(){
            	   var sessionRealMid = '<%=(String) session.getAttribute("realMid")%>';
                   if(sessionRealMid == '' || sessionRealMid == 'null'){
                	   alert('즐겨찾기 추가는 회원만 가능합니다. ');
                	   return;
                   }
            	   var imgVal = $(this).attr('value');
            	   var imgName = $(this).attr('src');
            	   if(imgName.match(/plus/)){ // plus -> checked : 즐겨찾기 추가로 이미지 변경, 배열에 추가, ajax로 bookmark 테이블에 추가
            		   newAddFvList.push(imgVal);
            		   imgName = imgName.replace(/plus/, "checked");
            		   $.ajax({
            			   async : true,
                   		   url : "../member/addfavoritelist.do",
            			   contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
            			   data : {sname : imgVal},
            			   error : function(){
            				   alert('삽입에러');
            			   }
            		   }); 
            	   } else{ // checked -> plus : 즐겨찾기 해제로 이미지 변경, 배열에서 지우기
            		   imgName = imgName.replace(/checked/, "plus");
            		   newAddFvList.splice(newAddFvList.indexOf(imgVal),1);
            		   $.ajax({
            			   async : true,
                   		   url : "../member/editFavoriteBySname.do",
            			   contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
            			   data : {sname : imgVal},
            			   error : function(){
            				   alert('삭제에러');
            			   }
            		   });
            	   }
            	   $('img[value="'+imgVal+'"]').attr('src',imgName);
               })
               
               
            });
            
           
        });
        
        </script>
	</head>

	<body>
        <div id="mainViewContainer" width="100%">
            <embed id="seoulSubwayMap" type="image/svg+xml" src="<%=application.getContextPath() %>/resources/img/Seoul_subway_linemap_ko.svg" width="100%"/>
        </div>
        
<%--         <div id="thumbViewContainer">
            <svg id="scopeContainer" class="thumbViewClass">
                <g>
                    <rect id="scope" fill="red" fill-opacity="0.1" stroke="red" stroke-width="2px" x="0" y="0" width="0" height="0"/>
                    <line id="line1" stroke="red" stroke-width="2px" x1="0" y1="0" x2="0" y2="0"/>
                    <line id="line2" stroke="red" stroke-width="2px" x1="0" y1="0" x2="0" y2="0"/>
                </g>
            </svg>
             <embed id="thumbView" type="image/svg+xml" src="<%=application.getContextPath() %>/resources/img/Seoul_subway_linemap_ko.svg" class="thumbViewClass"/> 
        </div> --%>
        
        <div class="popupLayer">
        <label id="stationname"></label>
		<!-- <a href="#" id="addfavorite" value="">
                    			즐겨찾기추가
                    			</a> -->	
		</div>
        
        <!-- <script>
            thumbnailViewer({mainViewId: 'seoulSubwayMap',thumbViewId: 'thumbView'});  
        </script> -->
	</body>
</html>