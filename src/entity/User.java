package entity;

public class User {
	private String name;
	private String sex;
	private String phone;
	private String pwd;
	private int uid;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public User(String name, String sex, String phone, String pwd) {
		super();
		this.name = name;
		this.sex = sex;
		this.phone = phone;
		this.pwd = pwd;
	}
	
	public User() {
		
	}
	
	
}
