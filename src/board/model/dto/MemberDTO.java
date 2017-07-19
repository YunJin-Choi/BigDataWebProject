package board.model.dto;

public class MemberDTO {
	private int num;
	private String email;
	private String pw;
	private String callNum;
	private String job;
	private String nickName;
	private int point;
	
	public MemberDTO() {
		super();
	}	
	
	public MemberDTO(int num, String email, String pw, String callNum, String job, String nickName, int point) {
		super();
		this.num = num;
		this.email = email;
		this.pw = pw;
		this.callNum = callNum;
		this.job = job;
		this.nickName = nickName;
		this.point = point;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getCallNum() {
		return callNum;
	}
	public void setCallNum(String callNum) {
		this.callNum = callNum;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "memberDTO [num=" + num + ", email=" + email + ", pw=" + pw + ", callNum=" + callNum + ", job=" + job
				+ ", nickName=" + nickName + ", point=" + point + "]";
	}
}
