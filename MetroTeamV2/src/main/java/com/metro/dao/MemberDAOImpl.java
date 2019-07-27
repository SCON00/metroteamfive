package com.metro.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.metro.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public MemberVO midCheck(MemberVO vo) {
		// TODO Auto-generated method stub
		System.out.println("======> mybatis midCheck 호출ㄹㄹㄹㄹ");
		return mybatis.selectOne("member.midCheck", vo);
		
	}
	
	public MemberVO login(MemberVO vo) {
		System.out.println("======> 로그인에서 mybatis midCheck 호출ㄹㄹㄹㄹ");
		MemberVO midCheckVo =  mybatis.selectOne("member.midCheck", vo);
		if(midCheckVo != null) {
			System.out.println("====> mybatis login 호출1222");
			midCheckVo.setPass(vo.getPass());
			MemberVO loginResultVo = mybatis.selectOne("member.login", midCheckVo);
			if(loginResultVo != null) {
				System.out.println("/////////////////////////////////////////");
				return loginResultVo;
			}
			midCheckVo.setPass(null);
			return midCheckVo;
		}
		return midCheckVo;
	}
	
	public void signup(MemberVO vo) {
		System.out.println("======> mybatis signup 호출");
		mybatis.insert("member.signup", vo);
	}
	
	public void updateProfile(MemberVO vo) {
		System.out.println("=======> mybatis updateProfile 호출");
		mybatis.update("member.updateProfile", vo);
	}
	
	public MemberVO formCheck(MemberVO vo) {
		System.out.println("=======> mybatis formCheck 호출");
		return mybatis.selectOne("member.formCheck", vo);
	}
	
	public List getFavoriteList(String mid){
		System.out.println("======> mybatis getFavoriteList 호출");
		return mybatis.selectList("member.getFavoriteList", mid);
	}
	
	public void editFavorite(String mid, List<String> list){
		System.out.println("===> mybatis editFavorite 호출");
		for(int i=0; i<list.size(); i++) {
			String scode = list.get(i);
				List codeList = mybatis.selectList("member.getStationCodeByScode", scode);
				for(int j=0; j<codeList.size(); j++) {
					System.out.println(codeList.get(j));
					Map realStationCode = (Map)codeList.get(j);
					Map map = new HashMap();
					map.put("mid", mid);
					map.put("station_code", realStationCode.get("STATION_CODE"));
					mybatis.delete("member.editFavorite", map);
				}

			
			
		}
	}
	
	public List getHistoryList(String mid){
		System.out.println("====> mybatis getHistoryList 호출");
		return mybatis.selectList("member.getHistoryList", mid);
	}
	
	public void editHistory(String mid, List<String> list) {
		System.out.println("====> mybatis.editHistory 호출");
		for(int i=0; i<list.size(); i++) {
			Map map = new HashMap();
			map.put("mid", mid);
			map.put("sid", list.get(i));
			mybatis.delete("member.editHistory", map);
		}
	}
	
	public void addFavoriteList(String mid, String sname) {
		System.out.println("====> mybatis.addFavoriteList 호출");
		List list = mybatis.selectList("member.getStationCodeBySname", sname);
		System.out.println("여긴 ㄷ된ㄹㄹㅇㅇ"+list.get(0));
		
		for(int i=0; i<list.size(); i++) {
			Map sCode = (Map)list.get(i);
			Map map = new HashMap();
			map.put("mid", mid);
			map.put("station_code", sCode.get("STATION_CODE"));
			mybatis.insert("member.addFavoriteList", map);
		}
	}
	
	public void editFavoriteBySname(String mid, String sname) {
		System.out.println("=====> mybatis.editFavoriteBySname 호출");
		List list = mybatis.selectList("member.getStationCodeBySname", sname);
		for(int i=0; i<list.size(); i++) {
			Map sCode = (Map)list.get(i);
			Map map = new HashMap();
			map.put("mid", mid);
			map.put("station_code", sCode.get("STATION_CODE"));
			mybatis.delete("member.editFavorite", map);
		}
	}
}
 