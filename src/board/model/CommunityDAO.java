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
			pstmt = conn.prepareStatement("SELECT * FROM "+community+" order by writing_no desc");
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
			pstmt = conn.prepareStatement("SELECT * FROM "+community+" WHERE writing_no=?");
			pstmt.setString(1, num);
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
			
			pstmt = conn.prepareStatement("INSERT INTO "+community+	" VALUES("+community+"_writing_no_seq.nextval,?,?,?,0,sysdate,0,?,?,?)");
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContents());
			pstmt.setString(3, board.getNickname());
			pstmt.setString(4, board.getBizType());
			pstmt.setString(5, board.getBizSize());
			pstmt.setString(6, board.getBizLocal());
			
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt);
		}
		return false;
	}
	
	public static boolean updateCommunity(String community, String title, String contents, String num) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("UPDATE "+community+" SET title=?, contents=? WHERE writing_no=?");
			pstmt.setString(1, title);
			pstmt.setString(2, contents);
			pstmt.setString(3, num);
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
			pstmt = conn.prepareStatement("UPDATE "+community+" SET view_no=view_no+1 WHERE writing_no=?");
			pstmt.setString(1, num);
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt);
		}
		return false;
	}
	
	public static boolean updateCommentNum(String community, String num) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("UPDATE "+community+" SET comment_no=comment_no+1 WHERE writing_no=?");
			pstmt.setString(1, num);
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
			pstmt = conn.prepareStatement("DELETE FROM "+community+" WHERE writing_no=?");
			pstmt.setString(1, num);
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt);
		}
		return false;
	}
	
	// Recommend
	public static ArrayList<CommunityDTO> selectPamphlet(String query) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CommunityDTO> boardList = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM MktBoard WHERE "+query+"(title like '%전단지%' OR contents like '%전단지%')");
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
	
	public static ArrayList<CommunityDTO> selectSNS(String query) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CommunityDTO> boardList = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM MktBoard WHERE "+query+"(title like '%페이스북%' OR title like '%인스타%' OR title like '%블로그%' OR contents like '%페이스북%' OR contents like '%인스타%' OR contents like '%블로그%')");
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
	
	public static ArrayList<CommunityDTO> selectNews(String query) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CommunityDTO> boardList = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM MktBoard WHERE "+query+"(title like '%뉴스%' OR contents like '%뉴스%')");
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
	
	public static ArrayList<CommunityDTO> selectExperience(String query) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CommunityDTO> boardList = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM MktBoard WHERE "+query+"(title like '%체험%' OR contents like '%체험%')");
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
}
