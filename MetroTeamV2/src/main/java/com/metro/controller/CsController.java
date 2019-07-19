package com.metro.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.metro.domain.CsVO;
import com.metro.service.CsService;

@Controller	// 고객관리 서비스 컨트롤러
@RequestMapping("cs/")
public class CsController {		
	
	@Autowired
	private CsService csService;
	
	@RequestMapping(value="{url}.do")	// 단순 경로 테스트용
	public String common(@PathVariable String url) {
		return "cs/" + url;
	}
	
	
	// ##### notice_start #####
	// 전체 글 목록 페이지에 출력
	@RequestMapping("noticeAllList.do")
	public void noticeAllList(CsVO vo, Model model) {
		model.addAttribute("noticeList", csService.noticeAllList(vo));
	}
	
	// 글 목록 검색
	@RequestMapping(value = "noticeList.do", method = RequestMethod.POST, 
			produces = "application/json; charset=utf-8")
	@ResponseBody
	public String noticeList(CsVO vo, HttpServletResponse response) {
		List<CsVO> list = csService.noticeList(vo);
		// 한눈에 보이는 노선을 선택해 글 목록 조회, 검색어로 찾은 글 조회
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(list);
		} catch (Exception e) {
			System.out.println("error> " + e.getMessage());
		}
		return str;
	}
	
	// 글 상세 보기 + 조회수 증가
	@RequestMapping("noticeView.do")
	public void noticeView(CsVO vo, Model model) {
		csService.noticeCnt(vo);
		model.addAttribute("notice", csService.noticeView(vo));
	}
	// ##### notice_end #####
	
	
	// ##### QA_start #####
	// 글 등록
	@RequestMapping("saveQA.do")
	public String sendQA(CsVO vo) throws IOException{
		csService.sendQA(vo);
		return "redirect:/cs/qAList.do";
	}
	
	// 글 목록 검색
	@RequestMapping("qAList.do")
	public void qAList(CsVO vo, Model model) {
		model.addAttribute("qAList", csService.qAList(vo));
	}
	
	// 글 상세 조회
	@RequestMapping("qAView.do")
	public void qAView(CsVO vo, Model model) {
		model.addAttribute("qA", csService.qAView(vo));
	}
	
	// 글 수정
	@RequestMapping("updateQA.do")
	public String updateQA(@ModelAttribute("qA") CsVO vo) {
		csService.updateQA(vo);
		return "redirect:/cs/qAList.do";
	}
	
	// 글 삭제
	@RequestMapping("deleteQA.do")
	public String deleteQA(CsVO vo) {
		csService.deleteQA(vo);
		return "redirect:/cs/qAList.do";
	}
	// ##### QA_end #####
}
