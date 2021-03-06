package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import DAO.DAO;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.Movie;

public class userAction extends ActionSupport{
	
	private ArrayList trades,users;
	public String execute() throws Exception{
	    DAO dao = new DAO();
	    HttpServletRequest request = ServletActionContext.getRequest();
	    String username = (String) request.getSession().getAttribute("username");
	    trades = dao.getTrade(username);
	    users = dao.getUser(username);
		return "success";

	}
	public ArrayList getTrades() {
		return trades;
	}
	public void setTrades(ArrayList trades) {
		this.trades = trades;
	}
	public ArrayList getUsers() {
		return users;
	}
	public void setUsers(ArrayList users) {
		this.users = users;
	}
}
