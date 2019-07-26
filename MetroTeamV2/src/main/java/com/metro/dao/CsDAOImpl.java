package com.metro.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.metro.domain.CsVO;

@Repository("csDAO")
public class CsDAOImpl implements CsDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// ##### notice_start #####
	// 전체 글 목록 검색
	public List<CsVO> noticeAllList(CsVO vo) {
		System.out.println("===> Mybatis noticeAllList() 호출");
		return mybatis.selectList("cs.noticeAllList", vo);
	}

	// 선택하거나 검색한 글 목록 검색
	public List<CsVO> noticeList(CsVO vo) {
		System.out.println("===> Mybatis noticeList() 호출");
		return mybatis.selectList("cs.noticeList", vo);
	}

	// 글 상세 보기
	public CsVO noticeView(CsVO vo) {
		System.out.println("===> Mybatis noticeView() 호출");
		return (CsVO) mybatis.selectOne("cs.noticeView", vo);
	}

	// 조회수 1씩 증가
	public void noticeCnt(CsVO vo) {
		System.out.println("===> Mybatis getNoticeCnt() 호출");
		mybatis.update("cs.noticeCnt", vo);
	}
	// ##### notice_end #####
	
	
	// ##### QA_start #####
	// 문의글 insert
	public void sendQA(CsVO vo) {
		System.out.println("===> Mybatis sendQA() 호출");
		mybatis.insert("cs.sendQA", vo);
	}
	
	// 글 목록 검색
	public List<CsVO> qAList(CsVO vo){
		System.out.println("===> Mybatis qAList() 호출");
		return mybatis.selectList("cs.qAList", vo);
	}
	
	// 글 상세 보기
	public CsVO qAView(CsVO vo) {
		System.out.println("===> Mybatis qAView() 호출 ");
		return (CsVO) mybatis.selectOne("cs.qAView", vo);
	}
	
	// 문의글 수정
	public void updateQA(CsVO vo) {
		System.out.println("===> Mybatis updateQA() 호출");
		mybatis.update("cs.updateQA", vo);
	}
	
	// 문의글 삭제
	public void deleteQA(CsVO vo) {
		System.out.println("===> Mybatis deleteQA() 호출");
		mybatis.delete("cs.deleteQA", vo);
	}
	
	// ##### QA_end #####
	

	// ##### popupChat_start #####
	// 채팅의 모든 정보 insert
	public void insertMessage(CsVO vo) {
		System.out.println("===> Mybatis insertMessage() 호출");
		mybatis.insert("cs.insertMessage", vo);
	}
	
	// insert한 채팅 정보 얻어오기
	public List<CsVO> selectMessage(CsVO vo){
		System.out.println("===> Mybatis selectMessage() 호출");
		return mybatis.selectList("cs.selectMessage", vo);
	}
	
	// 내용 insert
	public void insertContent(CsVO vo) {
		System.out.println("===. Mybatis insertContent() 호출");
		mybatis.insert("cs.insertContent", vo);
	}
	
	// insert한 내용 얻어오기
	public List<CsVO> selectContent(CsVO vo){
		System.out.println("===> Mybatis selectContent() 호출");
		return mybatis.selectList("cs.selectContent", vo);
	}
	// ##### popupChat_end #####
		

}
