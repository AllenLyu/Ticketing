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
	
	public String login(boolean isMaster,String name)
	{
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String table = isMaster?"dbo.Master":"dbo.MUser";
		String pwd="";
		String sql = "select "+table +".pwd from "+ table + " where "+table +".name = '" + name +"'";
		try {
			rs = st.executeQuery(sql);
			while(rs.next())
			{
				pwd = rs.getString("pwd");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pwd;
		
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
	
	
	public boolean[] getSeat(String name,int flag)
	{
		boolean result[] = new boolean[18];
		int originReault=0;
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<Movie> movies = new ArrayList<>();
		String time = flag==1?"morningSeat":"afternoonSeat";
		String sql = "select * from dbo.ShowList left join dbo.ShowSeat on dbo.ShowList.mid=dbo.ShowSeat.mid where dbo.ShowList.name ='"+name+"'";
		try {
			rs = st.executeQuery(sql);
			while(rs.next())
			{
				originReault = rs.getInt(time);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
        for (int i = 0; i<18; i++) {
            if((originReault&(int)Math.pow(2,i))==(int)Math.pow(2,i))
            {
                result[i]=true;
            }
            else
            {
                result[i]=false;
            }
        }


        System.out.println(result);
        return result;
    }
	
	 public static void main(String [] args)
	 {
		 DAO dao = new DAO();
		 dao.getSeat("功夫", 0);
		 System.out.println("123456".hashCode());
	 }
}
