package com.metro.domain;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

public class CsVO {
	
	
	/****************************/
	/******* notice_start ******/
	/****************************/
	private String nid;
	private String ntitle;
	private String ncontent;
	private String ndate;
	private String lno;
	private int cnt;
	
	// ===== setter =====
	public void setNid(String nid) {
		this.nid = nid;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}
	public void setNdate(String ndate) {
		this.ndate = ndate;
	}
	public void setLno(String lno) {
		this.lno = lno;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	// ===== getter =====
	public String getNid() {
		return nid;
	}
	public String getNtitle() {
		return ntitle;
	}
	public String getNcontent() {
		return ncontent;
	}
	public String getNdate() {
		return ndate;
	}
	public String getLno() {
		return lno;
	}
	public int getCnt() {
		return cnt;
	}
	/**************************/
	/******* notice_end *******/
	/**************************/
	
	
	
	
	
	/***********************/
	/******* QA_start ******/
	/***********************/
	private String qid;
	private String qcontent;
	private String qfile;
	private String qemail;
	private String category;
	private String state;
	private String mid;
	private String qdate;
	private long qsize;

	//*************************************************
	MultipartFile file;			// <input type="file">의 name으로 지정한 이름
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 파일 업로딩 작업
		if(!file.isEmpty()) {
			// 파일에 뭔가 있을 때 실행
			this.qfile = file.getOriginalFilename();
			this.qsize = file.getSize();
			
			// 경로를 만들어 저장
			File f = new File("D:\\mywork\\spring\\web\\MetroTeamTest\\src\\main\\webapp\\resources\\upload\\" + qfile);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	// ----- setter -----
	public void setQid(String qid) {
		this.qid = qid;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public void setQfile(String qfile) {
		this.qfile = qfile;
	}
	public void setQemail(String qemail) {
		this.qemail = qemail;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setState(String state) {
		this.state = state;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public void setQdate(String qdate) {
		this.qdate = qdate;
	}
	public void setQsize(long qsize) {
		this.qsize = qsize;
	}
	
	// ----- getter -----
	public String getQid() {
		return qid;
	}
	public String getQcontent() {
		return qcontent;
	}
	public String getQfile() {
		return qfile;
	}
	public String getQemail() {
		return qemail;
	}
	public String getCategory() {
		return category;
	}
	public String getState() {
		return state;
	}
	public String getMid() {
		return mid;
	}
	public String getQdate() {
		return qdate;
	}
	public long getQsize() {
		return qsize;
	}
	/*********************/
	/******* QA_end ******/
	/*********************/
	
	
	
	

	/***************************/
	/******* paging_start ******/
	/***************************/
	private int pageSize;		// 한 페이지에 보여줄 글 수
	private int pageBlock;		// 페이징 네비(블록) 사이즈
	private int pageNo;			// 페이지 번호
	private int startRowNo;		// 조회 시작 row 번호
	private int endRowNo;		// 조회 마지막 row 번호
	private int firstPageNo;	// 첫번째 페이지 번호
	private int finalPageNo;	// 마지막 페이지 번호
	private int prevPageNo;		// 이전 페이지 번호
	private int nextPageNo;		// 다음 페이지 번호
	private int startPageNo;	// 시작 페이징(네비 기준)
	private int endPageNo;		// 끝 페이지(네비 기준)
	private int totalCount;		// 게시 글 전체 수
	private String searchFiled;	// 검색 조건
	private String searchValue;	// 검색어

	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageBlock() {
		return pageBlock;
	}
	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getStartRowNo() {
		return startRowNo;
	}
	public void setStartRowNo(int startRowNo) {
		this.startRowNo = startRowNo;
	}
	public int getEndRowNo() {
		return endRowNo;
	}
	public void setEndRowNo(int endRowNo) {
		this.endRowNo = endRowNo;
	}
	public int getFirstPageNo() {
		return firstPageNo;
	}
	public void setFirstPageNo(int firstPageNo) {
		this.firstPageNo = firstPageNo;
	}
	public int getFinalPageNo() {
		return finalPageNo;
	}
	public void setFinalPageNo(int finalPageNo) {
		this.finalPageNo = finalPageNo;
	}
	public int getPrevPageNo() {
		return prevPageNo;
	}
	public void setPrevPageNo(int prevPageNo) {
		this.prevPageNo = prevPageNo;
	}
	public int getNextPageNo() {
		return nextPageNo;
	}
	public void setNextPageNo(int nextPageNo) {
		this.nextPageNo = nextPageNo;
	}
	public int getStartPageNo() {
		return startPageNo;
	}
	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}
	public int getEndPageNo() {
		return endPageNo;
	}
	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public String getSearchFiled() {
		return searchFiled;
	}
	public void setSearchFiled(String searchFiled) {
		this.searchFiled = searchFiled;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	
	private void makePaging() {
		// 기본 값 설정
		if(this.totalCount == 0) return;
		if(this.endPageNo == 0) this.setPageNo(1);		// 기본 페이지번호 -> 1로 지정
		if(this.pageSize == 0) this.setPageSize(5);		// 기본 페이지 리스트 사이즈 -> 5로 지정
		if(this.pageBlock == 0) this.setPageBlock(5);	// 기본 페이지 네비(블록) 사이즈 -> 5로 지정
		
		// 첫 페이지 - 마지막 페이지 계산
		int finalPage = (totalCount + (pageSize - 1)) / pageSize;	// 마지막 페이지
		this.setFirstPageNo(1);				// 첫 페이지 번호
		this.setFinalPageNo(finalPage);		// 마지막 페이지 번호
		
		// 이전 - 다음 페이지 계산
		boolean isNowFirst = pageNo == 1 ? true : false;			// 시작 페이지(전체)
		boolean isNowFinal = pageNo == finalPage ? true : false;	// 마지막 페이지(전체)
		if(isNowFirst) {
			this.setPrevPageNo(1);	// 이전 페이지 번호
		} else {
			this.setPrevPageNo(((pageNo - 1) < 1 ? 1 : (pageNo - 1)));	// 이전 페이지 번호
		}
		if(isNowFinal) {
			this.setNextPageNo(finalPage);	// 다음 페이지 번호
		} else {
			this.setNextPageNo(((pageNo + 1) > finalPage ? finalPage : (pageNo + 1)));	// 다음 페이지 번호
		}
		
		// 페이징 네비(블록) 계산
		int startPage = ((pageNo - 1) / pageBlock) * pageBlock + 1;		// 시작 페이지(네비 기준)
		int endPage = startPage + pageBlock - 1;						// 끝 페이지(네비 기준)
		if(endPage > finalPage) {			// 마지막 페이지(네비 기준) > 마지막 페이지 보다 큰 경우
			endPage = finalPage;
		}
		this.setStartPageNo(startPage);		// 시작 페이지(네비 기준)
		this.setEndPageNo(endPage);			// 끝 페이지(네비 기준)
		
		int startRowNo = ((pageNo - 1) * pageSize) + 1;
		int endRowNo = pageNo * pageSize;
		setStartRowNo(startRowNo);
		setEndRowNo(endRowNo);
	}
	/*************************/
	/******* paging_end ******/
	/*************************/
	
}
