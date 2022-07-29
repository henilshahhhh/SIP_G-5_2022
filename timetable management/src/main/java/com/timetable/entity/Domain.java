package com.timetable.entity;

public class Domain {
	private int did;
	private String dname;
	public Domain(int did, String dname) {
		super();
		this.did = did;
		this.dname = dname;
	}
	public Domain() {
		super();
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	
	

}
