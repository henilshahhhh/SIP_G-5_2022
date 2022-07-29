package com.timetable.entity;

import javax.print.DocFlavor.STRING;

public class Users {
	private String uName;
	private String uEmail;
	private String uPass;
	private String uCpass;
	private String uDesig;
	private String Subc;
	

	public Users() {
		super();
	}
	

	public Users(String subc) {
		super();
		Subc = subc;
	}


	public Users(String uEmail, String subc) {
		super();
		this.uEmail = uEmail;
		Subc = subc;
	}


	public Users(String uName, String uEmail, String uPass, String uCpass, String uDesig, String subc) {
		super();
		this.uName = uName;
		this.uEmail = uEmail;
		this.uPass = uPass;
		this.uCpass = uCpass;
		this.uDesig = uDesig;
		Subc = subc;
	}

	@Override
	public String toString() {
		return "Users [uName=" + uName + ", uEmail=" + uEmail + ", uPass=" + uPass + ", uCpass=" + uCpass + ", uDesig="
				+ uDesig + ", did="  + "]";
	}

	public Users(String uName, String uEmail, String uPass, String uCpass, String uDesig) {
		super();
		this.uName = uName;
		this.uEmail = uEmail;
		this.uPass = uPass;
		this.uCpass = uCpass;
		this.uDesig = uDesig;

		
	}

	// getters and setters
	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuEmail() {
		return uEmail;
	}

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}

	public String getuPass() {
		return uPass;
	}

	public void setuPass(String uPass) {
		this.uPass = uPass;
	}

	public String getuCpass() {
		return uCpass;
	}

	public void setuCpass(String uCpass) {
		this.uCpass = uCpass;
	}

	public String getuDesig() {
		return uDesig;
	}

	public void setuDesig(String uDesig) {
		this.uDesig = uDesig;
	}

	public String getSubc() {
		return Subc;
	}

	public void setSubc(String subc) {
		Subc = subc;
	}
	

	

}
