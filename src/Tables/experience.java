package Tables;

import java.sql.Date;

public class experience {

	private int id;
	private int user_id;
	private String cmpny_name;
	private Date s_date;
	private Date e_date;
	private String role;
	private String c_about;
	private String url;
	private String img;

	public int getId() {
		return id;
	}
	

	public int getUser_id() {
		return user_id;
	}


	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}


	public void setId(int id) {
		this.id = id;
	}

	public String getCmpny_name() {
		return cmpny_name;
	}

	public void setCmpny_name(String cmpny_name) {
		this.cmpny_name = cmpny_name;
	}

	public Date getS_date() {
		return s_date;
	}

	public void setS_date(Date s_date) {
		this.s_date = s_date;
	}

	public Date getE_date() {
		return e_date;
	}

	public void setE_date(Date e_date) {
		this.e_date = e_date;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getC_about() {
		return c_about;
	}

	public void setC_about(String c_about) {
		this.c_about = c_about;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}
