package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import database.AddoneSeat;
import database.QuerySeat;

public class seatoneAction extends ActionSupport{
	private String name;
	private String time;
	private String num; 
	ArrayList seats=new ArrayList();
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
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
		    AddoneSeat addoneseat=new AddoneSeat();
		    name=(String)request.getSession().getAttribute("name");
		    time=request.getParameter("time");
		    num=request.getParameter("num");
		    if(num.equals("2-5")||num.equals("2-6")){
		    	addoneseat.addseat(name, time, "2-5");
		    	addoneseat.addseat(name, time, "2-6");
		    }
		    else{
		    	 addoneseat.addseat(name, time, num);
		    }
		    seats=queryseat.query(name, time);
			request.getSession().setAttribute("se", seats);
		return "success";
	}
}
