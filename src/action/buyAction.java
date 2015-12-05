package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.json.JSONObject;

import DAO.DAO;

import com.opensymphony.xwork2.ActionSupport;

import database.AddoneSeat;
import database.QuerySeat;

public class buyAction extends ActionSupport{
	
	public String execute() throws Exception{
	    HttpServletRequest request = ServletActionContext.getRequest();
	    int num = Integer.parseInt(request.getParameter("num"));
	    int count = 0;int m = num;
	    while(m!=0)
        {
            m=m&(m-1);
            count++;
        }
	    String name = (String) request.getSession().getAttribute("name");
	    int price = (int)request.getSession().getAttribute("price")*count;
	    String username = (String) request.getSession().getAttribute("username");
	    String time = (String) request.getSession().getAttribute("time");
	    String info = request.getParameter("info");
	    DAO dao = new DAO();
	    dao.buy(username, time, num, name+","+time+":"+info, price,name);
		return "success";
	}
}
