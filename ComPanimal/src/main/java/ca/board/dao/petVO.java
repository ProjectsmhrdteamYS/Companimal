package ca.board.dao;

public class petVO {
	private String pet_regno;
	private String dognm;
	private String pet_img;
	private String owner_nm;
	private String reg_date;
	private String user_id;
	private String pet_QR;
	private int pet_sta;
	
	public petVO() {}

	public petVO(String pet_regno, String dognm, String pet_img, String owner_nm, String reg_date, String user_id,
			String pet_QR, int pet_sta) {
		super();
		this.pet_regno = pet_regno;
		this.dognm = dognm;
		this.pet_img = pet_img;
		this.owner_nm = owner_nm;
		this.reg_date = reg_date;
		this.user_id = user_id;
		this.pet_QR = pet_QR;
		this.pet_sta = pet_sta;
	}

	public String getPet_regno() {
		return pet_regno;
	}

	public void setPet_regno(String pet_regno) {
		this.pet_regno = pet_regno;
	}

	public String getDognm() {
		return dognm;
	}

	public void setDognm(String dognm) {
		this.dognm = dognm;
	}

	public String getPet_img() {
		return pet_img;
	}

	public void setPet_img(String pet_img) {
		this.pet_img = pet_img;
	}

	public String getOwner_nm() {
		return owner_nm;
	}

	public void setOwner_nm(String owner_nm) {
		this.owner_nm = owner_nm;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPet_QR() {
		return pet_QR;
	}

	public void setPet_QR(String pet_QR) {
		this.pet_QR = pet_QR;
	}

	public int getPet_sta() {
		return pet_sta;
	}

	public void setPet_sta(int pet_sta) {
		this.pet_sta = pet_sta;
	}

	@Override
	public String toString() {
		return "petVO [pet_regno=" + pet_regno + ", dognm=" + dognm + ", pet_img=" + pet_img + ", owner_nm=" + owner_nm
				+ ", reg_date=" + reg_date + ", user_id=" + user_id + ", pet_QR=" + pet_QR + ", pet_sta=" + pet_sta
				+ "]";
	}
	


}