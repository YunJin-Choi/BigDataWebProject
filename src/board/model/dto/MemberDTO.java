package board.model.dto;

public class MemberDTO {
	private String nickName;
	private String email;
	private String password;
	private String callNum;
	private String job;
	private int point;
	
	public MemberDTO() {
		super();
	}	
	
	public MemberDTO(String nickName, String email, String password, String callNum, String job, int point) {
		this.nickName = nickName;
		this.email = email;
		this.password = password;
		this.callNum = callNum;
		this.job = job;
		this.point = point;
	}

	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}

}
