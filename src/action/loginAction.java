package action;
import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.ActionSupport;
public class loginAction extends ActionSupport {
	private String charactor;

	public String getCharactor() {
		return charactor;
	}

	public void setCharactor(String charactor) {
		this.charactor = charactor;
	}

	public String execute() throws Exception{
		if(this.getCharactor().equals("customer")){
			return "customer";
		}
		else{
			return "manager";
		}
		
	}

}
