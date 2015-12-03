package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import DAO.DAO;

import com.opensymphony.xwork2.ActionSupport;

import database.QuerySeat;

public class seatAction extends ActionSupport{
	private String name;
	private String time;
	private boolean[] seats;
	
	public boolean[] getSeats() {
		return seats;
	}
	public void setSeats(boolean[] seats) {
		this.seats = seats;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String execute() throws Exception{
		DAO dao = new DAO();
	    HttpServletRequest request = ServletActionContext.getRequest();
	    int flag = Integer.parseInt(request.getParameter("flag"));
	    String name = request.getParameter("name");
		seats=dao.getSeat(name, flag);
		request.setAttribute("seats", seats);
		request.getSession().setAttribute("name", name);
		request.getSession().setAttribute("time", flag==1?"morningSeat":"afternoonSeat");
		return "success";
	}
}
