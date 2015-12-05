package action;

import java.util.ArrayList;

import DAO.DAO;

import com.opensymphony.xwork2.ActionSupport;

import database.QueryMovies;
import entity.Movie;

public class movies_managerAction  extends ActionSupport{
	private  ArrayList movies=new  ArrayList();
	public ArrayList getMovies() {
		return movies;
	}
	public void setMovies(ArrayList movies) {
		this.movies = movies;
	}
	public String execute() throws Exception{
		DAO dao = new DAO();
	    movies=dao.getMovies();
	    for(int i=0;i<movies.size();i++){
	    	((Movie) movies.get(i)).setSprice((int)(((Movie) movies.get(i)).getPrice()*0.8));
	    }
		return "success";
	}
}
