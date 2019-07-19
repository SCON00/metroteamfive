package com.metro.service;

import java.util.List;

import com.metro.domain.StationVO;

public interface StationService {

	/*
	 * 역 정보 서비스 인터페이스
	 */
	String stationInfo(String stationName);
	
	List<StationVO> lineInfo(String lineNumber);
	
}
