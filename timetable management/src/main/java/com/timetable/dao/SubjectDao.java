package com.timetable.dao;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.timetable.entity.Subject;
import com.timetable.helper.ThreeDArray;


public class SubjectDao {
		
	private Connection con;
	
	public SubjectDao(Connection con) {
		this.con = con;
	}
	
	public boolean saveSub(Subject subject)
	{
		boolean f=false;
		try {
			
			String qry = "insert into subject(sname,sem,scredit) values (?,?,?)";
			PreparedStatement pstmt=this.con.prepareStatement(qry);
			
			pstmt.setString(1, subject.getSname());
			pstmt.setInt(2, subject.getSem());
			pstmt.setInt(3, subject.getScredit());
			
			
			pstmt.executeUpdate();
			f=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public List<Subject> getsubject()
	{
		List<Subject> list=new ArrayList<>();
		try {
			
			String query = "select * from subject";
			PreparedStatement pstmt = con.prepareStatement(query);
			
			
			ResultSet set = pstmt.executeQuery();
			while(set.next()) 
            {
				Subject subject = new Subject();
            	
            	//data from db
            	String name=set.getString("sname");
            	subject.setS_id(set.getInt("s_id"));
            	//set to user object
            	subject.setSname(name);
            	subject.setSem(set.getInt("sem"));

            	list.add(subject);
            	
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
			
	}
	public boolean deleteSub(int id)
	{
		boolean f=false;
		try {
			
			String qry = "delete from subject where s_id=?";
			PreparedStatement pstmt=this.con.prepareStatement(qry);
			System.out.println("henil-------" + id);
			
			pstmt.setInt(1, id);
			
			pstmt.executeUpdate();
			f=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	/*
	 * public ArrayList<ThreeDArray> getsemwise(int sem) { ArrayList<ThreeDArray>
	 * list=new ArrayList<>(); try {
	 * 
	 * String query = "SELECT * FROM SUBJECT WHERE sem=?"; PreparedStatement pstmt =
	 * con.prepareStatement(query);
	 * 
	 * pstmt.setInt(1, sem); ResultSet set = pstmt.executeQuery(); while(set.next())
	 * { ThreeDArray thd = new ThreeDArray();
	 * 
	 * //data from db String name=set.getString("sname");
	 * thd.setId(set.getInt("s_id")); //set to user object thd.setSname(name);
	 * thd.setSem(set.getInt("sem")); thd.setFname(set.getString("fname"));
	 * thd.setCredit(set.getInt("scredit"));
	 * thd.setWorkload(set.getInt("workload"));
	 * 
	 * 
	 * list.add(thd);
	 * 
	 * } }catch(Exception e) { e.printStackTrace(); } return list;
	 * 
	 * }
	 */
	public ArrayList<Subject> getsemwise(int sem)
	{
		ArrayList<Subject> list=new ArrayList<>();
		try {
			
			String query = "SELECT * FROM SUBJECT WHERE sem=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, sem);
			ResultSet set = pstmt.executeQuery();
			while(set.next()) 
            {
				Subject subject = new Subject();
            	
            	//data from db
            	String name=set.getString("sname");
            	String fname = set.getString("fname");
            	subject.setS_id(set.getInt("s_id"));
            	//set to user object
            	subject.setSname(name);
            	subject.setFname(fname);
            	subject.setSem(set.getInt("sem"));
            	
            	list.add(subject);
            	
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
			
	}
	
	public List<Subject> getsubjectbystatus()
	{
		List<Subject> list=new ArrayList<>();
		try {
			
			String query = "select * from subject where status=0";
			PreparedStatement pstmt = con.prepareStatement(query);
			
			
			ResultSet set = pstmt.executeQuery();
			while(set.next()) 
            {
				Subject subject = new Subject();
            	
            	//data from db
            	String name=set.getString("sname");
            	subject.setS_id(set.getInt("s_id"));
            	
            	//set to user object
            	subject.setSname(name);
            	subject.setSem(set.getInt("sem"));
            
            	list.add(subject);
            	
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
			
	}
	public boolean savestatus(String subject)
	{
		boolean f=false;
		try {
			
			String qry = "UPDATE SUBJECT SET STATUS=1 WHERE sname=?";
			PreparedStatement pstmt=this.con.prepareStatement(qry);
			
			
			pstmt.setString(1, subject);
			pstmt.executeUpdate();
			f=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public ArrayList<ThreeDArray> getallsubject()
	{
		ArrayList<ThreeDArray> list=new ArrayList<>();
		try {
			
			String query = "select * from subject";
			PreparedStatement pstmt = con.prepareStatement(query);
			
			
			ResultSet set = pstmt.executeQuery();
			while(set.next()) 
            {
				ThreeDArray thd = new ThreeDArray();
            	
            	//data from db
            	String name=set.getString("sname");
            	thd.setId(set.getInt("s_id"));
            	//set to user object
            	thd.setSname(name);
            	thd.setSem(set.getInt("sem"));
            	thd.setFname(set.getString("fname"));
            	thd.setCredit(set.getInt("scredit"));
            	thd.setWorkload(set.getInt("workload"));
            
            	list.add(thd);
            	
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
			
	}
	public boolean savefac(String fname,String workload1,String sn)
	{
		boolean f=false;
		try {
			
			String qry = "UPDATE SUBJECT SET fname=?,workload1=? WHERE sname=?";
			PreparedStatement pstmt=this.con.prepareStatement(qry);
			
			pstmt.setString(1, fname);
			pstmt.setString(2, workload1);
	
			pstmt.setString(3, sn);
			System.out.println("sn="+sn+"workbalance:"+workload1+"lolfn:"+fname);
			
			pstmt.executeUpdate();
			f=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public List<Subject> getfacsu()
	{
		List<Subject> list=new ArrayList<>();
		try {
			
			String query = "SELECT sname,fname,workload1 FROM subject WHERE fname IS NOT NULL";
			PreparedStatement pstmt = con.prepareStatement(query);
			
			
			ResultSet set = pstmt.executeQuery();
			while(set.next()) 
            {
				Subject subject = new Subject();
            	
            	//data from db
            	String name=set.getString("sname");
            	String workload=set.getString("workload1");
            	String fname=set.getString("fname");
            	
            	//set to user object
            	subject.setSname(name);
            	subject.setWorkload1(workload);
            	subject.setFname(fname);
            	list.add(subject);
            	
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
			
	}

	
	

	
	
}
