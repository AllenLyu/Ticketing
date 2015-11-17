package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import entity.Movie;

public class DAO {

	Connection con=null;
	Statement st=null;
	ResultSet rs=null;

	public void con() throws SQLException{
		String url="jdbc:sqlserver://localhost:1433;DatabaseName=Ticketing";
		String usr="sa";
		String psd="root";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con=DriverManager.getConnection(url,usr,psd);
			st=con.createStatement();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public void test()
	{
		try {
			con();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String sql = "select * from dbo.ShowList left join dbo.ShowDate on dbo.ShowDate.mid=dbo.ShowList.mid";
		try {
			rs = st.executeQuery(sql);
			while(rs.next())
			{
				System.out.println(rs.getString("director"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public ArrayList getMovies()
	{
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<Movie> movies = new ArrayList<>();
		String sql = "select * from dbo.ShowList left join dbo.ShowDate on dbo.ShowDate.mid=dbo.ShowList.mid";
		try {
			rs = st.executeQuery(sql);
			while(rs.next())
			{
				Movie movie = new Movie();
				movie.setName(rs.getString("name"));
				movie.setPoster(rs.getString("path"));
				movie.setDirector(rs.getString("director"));
				movie.setActor(rs.getString("actor"));
				movie.setType(rs.getString("type"));
				movie.setPrice(Integer.valueOf(rs.getString("price")));
				movie.setData(rs.getString("date"));
				movie.setItemOne(rs.getString("morning"));
				movie.setItemTwo(rs.getString("afternoon"));
				movies.add(movie);
				System.out.println(movie);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movies;
		
	}
	
	public Movie getMovieByName(String name)
	{
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<Movie> movies = new ArrayList<>();
		String sql = "select * from dbo.ShowList left join dbo.ShowDate on dbo.ShowDate.mid=dbo.ShowList.mid where dbo.ShowList.name='"+name+"'";
		try {
			rs = st.executeQuery(sql);
			while(rs.next())
			{
				Movie movie = new Movie();
				movie.setName(rs.getString("name"));
				movie.setPoster(rs.getString("path"));
				movie.setDirector(rs.getString("director"));
				movie.setActor(rs.getString("actor"));
				movie.setType(rs.getString("type"));
				movie.setPrice(Integer.valueOf(rs.getString("price")));
				movie.setData(rs.getString("date"));
				movie.setItemOne(rs.getString("morning"));
				movie.setItemTwo(rs.getString("afternoon"));
				movies.add(movie);
				System.out.println(movie);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return movies.get(0);
	}
	
	 public static void main(String [] args)
	 {
		 DAO dao = new DAO();
		 dao.getMovies();
	 }
}
