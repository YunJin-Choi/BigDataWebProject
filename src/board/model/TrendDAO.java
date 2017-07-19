package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import board.model.dto.TrendDTO;
import dbutil.DBUtil;

public class TrendDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static ArrayList<TrendDTO> selectAllTrend() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<TrendDTO> trendList = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectAllTrend"));
			rset = pstmt.executeQuery();
			trendList = new ArrayList<>();
			while (rset.next()) {
				trendList.add(new TrendDTO(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4)));
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return trendList;
	}
	
	public static TrendDTO selectTrendById(String num) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectTrendById"));
			pstmt.setString(1, num);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				return new TrendDTO(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4));
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return null;
	}
}
