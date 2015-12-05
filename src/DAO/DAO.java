package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import entity.Movie;
import entity.Trade;
import entity.User;

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
	
	public int getUserId(boolean isMaster,String name)
	{
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String table = isMaster?"dbo.Master":"dbo.MUser";
		int id=0;
		String sql = "select "+table +".uid from "+ table + " where "+table +".name = '" + name +"'";
		try {
			rs = st.executeQuery(sql);
			while(rs.next())
			{
				id = rs.getInt("uid");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
		
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
	
	public void buy(String username,String time,int num,String info,int price,String name) throws SQLException
	{
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql1 = "update dbo.ShowSeat set dbo.ShowSeat."+time+"= dbo.ShowSeat."+time+"+"+num+" from "
				+ "dbo.ShowSeat left join dbo.ShowList on dbo.ShowSeat.mid"
				+ " = dbo.ShowList.mid where dbo.ShowList.name = '"+name+"'";
		String sql2 = "declare @num int "
				+ "declare @u int "
				+ "select @num = Max(dbo.Trade.tid) from dbo.Trade "
				+ "select @u = dbo.MUser.uid from dbo.MUser where dbo.MUser.name = '"+username+"' "
				+ "insert into dbo.Trade (dbo.Trade.tid,dbo.Trade.uid,dbo.Trade.price,dbo.Trade.info) values ( @num+1,@u,"+price+",'"+info+"');";
		st.executeUpdate(sql1);
		st.executeUpdate(sql2);
	}
	
	public void addMovie(Movie movie,int item1,int item2) throws SQLException
	{
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql = "declare @id int "
				+ "select @id= Max(ShowDate.sid) from dbo.ShowDate "
				+ " insert into dbo.ShowList (mid,name,path,director,actor,type,price) values ("+movie.getName().hashCode()+",'"+movie.getName()+"','"+movie.getPoster()+"','"+movie.getDirector()+"','"+movie.getActor()+"','"+movie.getType()+"',"+movie.getPrice()+")"
				+ " insert into dbo.ShowSeat (mid,morningSeat,afternoonSeat) values ("+movie.getName().hashCode()+",0,0)"
				+ " insert into dbo.ShowDate (sid,mid,date,morning,afternoon) values (@id+1,"+movie.getName().hashCode()+",'"+movie.getData()+"','"+item1+"','"+item2+"')";
		st.executeUpdate(sql);
	
	}
	
	
	public void addUser(User user) throws SQLException
	{
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql = "insert into dbo.MUser (uid,name,pwd,sex,telephone) values ("+user.getName().hashCode()+",'"+user.getName()+"','"+user.getPwd()+"','"+user.getSex()+"','"+user.getPhone()+"')";
		st.executeUpdate(sql);
	
	}
	
	
	public ArrayList getUser(String username)
	{
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<User> users = new ArrayList<>();
		String sql = "select * from dbo.MUser where dbo.MUser.name='"+username+"'";
		try {
			rs = st.executeQuery(sql);
			while(rs.next())
			{
				User user = new User();
				user.setName(username);
				user.setUid(rs.getInt("uid"));
				user.setSex(rs.getString("sex"));
				user.setPhone(rs.getString("telephone"));
				users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
	
	}
	
	
	public ArrayList getTrade(String username)
	{
		try {
			con();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ArrayList<Trade> trades = new ArrayList<>();
		String sql = "select * from dbo.Trade left join dbo.MUser on dbo.Trade.uid=dbo.MUser.uid where dbo.MUser.name='"+username+"'";
		try {
			rs = st.executeQuery(sql);
			while(rs.next())
			{
				Trade trade = new Trade();
				trade.setPrice(rs.getInt("price"));
				trade.setInfo(rs.getString("info"));
				trades.add(trade);
				System.out.println(trade);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return trades;
	
	}
	
	 public static void main(String [] args)
	 {
		 DAO dao = new DAO();
		 dao.getSeat("功夫", 0);
		 System.out.println("123456".hashCode());
	 }
}
