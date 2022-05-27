package com.company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {

	public int insertStd(StudentPOJO sb) throws ClassNotFoundException, SQLException {
		Connection con=DbConnection.getConn();
		String sql="insert into students values(?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sb.getId());
		ps.setString(2, sb.getName());
	    ps.setString(3, sb.getDob());
	    ps.setString(4, sb.getAddress());
	    ps.setString(5, sb.getPhone());
	    ps.setString(6, sb.getClasses());
		
		return ps.executeUpdate();
	}
	public int updateStd(StudentPOJO sb) throws ClassNotFoundException, SQLException{
		Connection con=DbConnection.getConn();
		String sql=("update students set name=?,dob=?,address=?,phone=?,class=? where id=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,sb.getName());
		ps.setString(2, sb.getDob());
		ps.setString(3, sb.getAddress());
		ps.setString(4, sb.getPhone());
		ps.setString(5, sb.getClasses());
		ps.setInt(6, sb.getId());
		return ps.executeUpdate();
		
	}
	public int deleteStd(StudentPOJO sb) throws ClassNotFoundException, SQLException {
		Connection con=DbConnection.getConn();
		String sql=("delete from students where id=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sb.getId());
	
		return ps.executeUpdate();
		
	}
	public List<StudentPOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=DbConnection.getConn();
		List<StudentPOJO> list=new ArrayList<StudentPOJO>();
		String sql="select * from students";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			StudentPOJO pojo =new StudentPOJO();
			pojo.setId(rs.getInt(1));
			pojo.setName(rs.getString(2));
			pojo.setDob(rs.getString(3));
			pojo.setAddress(rs.getString(4));
			pojo.setPhone(rs.getString(5));
			pojo.setClasses(rs.getString(6));
			list.add(pojo);
		}
		
		return list;
		
	}
}