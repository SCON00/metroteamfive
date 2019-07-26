package com.metro.service;

import java.util.List;

import com.metro.domain.CsVO;

public interface CsService {
	/*
	 * 고객관리 용 서비스 인터페이스
	 */
	
	// ##### notice_start #####
	// 전체 글 목록 조회
	List<CsVO> noticeAllList(CsVO vo);

	// 선택하거나 검색한 글 목록 조회
	List<CsVO> noticeList(CsVO vo);
	
	// 글 상세 보기
	CsVO noticeView(CsVO vo);
	
	// 조회수 증가
	void noticeCnt(CsVO vo);
	// ##### notice_end #####
	
	
	// ##### QA_start #####
	// 문의글 insert
	void sendQA(CsVO vo);
	
	// 글 목록 조회
	List<CsVO> qAList(CsVO vo);
	
	// 글 상세 조회
	CsVO qAView(CsVO vo);
	
	// 문의글 수정
	void updateQA(CsVO vo);
	
	// 문의글 삭제
	void deleteQA(CsVO vo);
	// ##### QA_end #####
	

	// ##### popupChat_start #####
	// 채팅의 모든 정보 insert
	void insertMessage(CsVO vo);
	
	// insert한 채팅 정보 얻어오기
	List<CsVO> selectMessage(CsVO vo);
	
	// 내용 insert
	void insertContent(CsVO vo);
	
	// insert한 내용 얻어오기
	List<CsVO> selectContent(CsVO vo);
	// ##### popupChat_end #####
		
}
