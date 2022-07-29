package com.timetable.entity;

public class Subject {

	private int s_id;
	private String sname;
	private int sem;
	private int scredit;
	private String fname;
	private int workload;
	private String workload1;
	

	public Subject(int s_id, String sname, int sem, int scredit, String fname) {
		super();
		this.s_id = s_id;
		this.sname = sname;
		this.sem = sem;
		this.scredit = scredit;
		this.fname = fname;
		
	}
	

	

	public Subject(String sname, String fname, String workload1) {
		super();
		this.sname = sname;
		this.fname = fname;
		this.workload1 = workload1;
	}




	



	@Override
	public String toString() {
		return "Subject [s_id=" + s_id + ", sname=" + sname + ", sem=" + sem + ", scredit=" + scredit + ", fname="
				+ fname + ", workload=" + workload + ", workload1=" + workload1 + "]";
	}



	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public Subject(int s_id, String sname, int sem, int scredit) {
		super();
		this.s_id = s_id;
		this.sname = sname;
		this.sem = sem;
		this.scredit = scredit;
	}

	
	

	public Subject(String sname, int sem, int scredit) {
		super();
		this.sname = sname;
		this.sem = sem;
		this.scredit = scredit;
		
	}

	// getter setter
	public Subject() {
		super();
	}

	public int getS_id() {
		return s_id;
	}

	public void setS_id(int s_id) {
		this.s_id = s_id;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public int getSem() {
		return sem;
	}

	public void setSem(int sem) {
		this.sem = sem;
	}

	public int getScredit() {
		return scredit;
	}

	public void setScredit(int scredit) {
		this.scredit = scredit;
	}




	public int getWorkload() {
		return workload;
	}




	public void setWorkload(int workload) {
		this.workload = workload;
	}

	public String getWorkload1() {
		return workload1;
	}




	public void setWorkload1(String workload1) {
		this.workload1 = workload1;
	}



		
	
	

	

}
