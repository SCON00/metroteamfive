package com.metro.dao;

import java.util.List;

import com.metro.domain.CsVO;

public interface CsDAO {
	/*
	 * 고객관리 서비스용 모델 인터페이스
	 * 	- 메소드 추가 후 Impl 클래스에서 구현
	 */
	
	// ##### notice_start #####
	// 전체 글 목록 검색
	public List<CsVO> noticeAllList(CsVO vo);

	// 선택하거나 검색한 글 목록 검색
	public List<CsVO> noticeList(CsVO vo);
	
	// 글 상세 보기
	public CsVO noticeView(CsVO vo); 

	// 조회수 1씩 증가
	public void noticeCnt(CsVO vo);
	// ##### notice_end #####
	
	
	// ##### QA_start #####
	// 문의글 send
	public void sendQA(CsVO vo);
	
	// 글 목록 검색
	public List<CsVO> qAList(CsVO vo);
	
	// 글 상세 보기
	public CsVO qAView(CsVO vo);
	
	// 문의글 수정
	public void updateQA(CsVO vo);
	
	// 문의글 삭제
	public void deleteQA(CsVO vo);
	// ##### QA_end #####
	

	// ##### popupChat_start #####
	// 채팅 모든 정보 insert
	public void insertMessage(CsVO vo);
	
	// insert한 채팅 정보 얻어오기
	public List<CsVO> selectMessage(CsVO vo);
	
	// 내용 insert
	public void insertContent(CsVO vo);
	
	// insert한 내용 얻어오기
	public List<CsVO> selectContent(CsVO vo);
	// ##### popupChat_end #####
	
	
	
}
