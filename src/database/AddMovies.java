package database;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import entity.Movie;

public class AddMovies {
private  Movie movie=new Movie();
int length=this.getClass().getClassLoader().getResource("").getPath().length()-17;
String path="../webapps/Ticketing"+"/ShowList.xml";
private File file = new File(path);
//private File file = new File("D://software_document//myeclipse_files//Ticketing//WebRoot//ShowList.xml");
	public void addMovie(Movie movie){
		try {
			   SAXReader saxReader=new SAXReader();
			   Document doc = saxReader.read(file);
			   Element root=doc.getRootElement();
			   Element Movie=root.addElement("Movie");
			   Element Name=Movie.addElement("Name");
			   Name.setText(movie.getName());
			   Element Poster=Movie.addElement("Poster");
			   Poster.setText(movie.getPoster());
			   Element Director=Movie.addElement("Director");
			   Director.setText(movie.getDirector());
			   Element Actor=Movie.addElement("Actor");
			   Actor.setText(movie.getActor());
			   Element Type=Movie.addElement("Type");
			   Type.setText(movie.getType());
			   Element Price=Movie.addElement("Price");
			   Price.setText(String.valueOf(movie.getPrice()));
			   Element Schedule=Movie.addElement("Schedule");
			   Schedule.addAttribute("data", movie.getData());
			   Element Item1=Schedule.addElement("Item1");
			   Item1.setText(movie.getItemOne());
			   Element Item2=Schedule.addElement("Item2");
			   Item2.setText(movie.getItemTwo());
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
