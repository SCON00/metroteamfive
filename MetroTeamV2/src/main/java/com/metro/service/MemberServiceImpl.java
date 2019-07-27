package com.metro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metro.dao.MemberDAO;
import com.metro.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO midCheck(MemberVO vo) {
		return memberDAO.midCheck(vo);
	}
	
	public MemberVO login(MemberVO vo) {
		return memberDAO.login(vo);
	}
	
	public void signup(MemberVO vo) {
		memberDAO.signup(vo);
	}
	
	public void updateProfile(MemberVO vo) {
		memberDAO.updateProfile(vo);
	}
	
	public MemberVO formCheck(MemberVO vo) {
		return memberDAO.formCheck(vo);
	}
	
	public List getFavoriteList(String mid){
		return memberDAO.getFavoriteList(mid);
	}
	
	public void editFavorite(String mid, List<String> list){
		memberDAO.editFavorite(mid, list);
	}
	
	@Override
	public List getHistoryList(String mid) {
		return memberDAO.getHistoryList(mid);
	}
	
	public void editHistory(String mid, List<String> list) {
		memberDAO.editHistory(mid, list);
	}
	
	public void addFavoriteList(String mid, String sname) {
		memberDAO.addFavoriteList(mid, sname);
	}
	
	public void editFavoriteBySname(String mid, String sname) {
		memberDAO.editFavoriteBySname(mid, sname);
	}
}
 