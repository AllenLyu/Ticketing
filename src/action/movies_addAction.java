package action;



import java.io.File;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import DAO.DAO;

import com.opensymphony.xwork2.ActionSupport;

import database.AddMovies;
import database.AddSeat;
import entity.Movie;

public class movies_addAction  extends ActionSupport{
	private String name;
	private File poster;
	private String posterFileName;
	private String posterContentType;;
	private String director;
	private String actor;
	private String type;
	private int price;
	private String data;
	private String item1;
	private String item2;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getItem1() {
		return item1;
	}

	public void setItem1(String item1) {
		this.item1 = item1;
	}

	public String getItem2() {
		return item2;
	}

	public void setItem2(String item2) {
		this.item2 = item2;
	}
	
	public File getPoster() {
		return poster;
	}

	public void setPoster(File poster) {
		this.poster = poster;
	}

	public String getPosterFileName() {
		return posterFileName;
	}

	public void setPosterFileName(String posterFileName) {
		this.posterFileName = posterFileName;
	}

	public String getPosterContentType() {
		return posterContentType;
	}

	public void setPosterContentType(String posterContentType) {
		this.posterContentType = posterContentType;
	}
	
	
	
	

	public String execute() throws Exception{
		Movie movie=new Movie();
		//int length=this.getClass().getClassLoader().getResource("").getPath().length()-17;
	    String path="/Ticketing/imags/"+this.getPosterFileName();
	    File destFile = new File(ServletActionContext.getServletContext().getRealPath("/imags"),this.getPosterFileName());
	    FileUtils.copyFile(poster, destFile);
	    
	    
		movie.setName(this.getName());
		movie.setPoster(path);
		movie.setDirector(this.getDirector());
		movie.setActor(this.getActor());
		movie.setType(this.getType());
		movie.setPrice(this.getPrice());
		movie.setData(this.getData());
		movie.setItemOne(this.getItem1());
		movie.setItemTwo(this.getItem2());
		
		DAO dao = new DAO();
		dao.addMovie(movie, Integer.parseInt(this.getItem1()), Integer.parseInt(this.getItem2()));
		
		return  "success";
	}

	
}
