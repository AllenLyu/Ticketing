package action;

import DAO.DAO;

import com.opensymphony.xwork2.ActionSupport;

import entity.User;

public class userAddAction extends ActionSupport{

	private String name;
	private String pwd;
	private String phone;
	private String sex;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd.hashCode()+"";
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public String execute() throws Exception{
		User user= new User(name, sex, phone, pwd);
		DAO dao = new DAO();
		dao.addUser(user);
		return "success";
	}
}
