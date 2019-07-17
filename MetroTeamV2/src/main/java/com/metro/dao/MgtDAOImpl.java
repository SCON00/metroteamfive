package com.metro.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.metro.domain.CsVO;
import com.metro.domain.MemberVO;
import com.metro.domain.StationVO;

@Repository("mgtDAO")
public class MgtDAOImpl implements MgtDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int insertKey(String apiKey) {
		
		int result = mybatis.insert("mgt.insertKey", apiKey);
		return result;
	}

	@Override
	public List<MemberVO> selectAllMember() {
		return mybatis.selectList("mgt.selectMember");
	}

	@Override
	public List<StationVO> selectAllStation() {
		return mybatis.selectList("mgt.selectStation");
		
	}

	@Override
	public List<CsVO> selectAllNotice() {
		
		return mybatis.selectList("mgt.selectNotice");
	}

	@Override
	public Map selectExitInfo(String stationCode) {
		List<String> list = mybatis.selectList("mgt.selectExitNumber", stationCode);
		
		Map dataMap = new HashMap(); 
		for(String s : list) {
			Map map = new HashMap();
			map.put("stationCode", stationCode);
			map.put("exitNumber", s);
			
			List<String> data = mybatis.selectList("mgt.selectExitInfo", map);
			dataMap.put(s, data.toString());
		}
		return dataMap;
	}

	
}
