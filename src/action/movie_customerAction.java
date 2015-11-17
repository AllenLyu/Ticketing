package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import DAO.DAO;

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
	    DAO dao = new DAO();
	    HttpServletRequest request = ServletActionContext.getRequest();
	    String name = request.getParameter("name");
	    name = new String(name.getBytes("ISO-8859-1"),"utf-8");
	    movies.add(dao.getMovieByName(name));
	    for(int i=0;i<movies.size();i++){
	    	((Movie) movies.get(i)).setSprice((int)(((Movie) movies.get(i)).getPrice()*0.8));
	    }
		return "success";

}
}
