package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.CommentDAO;
import board.model.CommunityDAO;
import board.model.HotIssueDAO;
import board.model.MemberDAO;
import board.model.QnADAO;
import board.model.TrendDAO;
import board.model.dto.CommunityDTO;
import board.model.dto.MemberDTO;
import board.model.dto.QnABoardDTO;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		if(command != null){
			if(command.equals("communityMkt")) {
				communityMkt(request, response);
			}else if(command.equals("communityOwner")) {
				communityOwner(request, response);
			}else if(command.equals("QnA")) {
				QnA(request, response);
			}else if(command.equals("trend")) {
				trend(request, response);
			}else if(command.equals("hotissue")) {
				hotissue(request, response);
			}else if(command.equals("recommend")) {
				recommend(request, response);
			}else if(command.equals("member")) {
				member(request, response);
			}
		}
	}
	
	// Start CommunityMkt
	private void communityMkt(HttpServletRequest request, HttpServletResponse response) {
		String command = request.getParameter("boardCommand");
		if(command != null) {
			if(command.equals("selectAllCommunityMkt")) {
				selectAllCommunityMkt(request, response);
			}else if(command.equals("selectCommunityMktById")) {
				selectCommunityMktById(request, response);
			}else if(command.equals("createCommunityMkt")) {
				createCommunityMkt(request, response);
			}else if(command.equals("updateCommunityMkt")) {
				updateCommunityMkt(request, response);
			}else if(command.equals("deleteCommunityMkt")) {
				deleteCommunityMkt(request, response);
			}
		}
	}
	
	private void selectAllCommunityMkt(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setAttribute("list", CommunityDAO.selectAllCommunity("MktBoard"));
			request.getRequestDispatcher("board.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void selectCommunityMktById(HttpServletRequest request, HttpServletResponse response) {
		try {
			String num = request.getParameter("boardNum");
			CommunityDTO dto = CommunityDAO.selectCommunityById("MktBoard", num);
			CommunityDAO.updateViewNum("MktBoard", num);
			dto.setComments(CommentDAO.selectAllComment("Mkt", num));
			request.setAttribute("data", dto);
			
			request.getRequestDispatcher("detail.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void createCommunityMkt(HttpServletRequest request, HttpServletResponse response) {
		try {
			String title = request.getParameter("title");
			String contents = request.getParameter("contents");
			String nickname = request.getParameter("nickname");
			String bizType = request.getParameter("bizType");
			String bizSize = request.getParameter("bizSize");
			String bizLocal = request.getParameter("bizLocal");
			CommunityDAO.createCommunity("MktBoard", 
					new CommunityDTO(0, title, contents, nickname, 0, null, 0, bizType, bizSize, bizLocal, null));
			request.getRequestDispatcher("board.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void updateCommunityMkt(HttpServletRequest request, HttpServletResponse response) {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void deleteCommunityMkt(HttpServletRequest request, HttpServletResponse response) {
		try {
			String num = request.getParameter("num");
			CommunityDAO.deleteCommunity("MktBoard", num);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// End CommunityMkt
	
	// Start CommunityOwner
	private void communityOwner(HttpServletRequest request, HttpServletResponse response) {
		String command = request.getParameter("boardCommand");
		
		if(command != null) {
			if(command.equals("selectAllCommunityOwner")) {
				selectAllCommunityOwner(request, response);
			}else if(command.equals("selectCommunityOwnerById")) {
				selectCommunityOwnerById(request, response);
			}else if(command.equals("createCommunityOwner")) {
				createCommunityOwner(request, response);
			}else if(command.equals("updateCommunityOwner")) {
				updateCommunityOwner(request, response);
			}else if(command.equals("deleteCommunityOwner")) {
				deleteCommunityOwner(request, response);
			}
		}
	}
	
	private void selectAllCommunityOwner(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setAttribute("list", CommunityDAO.selectAllCommunity("OwnerBoard"));
			request.getRequestDispatcher("board.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void selectCommunityOwnerById(HttpServletRequest request, HttpServletResponse response) {
		String num = request.getParameter("boardNum");
		try {
			CommunityDTO dto = CommunityDAO.selectCommunityById("OwnerBoard", num);
			CommunityDAO.updateViewNum("OwnerBoard", num);
			dto.setComments(CommentDAO.selectAllComment("Owner", num));
			request.setAttribute("data", dto);
			request.getRequestDispatcher("detail.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void createCommunityOwner(HttpServletRequest request, HttpServletResponse response) {
		try {
			String title = request.getParameter("title");
			String contents = request.getParameter("contents");
			String nickname = request.getParameter("nickname");
			String bizType = request.getParameter("bizType");
			String bizSize = request.getParameter("bizSize");
			String bizLocal = request.getParameter("bizLocal");
			CommunityDAO.createCommunity("OwnerBoard", 
					new CommunityDTO(0, title, contents, nickname, 0, null, 0, bizType, bizSize, bizLocal, null));
			request.getRequestDispatcher("board.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void updateCommunityOwner(HttpServletRequest request, HttpServletResponse response) {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void deleteCommunityOwner(HttpServletRequest request, HttpServletResponse response) {
		try {
			String num = request.getParameter("num");
			CommunityDAO.deleteCommunity("OwnerBoard", num);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// End CommunityOwner
	
	// Start QnA
	private void QnA(HttpServletRequest request, HttpServletResponse response) {
		String command = request.getParameter("boardCommand");
		
		if(command != null) {
			if(command.equals("selectAllQnABoardOwner")) {
				selectAllQnABoardOwner(request, response);
			}else if(command.equals("selectQnABoardOwnerById")) {
				selectQnABoardOwnerById(request, response);
			}else if(command.equals("createQnABoard")) {
				createQnABoard(request, response);
			}else if(command.equals("updateQnABoard")) {
				updateQnABoard(request, response);
			}else if(command.equals("deleteQnABoard")) {
				deleteQnABoard(request, response);
			}
		}
	}
	
	private void selectAllQnABoardOwner(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setAttribute("list", QnADAO.selectAllQnABoardOwner());
			request.getRequestDispatcher("board.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void selectQnABoardOwnerById(HttpServletRequest request, HttpServletResponse response) {
		String num = request.getParameter("boardNum");
		try {
			QnABoardDTO dto = QnADAO.selectQnABoardOwnerById(num);
			QnADAO.updateViewNumQnA(num);
			dto.setComments(CommentDAO.selectAllComment("QA", num));
			request.setAttribute("data", dto);
			request.getRequestDispatcher("detail.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void createQnABoard(HttpServletRequest request, HttpServletResponse response) {
		try {
			String title = request.getParameter("title");
			String contents = request.getParameter("contents");
			String nickname = request.getParameter("nickname");
			String point = request.getParameter("point");
			QnADAO.createQnABoard(new QnABoardDTO(0, title, contents, nickname, 0, null, 0,
					Integer.parseInt(point), null));
			request.getRequestDispatcher("board.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void updateQnABoard(HttpServletRequest request, HttpServletResponse response) {
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void deleteQnABoard(HttpServletRequest request, HttpServletResponse response) {
		try {
			String num = request.getParameter("num");
			QnADAO.deleteQnABoard(num);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// End QnA
	
	// Start Trend
	private void trend(HttpServletRequest request, HttpServletResponse response) {
		String command = request.getParameter("trend");
		
		if(command != null) {
			if(command.equals("selectAllTrend")) {
				selectAllTrend(request, response);
			}else if(command.equals("selectTrendById")) {
				selectTrendById(request, response);
			}
		}
	}
	
	private void selectAllTrend(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setAttribute("trendList", TrendDAO.selectAllTrend());
			request.getRequestDispatcher("trend.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void selectTrendById(HttpServletRequest request, HttpServletResponse response) {
		try {
			String num = request.getParameter("");
			request.setAttribute("trend", TrendDAO.selectTrendById(num));
			request.getRequestDispatcher("trend.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// End Trend
	
	//	Start Hot Issue
	private void hotissue(HttpServletRequest request, HttpServletResponse response) {
		String command = request.getParameter("hotissue");
		
		if(command != null) {
			if(command.equals("selectHotIssueByDate")) {
				selectHotIssueByDate(request, response);
			}else if(command.equals("selectHotIssuePreDate")) {
				selectHotIssueByDate(request, response);
			}else if(command.equals("selectHotIssuePostDate")) {
				selectHotIssueByDate(request, response);
			}
		}
	}
	
	private void selectHotIssueByDate(HttpServletRequest request, HttpServletResponse response) {
		try {
			String date = request.getParameter("date");
			request.setAttribute("hotIssue", HotIssueDAO.selectHotIssueByDate(date));
			request.getRequestDispatcher("hotIssue.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void selectHotIssuePreDate(HttpServletRequest request, HttpServletResponse response) {
		try {
			String date = request.getParameter("date");
			request.setAttribute("hotIssue", HotIssueDAO.selectHotIssueByDate(date));
			request.getRequestDispatcher("hotIssue.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void selectHotIssuePostDate(HttpServletRequest request, HttpServletResponse response) {
		try {
			String date = request.getParameter("date");
			request.setAttribute("hotIssue", HotIssueDAO.selectHotIssueByDate(date));
			request.getRequestDispatcher("hotIssue.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// End Hot Issue
	
	// Start Recommend
	private void recommend(HttpServletRequest request, HttpServletResponse response) {
		String command = request.getParameter("recommend");
		
	}
	// End Recommend
	
	// Start Member
	private void member(HttpServletRequest request, HttpServletResponse response) {
		String command = request.getParameter("member");
		
		if(command != null) {
			if(command.equals("loginMember")) {
				loginMember(request, response);
			}else if(command.equals("selectMemberByEmail")) {
				selectMemberByEmail(request, response);
			}else if(command.equals("selectMemberByNickname")) {
				selectMemberByNickname(request, response);
			}else if(command.equals("insertMember")) {
				insertMember(request, response);
			}
		}
		
	}
	
	private void selectMemberByEmail(HttpServletRequest request, HttpServletResponse response) {
		try {
			String email = request.getParameter("email");
			
			if(MemberDAO.selectMemberByEmail(email)) {
				PrintWriter out = response.getWriter();
				out.print("fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void selectMemberByNickname(HttpServletRequest request, HttpServletResponse response) {
		try {
			String nickname = request.getParameter("nickname");
			
			if(MemberDAO.selectMemberByNickname(nickname)) {
				PrintWriter out = response.getWriter();
				out.print("fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void insertMember(HttpServletRequest request, HttpServletResponse response) {
		try {
			String nickname = request.getParameter("nickname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String callnum = request.getParameter("callnum");
			String job = request.getParameter("job");
			if(!MemberDAO.insertMember(new MemberDTO(nickname, email, password, callnum, job, 0))) {
				PrintWriter out = response.getWriter();
				out.print("fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void loginMember(HttpServletRequest request, HttpServletResponse response) {
		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			MemberDTO member = MemberDAO.loginMember(email, password);
			
			if(member != null) {
				request.getSession().setAttribute("Member", member);
			}else {
				PrintWriter out = response.getWriter();
				out.print("fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// End Member
}