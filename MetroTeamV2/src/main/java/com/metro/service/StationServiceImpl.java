package com.metro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metro.dao.StationDAO;
import com.metro.domain.StationVO;


@Service("stationService")
public class StationServiceImpl implements StationService {
	
	@Autowired
	private StationDAO stationDAO;
	
	@Override
	public String stationInfo(String stationName) {
		
		System.out.println(stationName + ": Service");
		String result = stationDAO.selectStationByName(stationName);
		return result;
	}
	
	@Override
	public List<StationVO> lineInfo(String lineNumber) {
		
		System.out.println(lineNumber + ": Service");
		
		List<StationVO> list = stationDAO.getLineInfo(lineNumber);
		
		System.out.println(list);
		
		return list;
	}
}
