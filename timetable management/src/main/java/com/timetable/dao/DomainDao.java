package com.timetable.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.timetable.entity.Domain;

public class DomainDao {
	
private Connection con;
	
	public DomainDao(Connection con) {
		this.con = con;
	}
	public List<Domain> getdomain()
	{
		List<Domain> list=new ArrayList<>();
		try {
			
			String query = "select * from domains";
			PreparedStatement pstmt = con.prepareStatement(query);
			
			
			ResultSet set = pstmt.executeQuery();
			while(set.next()) 
            {
				Domain domain = new Domain();
            	
            	//data from db
            	String name=set.getString("d_name");
            	int id = set.getInt("d_id");
            	//set to user object
            	domain.setDid(id);
            	domain.setDname(name);
            	list.add(domain);
            	
            }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
			
	}
	

}
