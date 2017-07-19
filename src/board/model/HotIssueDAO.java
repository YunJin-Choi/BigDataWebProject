package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import board.model.dto.HotIssueDTO;
import dbutil.DBUtil;

public class HotIssueDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static ArrayList<HotIssueDTO> selectHotIssueByDate(String date) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<HotIssueDTO> hotIssueList = null;
		
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectHotIssueByDate"));
			pstmt.setString(1, date);
			rset = pstmt.executeQuery();
			hotIssueList = new ArrayList<>();
			while (rset.next()) {
				hotIssueList.add(new HotIssueDTO(rset.getInt(1), rset.getString(2), rset.getInt(3),
						rset.getString(4), rset.getString(5), rset.getString(6)));
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return hotIssueList;
	}

	public static ArrayList<HotIssueDTO> selectHotIssuePreDate(String date) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<HotIssueDTO> hotIssueList = null;
		
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectHotIssuePreDate"));
			pstmt.setString(1, date);
			rset = pstmt.executeQuery();
			hotIssueList = new ArrayList<>();
			while (rset.next()) {
				hotIssueList.add(new HotIssueDTO(rset.getInt(1), rset.getString(2), rset.getInt(3),
						rset.getString(4), rset.getString(5), rset.getString(6)));
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return hotIssueList;
	}
	
	public static ArrayList<HotIssueDTO> selectHotIssuePostDate(String date) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<HotIssueDTO> hotIssueList = null;
		
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectHotIssuePostDate"));
			pstmt.setString(1, date);
			rset = pstmt.executeQuery();
			hotIssueList = new ArrayList<>();
			while (rset.next()) {
				hotIssueList.add(new HotIssueDTO(rset.getInt(1), rset.getString(2), rset.getInt(3),
						rset.getString(4), rset.getString(5), rset.getString(6)));
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return hotIssueList;
	}
	
}
