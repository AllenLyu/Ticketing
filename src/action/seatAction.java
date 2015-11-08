package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import database.QuerySeat;

public class seatAction extends ActionSupport{
	private String name;
	private String time;
	ArrayList seats=new ArrayList();
	public ArrayList getSeats() {
		return seats;
	}
	public void setSeats(ArrayList seats) {
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
		    HttpServletRequest request = ServletActionContext.getRequest();
		    QuerySeat queryseat=new QuerySeat();
			name= request.getParameter("name");
			time= request.getParameter("time");
			seats=queryseat.query(name, time);
			request.getSession().setAttribute("se", seats);
			request.getSession().setAttribute("name", name);
		return "success";
	}
}
