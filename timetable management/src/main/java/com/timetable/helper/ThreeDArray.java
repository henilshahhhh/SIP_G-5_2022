package com.timetable.helper;

import java.util.ArrayList;

public class ThreeDArray {
	String sname;
	String Fname;
	int id;
	int time;
	int isit;
	int credit;
	int sem;
	int workload;
	public ThreeDArray() {
		super();
		
	}
	
	
	
	
	
	public String getSname() {
		return sname;
	}





	public void setSname(String sname) {
		this.sname = sname;
	}





	public String getFname() {
		return Fname;
	}





	public void setFname(String fname) {
		Fname = fname;
	}





	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getIsit() {
		return isit;
	}
	public void setIsit(int isit) {
		this.isit = isit;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public int getSem() {
		return sem;
	}
	public void setSem(int sem) {
		this.sem = sem;
	}
	public int getWorkload() {
		return workload;
	}
	public void setWorkload(int workload) {
		this.workload = workload;
	}
	@Override
	public String toString() {
		return "ThreeDArray [sname=" + sname + ", Fname=" + Fname + ", id=" + id + ", time=" + time + ", isit=" + isit
				+ ", credit=" + credit + ", sem=" + sem + ", workload=" + workload + "]";
	}
	
	

}
