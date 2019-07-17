$(function(){	
	// ########## 상행 ##########
	// 첫번째 지점
	var anchors = $('.uptrain').find('a');
		
	// 첫번째 지점의 'on'을 붙혀준다.
	$('.uptrain').find('a:first').addClass('on');
	
	// 마지막지점의 'on'을 찾는다.
	var lastAnchors = anchors.filter('.on');

	var img_over = lastAnchors.find('img:first').attr('src');   // *_over
	var img_out = img_over.replace('_over', '_out');   // *_out

	anchors.click(function(){
				
		// 마지막 지점의 'on'을 지워준다.
		lastAnchors.removeClass('on');
		
		lastAnchors.find('img').attr('src', img_out); // *_out 기존것.
				
		// 현재 지점에 'on'을 붙혀준다.
		$(this).addClass('on');
		
		lastAnchors = $(this);
				
		img_out = lastAnchors.find('img').attr('src');   // *_out 바뀔것 원래.
		img_over = img_out.replace('_out', '_over');   // *_over 바뀔것
				
		lastAnchors.find('img').attr('src', img_over);
	});
			
	// ########## 하행 ##########
	// 첫번째 지점
	var anchors2 = $('.downtrain').find('a');
			
	// 첫번째 지점의 class 'on'을 붙혀준다.
	$('.downtrain').find('a:first').addClass('on');
			
	// 마지막지점의 'on'을 찾는다.
	var lastAnchors2 = anchors2.filter('.on');

	var img_over2 = lastAnchors2.find('img:first').attr('src');   // *_over
	var img_out2 = img_over2.replace('_over', '_out');   // *_out

	anchors2.click(function(){
				
		// 마지막 지점의 on을 지워준다.
		lastAnchors2.removeClass('on');
				
		lastAnchors2.find('img').attr('src', img_out2); // *_out 기존것.
				
		// 현재 지점에 'on'을 붙혀준다.
		$(this).addClass('on');
				
		lastAnchors2 = $(this);
				
		img_out2 = lastAnchors2.find('img').attr('src');   // *_out 바뀔것 원래.
		img_over2 = img_out.replace('_out', '_over');   // *_over 바뀔것
				
		lastAnchors2.find('img').attr('src', img_over2);
	});
})