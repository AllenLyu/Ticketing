package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import database.QueryBytime;
import database.QueryMovieByname;
import entity.Movie;

public class timeAction  extends ActionSupport{
	private  ArrayList movies=new  ArrayList();
	private String flag;
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public ArrayList getMovies() {
		return movies;
	}
	public void setMovies(ArrayList movies) {
		this.movies = movies;
	}
	public String execute() throws Exception{
		    QueryMovieByname querymoviebyname=new  QueryMovieByname();
		    HttpServletRequest request = ServletActionContext.getRequest();
		    String time=request.getParameter("time");
		    QueryBytime querybytime=new QueryBytime();
		    movies=querybytime.query(time);
		    if(movies.size()==0){
		    	   flag="1";
		    }
		    else{
		    	 flag="2";
		    }
		    request.getSession().setAttribute("flag", flag);
			return "success";
	
	}
}
