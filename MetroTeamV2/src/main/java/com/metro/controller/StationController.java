package com.metro.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.metro.domain.StationVO;
import com.metro.service.StationService;

@Controller	// 역 관련 서비스 컨트롤러
@RequestMapping("station/")
public class StationController {
	
	@Autowired
	private StationService stationService;

	@RequestMapping(value="{url}.do")	// 단순 경로 테스트용
	public String common(@PathVariable String url) {
		return "station/" + url;
	}
	
	@RequestMapping(value="station.do/{stationName}", method = RequestMethod.GET)
	public ModelAndView station(@PathVariable("stationName") String stationName) {
		ModelAndView mv = new ModelAndView();
		System.out.println(stationName + ": Controller");
		String result = stationService.stationInfo(stationName);
		mv.addObject("result", result);
		mv.setViewName("station/station");
		return mv;
	}
	
	// 라인정보 가져오기
	@RequestMapping(value="lineInfo.do", produces="application/text; charset=utf8")
	public ModelAndView line(@RequestParam("lineNumber") String lineNumber) {
		
		System.out.println(lineNumber + ": Controller");
		
		List<StationVO> list = stationService.lineInfo(lineNumber);
		
		System.out.println(list);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("station/line");
		
		return mv;
	}
}
