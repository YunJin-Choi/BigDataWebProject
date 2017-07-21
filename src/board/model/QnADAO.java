package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import board.model.dto.CommunityDTO;
import board.model.dto.QnABoardDTO;
import dbutil.DBUtil;

public class QnADAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	
	public static ArrayList<QnABoardDTO> selectAllQnABoardOwner() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<QnABoardDTO> QnAList = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectAllQnABoardOwner"));
			rset = pstmt.executeQuery();
			QnAList = new ArrayList<>();
			while (rset.next()) {
				QnAList.add(new QnABoardDTO(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getInt(5),
						rset.getString(6), rset.getInt(7), rset.getInt(8), null));
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return QnAList;
	}
	
	public static QnABoardDTO selectQnABoardOwnerById(String num) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("selectQnABoardOwnerById"));
			pstmt.setString(1, num);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				return new QnABoardDTO(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getInt(5),
						rset.getString(6), rset.getInt(7), rset.getInt(8), null);
			}
		} finally {
			DBUtil.close(conn, pstmt, rset);
		}
		return null;
	}
	
	public static boolean createQnABoard(QnABoardDTO board) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("createQnABoard"));
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getNickname());
			pstmt.setString(3, board.getContents());
			pstmt.setInt(4, board.getPoint());
			
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt);
		}
		return false;
	}
	
	public static boolean updateQnABoard(QnABoardDTO qnABoardDTO) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("updateQnABoard"));
			pstmt.setString(1, qnABoardDTO.getTitle());
			pstmt.setString(2, qnABoardDTO.getContents());
			pstmt.setInt(3, qnABoardDTO.getNum());
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(conn, pstmt);
		}
		return false;
	}
	
	public static boolean updateViewNumQnA(String num) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("updateViewNumQnA"));
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
	
	public static boolean deleteQnABoard(String num) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBUtil.getConnection();
			pstmt = conn.prepareStatement(sql.getString("deleteQnABoard"));
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
	
}
