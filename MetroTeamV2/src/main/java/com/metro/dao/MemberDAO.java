package com.metro.dao;

import java.util.List;

import com.metro.domain.FavoriteStationVO;
import com.metro.domain.MemberVO;

public interface MemberDAO {
	/*
	 * 회원관리 서비스용 모델 인터페이스
	 * 	- 메소드 추가 후 Impl 클래스에서 구현
	 */
	
	/*
	 * mid 중복 체크
	 */
	public MemberVO midCheck(MemberVO vo); 
	
	public MemberVO login(MemberVO vo);
	
	public void signup(MemberVO vo);
	
	public void updateProfile(MemberVO vo);
	
	public MemberVO formCheck(MemberVO vo);

	public List<FavoriteStationVO> getFavoriteList(String mid);

	public void editFavorite(String mid, List<String> list);
	
	public List getHistoryList(String mid);
	
	public void editHistory(String mid, List<String> list);
}
