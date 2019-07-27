package com.metro.service;

import java.util.List;

import com.metro.domain.MemberVO;

public interface MemberService {
	/*
	 * 회원정보관리 용 서비스 인터페이스
	 */
	
	public MemberVO midCheck(MemberVO vo);
	
	public MemberVO login(MemberVO vo);
	
	public void signup(MemberVO vo);
	
	public void updateProfile(MemberVO vo);
	
	public MemberVO formCheck(MemberVO vo);

	public List getFavoriteList(String mid);
	
	public void editFavorite(String mid, List<String> list);
	
	public List getHistoryList(String mid);
	
	public void editHistory(String mid, List<String> list);
	
	public void addFavoriteList(String mid, String sname);
	
	public void editFavoriteBySname(String mid, String sname);
}
