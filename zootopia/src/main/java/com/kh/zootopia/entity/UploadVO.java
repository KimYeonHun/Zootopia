package com.kh.zootopia.entity;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

//VO : Value Object(DTO보다 넓은 개념)
public class UploadVO {
	private String uploader;
	private List<MultipartFile> f;
	
	//파일 유무를 반환하는 메소드
	public boolean isFileExist() {
		if(f == null)//저장소가 존재하지 않으면 없다고 보겠다
			return false;
		
		if(f.size() < 1)//파일 개수가 0개면 없다고 보겠다
			return false;
		
		if(f.get(0).isEmpty())//첫번째 파일이 비어있으면 없다고 보겠다
			return false;
		
		return true;//나머지는 있다고 보겠다
	}
	
	public String getUploader() {
		return uploader;
	}
	public void setUploader(String uploader) {
		this.uploader = uploader;
	}
	public List<MultipartFile> getF() {
		return f;
	}
	public void setF(List<MultipartFile> f) {
		this.f = f;
	}
	public UploadVO() {
		super();
	}
}