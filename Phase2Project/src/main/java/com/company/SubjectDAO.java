package com.company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SubjectDAO {

	public int insertSub(SubjectPOJO sb) throws ClassNotFoundException, SQLException {
		Connection con=DbConnection.getConn();
		String sql="insert into subject values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sb.getSid());
		ps.setString(2, sb.getSname());
		return ps.executeUpdate();
	}
	public int updateSub(SubjectPOJO sb) throws ClassNotFoundException, SQLException{
		Connection con=DbConnection.getConn();
		String sql=("update subject set sname=? where sid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,sb.getSname());
		ps.setInt(2, sb.getSid());
		return ps.executeUpdate();
		
	}
	public int deleteSub(SubjectPOJO sb) throws ClassNotFoundException, SQLException {
		Connection con=DbConnection.getConn();
		String sql=("delete from subject where sid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sb.getSid());
	
		return ps.executeUpdate();
		
	}
	public List<SubjectPOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=DbConnection.getConn();
		List<SubjectPOJO> list=new ArrayList<SubjectPOJO>();
		String sql="select * from subject";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			SubjectPOJO pojo=new SubjectPOJO();
			pojo.setSid(rs.getInt(1));
			pojo.setSname(rs.getString(2));
			list.add(pojo);
		}
		
		return list;
		
	}
}
