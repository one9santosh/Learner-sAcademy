package com.company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherDAO {

	public int insertTch(TeacherPOJO sb) throws ClassNotFoundException, SQLException {
		Connection con=DbConnection.getConn();
		String sql="insert into teacher values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sb.getTid());
		ps.setString(2, sb.getTname());
		return ps.executeUpdate();
	}
	public int updateTch(TeacherPOJO sb) throws ClassNotFoundException, SQLException{
		Connection con=DbConnection.getConn();
		String sql=("update teacher set tname=? where tid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,sb.getTname());
		ps.setInt(2, sb.getTid());
		return ps.executeUpdate();
		
	}
	public int deleteTch(TeacherPOJO sb) throws ClassNotFoundException, SQLException {
		Connection con=DbConnection.getConn();
		String sql=("delete from teacher where tid=? ");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, sb.getTid());
	
		return ps.executeUpdate();
		
	}
	public List<TeacherPOJO> display() throws ClassNotFoundException, SQLException{
		Connection con=DbConnection.getConn();
		List<TeacherPOJO> list=new ArrayList<TeacherPOJO>();
		String sql="select * from teacher";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			TeacherPOJO pojo=new TeacherPOJO();
			pojo.setTid(rs.getInt(1));
			pojo.setTname(rs.getString(2));
			list.add(pojo);
		}
		
		return list;
		
	}
}
