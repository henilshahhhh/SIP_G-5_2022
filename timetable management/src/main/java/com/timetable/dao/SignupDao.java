package com.timetable.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.timetable.entity.Subject;
import com.timetable.entity.Users;

public class SignupDao {

	static Connection con;
	//constructor
	public SignupDao(Connection con) {

		this.con = con;

	}
	//method to insert data to database
	public boolean insertData(Users users) {

		boolean flag = false;
		
		try {
			
			//if(users.getSubject()!=null)
			//{
			String query = "insert into users(uid,uname,password,desg) values (?,?,?,?)";
			PreparedStatement pstm = this.con.prepareStatement(query);
			
			
			pstm.setString(1, users.getuEmail());
			pstm.setString(2, users.getuName());
			pstm.setString(3, users.getuPass());
			pstm.setString(4, users.getuDesig());
			
			
			
			
			if(pstm.executeUpdate()!= 0) {
				flag = true;
				
			//}
			}
			
		}
		catch(Exception e){
			
			System.out.println("INSERTION FAIL");
			e.printStackTrace();
		}
		return flag;
	}
	
	//get user by usermail and user password:
	public Users getUserByEmailAndPassword(String email,String password,String desg)
	{
		Users user = null;
		
		try {
			
			String query = "select * from users where uid=? and password=? and desg=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			pstmt.setString(3, desg);
			
			//Answer on table form
            ResultSet set = pstmt.executeQuery();
            
            
            if(set.next()) 
            {
            	user = new Users();
            	
            	//data from db
            	String name=set.getString("uname");
            	//set to user object
            	user.setuName(name);
            	user.setuEmail(set.getString("uid"));
            	user.setuPass(set.getString("password"));
            	user.setuDesig(set.getString("desg"));
            	
            }
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return user;
		
	}
	public List<Users> getfac(){
		List<Users> list=new ArrayList<>();
		try {
			
			String query = "select * from users where desg='faculty'";
			PreparedStatement pstmt = con.prepareStatement(query);
			
			
			ResultSet set = pstmt.executeQuery();
			while(set.next()) 
            {
				Users user = new Users();
            	
            	//data from db
            	String name=set.getString("uname");
            	user.setuEmail(set.getString("uid"));
            	//set to user object
            	user.setuName(name);
            	//user.setSubject(set.getString("subject"));

            	list.add(user);
            	
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
			
	}
	public boolean deletefac(String id)
	{
		boolean f=false;
		try {
			
			String qry = "delete from users where uname=?";
			PreparedStatement pstmt=this.con.prepareStatement(qry);
			
			
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			f=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public Users selectdom(String email) {
		Users user = null;
		try {
			
			//String qry = "SELECT d_id FROM users WHERE uid=?";
			String qry = "SELECT * FROM users WHERE uid=?";
			PreparedStatement pstmt=con.prepareStatement(qry);
			
			pstmt.setString(1, email);
			
			
			
			
            ResultSet set = pstmt.executeQuery();
            
            if(set==null) {
            	System.out.println("set is null " + set );
            }
            else {
            	System.out.println("set isnot null " + set );

            }
            set.next();

            
            	user = new Users();
                System.out.println("bbbbbbg"+user);

            	//data from db
            	String name=set.getString("uname");
            	//set to user object
            	
            	user.setuName(name);
            	user.setuEmail(set.getString("uid"));
            	user.setuPass(set.getString("password"));
            	user.setuDesig(set.getString("desg"));
            	
            System.out.println("sgsgsg"+user);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	public boolean savechoice(String id,String sub)
	{
		boolean f=false;
		try {
			
			String qry = "UPDATE users SET subchoice=? WHERE uid=?";
			PreparedStatement pstmt=this.con.prepareStatement(qry);
			
			pstmt.setString(2,id);
			pstmt.setString(1,sub );
			
			pstmt.executeUpdate();
			f=true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public ArrayList<String> getdata(String subject){
		ArrayList<String> UserList = new ArrayList<>();
		
		try {
			String u = "SELECT * FROM users WHERE subchoice LIKE '%"+subject+"%'";
			PreparedStatement pstmt = this.con.prepareStatement(u);
			
			ResultSet set = pstmt.executeQuery();
			while(set.next()) {
				UserList.add(set.getString("uname"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return UserList;
	}
	public boolean subchoice(String id)
	{
		boolean f=false;
		try {
			
			String qry = "select subchoice from users where uid=?";
			PreparedStatement pstmt=this.con.prepareStatement(qry);
			
			
			pstmt.setString(1, id);
			
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			String it = rs.getString(1);
			System.out.println("itsis"+it);
			if(it==null) {
				f = false;
			}else {
				f = true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
		
	}

