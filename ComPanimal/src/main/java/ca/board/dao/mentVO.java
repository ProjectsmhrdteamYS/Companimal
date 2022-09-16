package ca.board.dao;

public class mentVO {
	private int cmt_seq;
	private String cmt_content;
	private String cmt_date;
	
	public mentVO() {}

	public mentVO(int cmt_seq, String cmt_content, String cmt_date) {
		super();
		this.cmt_seq = cmt_seq;
		this.cmt_content = cmt_content;
		this.cmt_date = cmt_date;
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
		return "mentVO [cmt_seq=" + cmt_seq + ", cmt_content=" + cmt_content + ", cmt_date=" + cmt_date + "]";
	};
	
}
