package action;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import DAO.DAO;

import com.opensymphony.xwork2.ActionSupport;
public class loginAction extends ActionSupport {
	private String charactor;
	private String name;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	private String password;
	public String getCharactor() {
		return charactor;
	}

	public void setCharactor(String charactor) {
		this.charactor = charactor;
	}

	public String execute() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();
		this.setName(((String) request.getParameter("name")));
		this.setPassword(((String) request.getParameter("pwd")));
		boolean isMaster = this.getCharactor().equals("customer")?false:true;
		request.getSession().setAttribute("username", name);
		request.getSession().setAttribute("uid", getId(isMaster, name));
		if(isMaster)
		{
			
			return isSucc(isMaster, this.getName())?"manager_success":"error";
		}
		else
		{
			return isSucc(isMaster, this.getName())?"customer_success":"error";
		}
		
	}
	
	private boolean isSucc(boolean isMaster,String name)
	{
		DAO dao = new DAO();
		String pwd = dao.login(isMaster, name);
		return (this.getPassword().hashCode()+"").equals(pwd);
		
	}
	
	private int getId(boolean isMaster,String name)
	{
		DAO dao = new DAO();
		return dao.getUserId(isMaster, name);
	}

}
