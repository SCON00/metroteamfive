package com.metro.service;

import java.util.List;

import com.metro.domain.CsVO;
import com.metro.domain.MemberVO;
import com.metro.domain.StationVO;
import com.metro.domain.TrainVO;

public interface MgtService {
	
	/*
	 * 관리자모듈 서비스 인터페이스
	 */
	int updateLines();

	int addKey(String apiKey);				// api key 등록
	
	List<MemberVO> getMembers();			// 회원 정보 조회

	List<StationVO> getStations();			// 역 정보 조회

	List<CsVO> getNotice();					// 공지사항 조회

	String getExitInfo(String stationCode);	// 출구정보 조회

	String getStations(String searchWord, int page, String line);	// 역 정보 검색

	String getStationCode(String stationCode);	// 역 코드 우선 순위 조회

	List<StationVO> getStations(int page);	// PAGING list

	List<TrainVO> getSchedule();			// 스케줄 조회
}
