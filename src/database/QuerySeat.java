package database;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.xml.xquery.XQConnection;
import javax.xml.xquery.XQDataSource;
import javax.xml.xquery.XQException;
import javax.xml.xquery.XQExpression;
import javax.xml.xquery.XQResultSequence;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import net.sf.saxon.xqj.SaxonXQDataSource;
import entity.Movie;

public class QuerySeat {
	public  ArrayList query(String name,String time) throws DocumentException {
	String path;
	ArrayList seats=new ArrayList();
	SAXReader reader = new SAXReader();
	int length=this.getClass().getClassLoader().getResource("").getPath().length()-17;
	path="../webapps/Ticketing"+"/Seat.xml";
	//Document doc = reader.read(new File("D://software_document//myeclipse_files//Ticketing//WebRoot//Seat.xml"));
	Document doc = reader.read(new File(path));
	List<Element> Seats=doc.selectNodes("//Seats/Seat");
	Iterator<Element> iter = Seats.iterator();
	while(iter.hasNext()){
		Element Seat=iter.next();
		Element  Name=Seat.element("Name");
	    Element  Time=Seat.element("Time");
	    if(name.equals(Name.getText())&&time.equals(Time.getText())){
	    	Element SeatNumber=Seat.element("SeatNumber");
	    	List<Element> nums=SeatNumber.elements("num");
	    	Iterator<Element> it=nums.iterator();
	    	while(it.hasNext()){
	    		Element num=it.next();
	    		seats.add(num.getText());
	    	}
	    }
	}
	  return seats;	
}
}
