package com.metro.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.metro.domain.FavoriteStationVO;
import com.metro.domain.MemberVO;
import com.metro.service.MemberService;


@Controller	// 회원정보 관리용 컨트롤러
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	// 숫자만 있는지 확인할 정규식
	String regExp="^[0-9]+$";
	
	@RequestMapping(value="{url}.do")	// 단순 경로 테스트용
	public String common(@PathVariable String url) {
		return "/member/" + url;
	}

	// 맨 처음 hiddenindex에서 시작해서 메인페이지 가기
	@RequestMapping("start.do")
	public String test() {
		return "home";
	}
	
	// 회원가입 시 id 중복 체크
	@RequestMapping(value="idCheck.do", produces="application/text; charset=UTF-8")
	@ResponseBody	// ***** ajax 인 경우 반드시 해야 비동기 통신 함.
	public String midCheck(MemberVO vo, HttpSession session) {
		System.out.println("====> idCheck.do들어오오옹"+session.getAttribute("username"));
		if(vo.getMid().contains("@")) {
			vo.setEmail(vo.getMid());
		} else {
			vo.setMtel(vo.getMid()); 
		}
		String result = "사용가능합니다.";
		MemberVO resultVo = memberService.midCheck(vo);
		if(resultVo != null) result="이미 사용중입니다.";
		return result;
	}
	
	// 로그아웃
	// 세션 무효화
	@RequestMapping(value="logout.do")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		session.invalidate();
		
		String url = "";
//		url = "redirect:/sampleindex.jsp";
		// ****** sampleindex.jsp include 시 아래 url 주석 풀기 ******
		url = "home";
		return url;
	}
	
	// 마이페이지 이동
	@RequestMapping("mypage.do")
	public void mypage(MemberVO vo) {
		
	}
	
	// 로그인
	/* 세션 저장 값
	 * realMid	: db에 저장된 시퀀스 값
	 * mid 		: 이메일 또는 전화번호
	 * username : 사용자이름 
	 */
	@RequestMapping(value="login.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public String login(MemberVO vo, HttpSession session) {
		
		System.out.println("====> login.do들어옴");
		/*
		 * mid값 비교
		 * @ o : email
		 * 숫자만 : mtel
		 * 나머지 : username
		 */
		String mid = vo.getMid();
		if(mid.contains("@")) {
			vo.setEmail(mid);
		}else if(mid.matches(regExp)) {
			vo.setMtel(mid);
		}else {
			vo.setUsername(mid);
		}
		
		MemberVO resultVo = memberService.login(vo);
		/*
		 * dao에서 받은 resultVo 채워진 값 비교해서 로그인 결과 알려줌
		 * id x : 존재하지 않는 계정입니다.
		 * id o, 비번 x : 잘못된 비밀번호입니다. 
		 * id o, 비번 o : 로그인 성공
		 */
		String result="존재하지 않는 계정입니다. 다시 시도하세요";
		if(resultVo != null) {
			if(resultVo.getUsername() == null) {
				result="존재하지 않는 계정입니다. 다시 시도하세요";
				return result;
			}
			else if(resultVo.getPass() == null) {
				result="잘못된 비밀번호입니다. 다시 시도하세요";
				return result;
			}
			session.setAttribute("realMid", resultVo.getMid());
			session.setAttribute("username", resultVo.getUsername());
			if(resultVo.getEmail() != null) {
				session.setAttribute("mid", resultVo.getEmail());
			} else {
				session.setAttribute("mid", resultVo.getMtel());
			}
			result=resultVo.getUsername()+"님";
		}
		return result;
	}
	
	
	// 회원가입
	/* 세션 저장 값
	 * realMid	: db에 저장된 시퀀스 값
	 * mid 		: 이메일 또는 전화번호
	 * username : 사용자이름 
	 */
	@RequestMapping(value="signup.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public String signup(MemberVO vo, HttpSession session) {
		System.out.println("signup.do는 들어옴"+session.getAttribute("username"));
		/*userid를 이메일인지 전화번호인지 구분해서 vo에 담아 전송*/
		if(vo.getMid().contains("@")) {
			vo.setEmail(vo.getMid());
			session.setAttribute("mid", vo.getEmail());
		} else {
			vo.setMtel(vo.getMid());
			session.setAttribute("mid", vo.getMtel());
		}
		String result=vo.getUsername();
		memberService.signup(vo);
		session.setAttribute("username", vo.getUsername());
		
		// db에서 사용하는 mid값 얻기 위해 username에 null값을 넣어 로그인
		vo.setUsername(null);
		MemberVO loginResultVo = memberService.login(vo);
		session.setAttribute("realMid", loginResultVo.getMid());
		return result;
	}
	
	// 개인정보수정
	// 사용자 이름 변경 가능하므로 세션에 다시 저장
	@RequestMapping(value="updateProfile.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public void updateProfile(MemberVO vo, HttpSession session) {
		System.out.println("updateProfile.do 들어옴ㅁㅁㅁㅁ");
		if(vo.getMid().contains("@")) {
			vo.setEmail(vo.getMid());
		} else {
			vo.setMtel(vo.getMid());
		}
		memberService.updateProfile(vo);
		session.setAttribute("username", vo.getUsername());
	}
	
	// 비밀번호 찾을 때 사용자가 등록한 이메일 또는 전화번호와 사용자 이름 정보가 일치하는지 확인
	// 일치할 경우 1 리턴, 아니면 0 리턴
	// 입력 정보가 일치할 경우 사용자 정보 세션 저장
	@RequestMapping(value="formcheck.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public String formCheck(MemberVO vo, HttpSession session) {
		System.out.println("formCheck.do 들어옴");
		if(vo.getMid().contains("@")) {
			vo.setEmail(vo.getMid());
		} else {
			vo.setMtel(vo.getMid());
		}
		System.out.println(vo.getMid()+"///"+vo.getUsername());
		MemberVO resultVo = memberService.formCheck(vo);
		if(resultVo != null) {
			if(resultVo.getEmail() != null) {
				session.setAttribute("mid", resultVo.getEmail());
			} else {
				session.setAttribute("mid", resultVo.getMtel());
			}
			session.setAttribute("realMid", resultVo.getMid());
			session.setAttribute("username", resultVo.getUsername());
			return "1";
		}
		return "2";
	}
	
	// 비밀번호 바꾸기
	@RequestMapping("pwreset.do")
	public String pwReset(MemberVO vo, HttpSession session) {
		System.out.println("pwreset.do 들어오오오엉");
		String mid = (String)session.getAttribute("mid");
		if(mid.contains("@")) {
			vo.setEmail(mid);
		} else {
			vo.setMtel(mid);
		}
		memberService.updateProfile(vo);
		return "/member/mypage";
	}
	
	//********** 수정 필요
	// 마이페이지 -> 즐겨찾기 관리 페이지에 띄울 목록 가져오기 
	@RequestMapping(value="getfavoritelist.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public String getFavoriteList(HttpSession session) {
		System.out.println("getfavoritelist.do 들어옴...");
		String str ="";
		String mid = (String)session.getAttribute("realMid");
		List<FavoriteStationVO> list = memberService.getFavoriteList(mid);
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(list);
			System.out.println("......"+str);
		} catch (Exception e) {
			System.out.println("error> " + e.getMessage());
		}
		return str;
		
	}
	
	// 마이페이지 -> 즐겨찾기 관리 페이지에서  삭제하기
	@RequestMapping(value="editFavorite.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public void editFavorite(@RequestParam(value="checkArr[]")List<String> list, HttpSession session) {
		System.out.println("editFavorite.do 들어오ㅗㅗㅗ");
		String str = "";
		String mid = (String)session.getAttribute("realMid");
		memberService.editFavorite(mid, list);

	}
	
	// 마이페이지 -> 검색기록 페이지에 띄울 목록 가져오기
	@RequestMapping(value="gethistorylist.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public String getHistoryList(HttpSession session) {
		System.out.println("gethistorylist.do 호출ㄹㄹ");
		String str="";
		String mid = (String)session.getAttribute("realMid");
		List list = memberService.getHistoryList(mid);
		ObjectMapper mapper = new ObjectMapper();
		try {
			str = mapper.writeValueAsString(list);
			System.out.println("......"+str);
		} catch (Exception e) {
			System.out.println("error> " + e.getMessage());
		}
		return str;
	}
	
	// 마이페이지 -> 검색기록 삭제하기
	@RequestMapping(value="editHistory.do", produces="application/text; charset=UTF-8")
	@ResponseBody
	public void editHistory(@RequestParam(value="checkArr[]")List<String> list, HttpSession session) {
		System.out.println("editHistory.do 들어오ㅗㅗㅗ");
		String str = "";
		String mid = (String)session.getAttribute("realMid");
		memberService.editHistory(mid, list);

	}
}
