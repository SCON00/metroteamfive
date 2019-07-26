package com.metro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metro.dao.CsDAOImpl;
import com.metro.domain.CsVO;

@Service("csService")
public class CsServiceImpl implements CsService {

	@Autowired
	private CsDAOImpl csDAO;
	
	// ##### notice_start #####
	// 전체 글 목록 보기
	public List<CsVO> noticeAllList(CsVO vo){
		return csDAO.noticeAllList(vo);
	}

	// 선택학나 검색한 글 목록 보기
	public List<CsVO> noticeList(CsVO vo){
		return csDAO.noticeList(vo);
	}
	
	// 글 상세 보기
	public CsVO noticeView(CsVO vo) {
		return csDAO.noticeView(vo);
	}
	
	// 조회수 증가
	public void noticeCnt(CsVO vo) {
		csDAO.noticeCnt(vo);
	}
	// ##### noticce_end #####
	
	
	// ##### QA_start #####
	// 문의글 insert
	public void sendQA(CsVO vo) {
		csDAO.sendQA(vo);
	}
	
	// 글 목록 검색
	public List<CsVO> qAList(CsVO vo){
		return csDAO.qAList(vo);
	}
	
	// 글 상세 보기
	public CsVO qAView(CsVO vo) {
		return csDAO.qAView(vo);
	}
	
	// 문의글 수정
	public void updateQA(CsVO vo) {
		csDAO.updateQA(vo);
	}
	
	// 문의글 삭제
	public void deleteQA(CsVO vo) {
		csDAO.deleteQA(vo);
	}
	
	// ##### QA_end #####
	

	// ##### popupChat_start #####
	// 채팅의 모든 정보 insert
	public void insertMessage(CsVO vo) {
		csDAO.insertMessage(vo);
	}
	
	// insert한 채팅 정보 얻어오기
	public List<CsVO> selectMessage(CsVO vo){
		return csDAO.selectMessage(vo);
	}
	
	// 내용 insert
	public void insertContent(CsVO vo) {
		csDAO.insertContent(vo);
	}
	
	// insert한 내용 얻어오기
	public List<CsVO> selectContent(CsVO vo){
		return csDAO.selectContent(vo);
	}
	// ##### popupChat_end #####
		
}
