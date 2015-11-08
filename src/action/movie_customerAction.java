package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import database.QueryMovieByname;
import database.QueryMovies;
import entity.Movie;

public class movie_customerAction extends ActionSupport{
	private  ArrayList movies=new  ArrayList();
	public ArrayList getMovies() {
		return movies;
	}
	public void setMovies(ArrayList movies) {
		this.movies = movies;
	}
	public String execute() throws Exception{
		    QueryMovieByname querymoviebyname=new  QueryMovieByname();
		    HttpServletRequest request = ServletActionContext.getRequest();
		    String name="¹¦·ò";
		    movies=querymoviebyname.query(name);
		    for(int i=0;i<movies.size();i++){
		    	((Movie) movies.get(i)).setSprice((int)(((Movie) movies.get(i)).getPrice()*0.8));
		    }
			return "success";
	
	}
}
