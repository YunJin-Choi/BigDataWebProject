package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.ResourceBundle;

import board.model.dto.CommentDTO;
import dbutil.DBUtil;

public class CommentDAO {
	static ResourceBundle sql = DBUtil.getResourceBundle();
	

	public static boolean createCommentMkt(String writing_no, String nickname, String contents) throws SQLException{		
		Connection con = null;	
		PreparedStatement pstmt = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("createCommentMkt"));
			pstmt.setString(1, writing_no);
			pstmt.setString(2, nickname);
			pstmt.setString(3, contents);
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}
		return false;
	}

	public static ArrayList<CommentDTO> selectAllCommentMkt(String writing_no) throws SQLException{		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CommentDTO> commentList = null;
		
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("selectAllCommentMkt"));
			pstmt.setString(1, writing_no);
			rset = pstmt.executeQuery();
			commentList = new ArrayList<>();
			while(rset.next()) {
				commentList.add(new CommentDTO(rset.getInt(1), rset.getInt(2), rset.getString(3),
						rset.getString(4),rset.getString(5)));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return commentList;
	}
	
	public static ArrayList<CommentDTO> selectAllCommentOwner(String writing_no) throws SQLException{		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<CommentDTO> commentList = null;
		
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("selectAllCommentOwner"));
			pstmt.setString(1, writing_no);
			rset = pstmt.executeQuery();
			commentList = new ArrayList<>();
			while(rset.next()) {
				commentList.add(new CommentDTO(rset.getInt(1), rset.getInt(2), rset.getString(3),
						rset.getString(4),rset.getString(5)));
			}
		} finally {
			DBUtil.close(con, pstmt, rset);
		}
		return commentList;
	}
	

	public static boolean updateComment(String moq, int comment_no, String contents) throws SQLException{		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("updateComment"));
			pstmt.setString(1, moq);
			pstmt.setString(2, contents);
			pstmt.setInt(3, comment_no);
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}
		return false;
	}
	

	public static boolean deleteComment(String moq, int comment_no, String contents) throws SQLException{		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql.getString("deleteComment"));
			pstmt.setString(1, moq);
			pstmt.setInt(2, comment_no);
			int count = pstmt.executeUpdate();
			if(count != 0) {
				return true;
			}
		} finally {
			DBUtil.close(con, pstmt);
		}
		return false;
	}
}