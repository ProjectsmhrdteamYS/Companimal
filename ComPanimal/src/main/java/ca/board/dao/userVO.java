package ca.board.dao;

import java.sql.Date;

public class userVO {
	private String user_id;
	private String user_pw;
	private String user_name;
	private int user_birth;
	private String user_tel;
	private String user_addr;
	private Date user_joindate;
	private String user_type;
	
	public userVO(String user_id, String user_pw, String user_name, int user_birth, String user_tel, String user_addr,
			Date user_joindate, String user_type) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_birth = user_birth;
		this.user_tel = user_tel;
		this.user_addr = user_addr;
		this.user_joindate = user_joindate;
		this.user_type = user_type;
	}

	@Override
	public String toString() {
		return "userVO [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_birth="
				+ user_birth + ", user_tel=" + user_tel + ", user_addr=" + user_addr + ", user_joindate="
				+ user_joindate + ", user_type=" + user_type + "]";
	}


	public int getUser_birth() {
		return user_birth;
	}


	public void setUser_birth(int user_birth) {
		this.user_birth = user_birth;
	}


	public String getUser_tel() {
		return user_tel;
	}


	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	

	public userVO() {
	};

	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
//System.out.println("setUser_id:"+ user_id);
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_addr() {
		return user_addr;
	}

	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}

	public Date getUser_joindate() {
		return user_joindate;
	}

	public void setUser_joindate(Date user_joindate) {
//		System.out.println(user_joindate);
		this.user_joindate = user_joindate;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
}
