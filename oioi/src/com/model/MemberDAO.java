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

	public static MemberDAO dao;
	
	public static MemberDAO getDAO() {
		if(dao== null) {
			dao = new MemberDAO();
		}
		return dao;
	}
	private void getConnection() {  // DB 연동하는 1, 2 단계는 매번 똑같으므로 매소드로 만들어둠
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
	
	
	private void close() {  // DB 연동하는 4단계는 매번 똑같으므로 매소드로 만들어둠
		try {
			if (rs != null)
				rs.close();
			if(psmt != null) 
				psmt.close();
			if(conn != null)	
				conn.close();			
		
		} catch (SQLException e) {    // 모든 데이터베이스에 관련된 오류를 전부 다 잡아줌 (SQL)
			e.printStackTrace();
		}
	}


	public void join(MemberDTO dto) {  // 회원가입
		
		try {
			getConnection();
			String sql = "insert into user_member values(?,?,?,?)";

			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getEmail());

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
		String l_email = null;
		

		try {
			getConnection();    
			String sql = "Select * from user_member where id = ? and pw = ? ";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				l_id = rs.getString(1);
				l_pw = rs.getString(2);
				l_name = rs.getString(3);
				l_email = rs.getString(4);
				
				info = new MemberDTO(l_id, l_pw, l_name, l_email);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return info;
	}
	public int update(MemberDTO dto) {
		int cnt = 0;
		try {
			getConnection(); // 연결
			String sql = "update user_member set pw = ?, name = ? where email = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPw()); // 물음표값 채워주기. 순서 지킬 것. 이상하게 들어가니까
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getEmail()); // 이런 이메일을 가진 사람의 정보를 변경시킬것이기 때문에 써줘야 함.
			
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}


}
