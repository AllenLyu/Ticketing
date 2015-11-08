package database;

import java.util.ArrayList;

import javax.xml.xquery.XQConnection;
import javax.xml.xquery.XQDataSource;
import javax.xml.xquery.XQException;
import javax.xml.xquery.XQExpression;
import javax.xml.xquery.XQResultSequence;

import net.sf.saxon.xqj.SaxonXQDataSource;
import entity.Movie;

public class QueryMovieByname {
	public  ArrayList query(String name) {
		String path;
		String[] result;
	    ArrayList movies=new ArrayList();
		XQConnection conn=null;
		XQExpression expression=null;
		XQResultSequence resultSeq=null;
		int length=this.getClass().getClassLoader().getResource("").getPath().length()-17;
		path="../webapps/Ticketing"+"/ShowList.xml";
		try {
			XQDataSource dataSource=new SaxonXQDataSource();
			conn=dataSource.getConnection();
			expression=conn.createExpression();
			resultSeq=expression.executeQuery("for $Movie in doc('"+path+"')/ShowList/Movie where $Movie/Name='"+name+"'"+" return concat(concat(concat(concat(concat(concat(concat(concat(concat(string($Movie/Name),'、'),concat(string($Movie/Poster),'、')),concat(string($Movie/Director),'、')),concat(string($Movie/Actor),'、')),concat(string($Movie/Type),'、')),concat(string($Movie/Price),'、')),concat(string($Movie/Schedule/@data),'、')),concat(string($Movie/Schedule/Item1),'、')),concat(string($Movie/Schedule/Item2),'、'))");
			//resultSeq=expression.executeQuery("for $Movie in doc('D://software_document//myeclipse_files//Ticketing//WebRoot//ShowList.xml')/ShowList/Movie where $Movie/Name='"+name+"'"+" return concat(concat(concat(concat(concat(concat(concat(concat(concat(string($Movie/Name),'、'),concat(string($Movie/Poster),'、')),concat(string($Movie/Director),'、')),concat(string($Movie/Actor),'、')),concat(string($Movie/Type),'、')),concat(string($Movie/Price),'、')),concat(string($Movie/Schedule/@data),'、')),concat(string($Movie/Schedule/Item1),'、')),concat(string($Movie/Schedule/Item2),'、'))");
			while(resultSeq.next()){
				   Movie  movie=new Movie();
				   result=resultSeq.getAtomicValue().split("、");
	               movie.setName(result[0]);
		           movie.setPoster(result[1]);
		           movie.setDirector(result[2]);
		           movie.setActor(result[3]);
		           movie.setType(result[4]);
		           movie.setPrice(Integer.valueOf(result[5]));
		           movie.setData(result[6]);
		           movie.setItemOne(result[7]);
		           movie.setItemTwo(result[8]);
		           movies.add(movie);
			}
		} catch (XQException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				resultSeq.close();
				expression.close();
				conn.close();
			} catch (XQException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
	 return movies;
	}
}
