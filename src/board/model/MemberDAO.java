package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

import dbutil.DBUtil;

public class MemberDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static boolean selectMemberByEmail(String email) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectMemberByEmail"));
			pstmt.setString(1, email);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return false;
	}
	
	public static boolean selectMemberByNickname(String nickname) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectMemberByNickname"));
			pstmt.setString(1, nickname);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return false;
	}
	
	public static boolean loginMember(String email, String password) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("loginMember"));
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return false;
	}
}
