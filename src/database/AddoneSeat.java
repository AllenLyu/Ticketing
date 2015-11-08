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

public class AddoneSeat {
	int length=this.getClass().getClassLoader().getResource("").getPath().length()-17;
	String path="../webapps/Ticketing"+"/Seat.xml";
	private File file = new File(path);
	//private File file = new File("D://software_document//myeclipse_files//Ticketing//WebRoot//Seat.xml");
	public void addseat(String name,String time,String num){
			try {
				  SAXReader saxReader=new SAXReader();
				   Document doc=saxReader.read(file);
				   Element root=doc.getRootElement();
				   List<Element> SeatList=doc.selectNodes("//Seats//Seat");
				   Iterator<Element> it=SeatList.iterator();
				   while(it.hasNext()){
					   Element Seat=it.next();
					   Element  Name=Seat.element("Name");
					   Element  Time=Seat.element("Time");
					   if(name.equals(Name.getText())&&time.equals(Time.getText())){
						   Element SeatNumber=Seat.element("SeatNumber");
						   Element Number=SeatNumber.addElement("num");
						   Number.setText(num);
						   OutputFormat format = OutputFormat.createPrettyPrint();
						   format.setEncoding("UTF-8");
						   format.setIndent(true);
						   XMLWriter out=new XMLWriter(new FileOutputStream(file),format);  
						   out.write(doc);   
						   out.close(); 
					   }
				   }
			} catch (DocumentException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
  
		}
}
