package database;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

public class AddSeat {
	int length=this.getClass().getClassLoader().getResource("").getPath().length()-17;
	String path="../webapps/Ticketing"+"/Seat.xml";
	//private File file = new File("D://software_document//myeclipse_files//Ticketing//WebRoot//Seat.xml");
	private File file = new File(path);
	public void addseat(String name,String time){
		try {
			   SAXReader saxReader=new SAXReader();
			   Document doc=saxReader.read(file);
			   Element root=doc.getRootElement();
			   Element Seat=root.addElement("Seat");
			   Element Name=Seat.addElement("Name");
			   Name.setText(name);
			   Element Time=Seat.addElement("Time");
			   Time.setText(time);
			   Element SeatNumber=Seat.addElement("SeatNumber");
			   OutputFormat format = OutputFormat.createPrettyPrint();
			   format.setEncoding("UTF-8");
			   format.setIndent(true);
			   XMLWriter out=new XMLWriter(new FileOutputStream(file),format);  
			   out.write(doc);   
			   out.close(); 
	
		} catch (DocumentException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   	  
	}
}
