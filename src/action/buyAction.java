package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.json.JSONObject;

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
        System.out.println(count);
		System.out.println(request.getParameter("num"));
		return "success";
	}
}
