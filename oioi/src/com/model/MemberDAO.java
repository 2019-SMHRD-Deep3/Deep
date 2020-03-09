package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	
	
	private Connection conn;    
	private PreparedStatement psmt;
	private ResultSet rs;

	
	private void getConnection() {  // DB �����ϴ� 1, 2 �ܰ�� �Ź� �Ȱ����Ƿ� �żҵ�� ������
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		
	}
	
	
	private void close() {  // DB �����ϴ� 4�ܰ�� �Ź� �Ȱ����Ƿ� �żҵ�� ������
		try {
			if (rs != null)
				rs.close();
			if(psmt != null) 
				psmt.close();
			if(conn != null)	
				conn.close();			
		
		} catch (SQLException e) {    // ��� �����ͺ��̽��� ���õ� ������ ���� �� ����� (SQL)
			e.printStackTrace();
		}
	}


	public void join(MemberDTO dto) {  // ȸ������
		
		try {
			getConnection();
			String sql = "insert into member values(?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getNation());
			psmt.setString(5, dto.getEmail());

			psmt.executeUpdate(); 
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	
	}


	public MemberDTO login(MemberDTO dto) {
		
		MemberDTO info = null;                                        
		
		String l_id = null;
		String l_pw = null;
		String l_name = null;
		String l_nation = null;
		String l_email = null;
		

		try {
			getConnection();    
			String sql = "Select * from member where id = ? and pw = ? ";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				l_id = rs.getString(1);
				l_pw = rs.getString(2);
				l_name = rs.getString(3);
				l_nation = rs.getString(4);
				l_email = rs.getString(5);
				
				info = new MemberDTO(l_id, l_pw, l_name, l_nation, l_email);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return info;
	}
	
	
	
	
	

}
