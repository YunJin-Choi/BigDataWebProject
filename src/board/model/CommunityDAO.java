package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import board.model.dto.CommunityDTO;
import dbutil.DBUtil;

public class CommunityDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static ArrayList<CommunityDTO> selectAllCommunity(String community) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CommunityDTO> boardList = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectAllCommunity"));
			pstmt.setString(1, community);
			rset = pstmt.executeQuery();
			boardList = new ArrayList<>();
			while (rset.next()) {
				boardList.add(new CommunityDTO(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getInt(5),
						rset.getString(6), rset.getInt(7), rset.getString(8), rset.getString(9), rset.getString(10), null));
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return boardList;
	}
	
	public static CommunityDTO selectCommunityById(String community, String num) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectCommunityById"));
			pstmt.setString(1, community);
			pstmt.setString(2, num);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				return new CommunityDTO(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getInt(5),
						rset.getString(6), rset.getInt(7), rset.getString(8), rset.getString(9), rset.getString(10), null);
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return null;
	}
	
	public static boolean createCommunity(String community, CommunityDTO board) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("createCommunity"));
			pstmt.setString(1, community);
			pstmt.setString(2, community);
			pstmt.setString(3, board.getTitle());
			pstmt.setString(4, board.getContents());
			pstmt.setString(5, board.getNickname());
			pstmt.setString(6, board.getBizType());
			pstmt.setString(7, board.getBizSize());
			pstmt.setString(8, board.getBizLocal());
			
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt);
		}
		return false;
	}
	
	public static boolean updateCommunity(String community, CommunityDTO board) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("updateCommunity"));
			pstmt.setString(1, community);
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getContents());
			pstmt.setInt(4, board.getNum());
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt);
		}
		return false;
	}
	
	public static boolean updateViewNum(String community, String num) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("updateViewNum"));
			pstmt.setString(1, community);
			pstmt.setString(2, num);
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt);
		}
		return false;
	}
	
	public static boolean deleteCommunity(String community, String num) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("deleteCommunity"));
			pstmt.setString(1, community);
			pstmt.setString(2, num);
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt);
		}
		return false;
	}
}
