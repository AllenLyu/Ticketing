package entity;

public class Movie {
	private String Name;
	private String Poster;
	private String Director;
	private String Actor;
	private String Type;
	private int Price;
	private String Data;
	private String ItemOne;
	private String ItemTwo;
	private int Sprice;

	public int getSprice() {
		return Sprice;
	}

	public void setSprice(int sprice) {
		Sprice = sprice;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getPoster() {
		return Poster;
	}

	public void setPoster(String poster) {
		Poster = poster;
	}

	public String getDirector() {
		return Director;
	}

	public void setDirector(String director) {
		Director = director;
	}

	public String getActor() {
		return Actor;
	}

	public void setActor(String actor) {
		Actor = actor;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public String getData() {
		return Data;
	}

	public void setData(String data) {
		Data = data;
	}

	public String getItemOne() {
		return ItemOne;
	}

	public void setItemOne(String itemOne) {
		if("1".equals(itemOne))
		{
			ItemOne = "8:30--11:30";
		}else {
			ItemOne = null;
		}
	}

	public String getItemTwo() {
		return ItemTwo;
	}

	public void setItemTwo(String itemTwo) {
		if("1".equals(itemTwo))
		{
			ItemTwo = "13:30--16:30";
		}else {
			ItemTwo = null;
		}
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "name:"+getName()+"\npath:"+getPoster()+"\nDirector:"+getDirector()+"\nActor:"+getActor()+"\nDate:"+getData()+"\nPrice:"+getPrice()
				+"\nMorning:"+getItemOne()+"\nAfternoon"+getItemTwo();
	}
}
