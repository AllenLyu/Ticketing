package action;

import com.opensymphony.xwork2.ActionSupport;

import database.AddMovies;
import database.AddSeat;
import entity.Movie;

public class movies_addAction  extends ActionSupport{
	private String name;
	private String poster;
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

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
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

	public String execute() throws Exception{
		Movie movie=new Movie();
		AddMovies addmovies=new AddMovies();
		AddSeat   addseat=new AddSeat();
		//int length=this.getClass().getClassLoader().getResource("").getPath().length()-17;
	    String path="/Ticketing/imags/"+this.getPoster();
		movie.setName(this.getName());
		movie.setPoster(path);
		movie.setDirector(this.getDirector());
		movie.setActor(this.getActor());
		movie.setType(this.getType());
		movie.setPrice(this.getPrice());
		movie.setData(this.getData());
		movie.setItemOne(this.getItem1());
		movie.setItemTwo(this.getItem2());
		addmovies.addMovie(movie);
		addseat.addseat(this.name, this.getItem1());
		addseat.addseat(this.name, this.getItem2());
		return  "success";
	}
}
