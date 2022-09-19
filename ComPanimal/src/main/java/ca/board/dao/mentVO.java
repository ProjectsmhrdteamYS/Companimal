package ca.board.dao;

public class mentVO {
	private int cmt_seq;
	private int c_seq;
	private String cmt_content;
	private String cmt_date;
	private String user_id;
	
	public mentVO() {}

	public mentVO(int cmt_seq, int c_seq, String cmt_content, String cmt_date, String user_id) {
		super();
		this.cmt_seq = cmt_seq;
		this.c_seq = c_seq;
		this.cmt_content = cmt_content;
		this.cmt_date = cmt_date;
		this.user_id = user_id;
	}

	public int getC_seq() {
		return c_seq;
	}

	public void setC_seq(int c_seq) {
		this.c_seq = c_seq;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getCmt_seq() {
		return cmt_seq;
	}

	public void setCmt_seq(int cmt_seq) {
		this.cmt_seq = cmt_seq;
	}

	public String getCmt_content() {
		return cmt_content;
	}

	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}

	public String getCmt_date() {
		return cmt_date;
	}

	public void setCmt_date(String cmt_date) {
		this.cmt_date = cmt_date;
	}

	@Override
	public String toString() {
		return "mentVO [cmt_seq=" + cmt_seq + ", c_seq=" + c_seq + ", cmt_content=" + cmt_content + ", cmt_date="
				+ cmt_date + ", user_id=" + user_id + "]";
	};
	
}
