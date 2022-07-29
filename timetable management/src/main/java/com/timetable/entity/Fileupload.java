package com.timetable.entity;

public class Fileupload {
	private String date;
	private String desc;
	private String file;
	public Fileupload(String date, String desc, String file) {
		super();
		this.date = date;
		this.desc = desc;
		this.file = file;
	}
	
	public Fileupload() {
		super();
	}

	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	
	
	

}
