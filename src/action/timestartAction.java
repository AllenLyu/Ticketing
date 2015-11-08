package action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

public class timestartAction {
	private String flag;
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public String execute() throws Exception{
		 flag="1";
	    HttpServletRequest request = ServletActionContext.getRequest();
		 request.getSession().setAttribute("flag", flag);
			return "success";
	}
}
