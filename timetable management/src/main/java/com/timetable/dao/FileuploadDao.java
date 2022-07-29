package com.timetable.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.timetable.entity.Fileupload;

public class FileuploadDao {
	private Connection con;
	
	public FileuploadDao(Connection con) {
		this.con = con;
	}
	public boolean uploadMyData(String date,String desc,String file) {
		boolean f = false;
		//System.out.println(Sname + " " + marks + " " + pType + " " + file);
		
		try {
			
			String qry = "insert into faculty(date,desce,file) values (?,?,?)";
			PreparedStatement pst = this.con.prepareStatement(qry);

			pst.setString(1, date);
			
			pst.setString(2, desc);
			pst.setString(3, file);
			System.out.println("VALUE OF F IS ::: " + f);

			if (pst.executeUpdate() != 0) {
				f = true;
			}

		} catch (Exception e) {
			System.out.println("Uploadation Fail");
			e.printStackTrace();

		}
		return f;
	}
	public ArrayList<Fileupload> getFacUploadation() {		
		ArrayList<Fileupload> list = new ArrayList<>();
		
		try {
			
			String qry = "SELECT * FROM faculty order by date desc";
			
			PreparedStatement pst = this.con.prepareStatement(qry);
			
			ResultSet set = pst.executeQuery();
			while (set.next()) {
				Fileupload c = new Fileupload(set.getString("date"),set.getString("desce"),set.getString("file"));
				list.add(c);
			}
			System.out.println("LIST IS : "+list);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("We Get Your data On Fileupload.");			
		}
		return list;
	}

}
