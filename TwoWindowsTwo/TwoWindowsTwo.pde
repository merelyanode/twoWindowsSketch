import javax.swing.*;
SecondApplet s;
import controlP5.*;
import java.util.Date;
PImage img_1; 
PImage img_2; 
PImage img_3;
ControlP5 cp5;
String textValue = "";
String timestamp;
//int i;

 void setup() {
  //PFrame f = new PFrame(1500,800);
  size(1500,800);
  fill(150, 0, 130);
  rect(10,20,30,40);
  img_1 = loadImage("roar2.png");
  img_2 = loadImage("theQuestion.png");
  img_3 = loadImage("instructions.png");;
  background(0,155,0);
  PFont font = createFont("arial",20);
  Date d = new Date();
  println("1 " + d.getTime());
  
  cp5 = new ControlP5(this);
  
  cp5.addTextfield("input")
     .setPosition(800,600)
     .setSize(600,40)
     .setFont(font)
     .setFocus(true)
     .setColor(color(255))
     ;
     textFont(font);
}

void draw() {
  //println(mouseX);
  image(img_1, 5, 0);
  image(img_2, 650,215);
  image(img_3, 850,645);
  fill(0,255,0);
  //text(cp5.get(Textfield.class,"input").getText(), 360,130);
  text(textValue, 360,180);
}
public void clear() {
  cp5.get(Textfield.class,"textValue").clear();
  
}

void controlEvent(ControlEvent theEvent) {
  if(theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
            +theEvent.getName()+"': "
            +theEvent.getStringValue()
            );
  }
}

public class PFrame extends JFrame {
  public PFrame(int width, int height) {
    setBounds(100, 100, width, height);
    ellipse(40,50,60,70);
    s = new SecondApplet();
    add(s);
    s.init();
    show();
    }
}
public class SecondApplet extends PApplet {
 
  public void setup() {
 
  }
}
/*
void draw() {
  //background(0);
  //image(img_1, 5, 0);
  //image(img_2, 650,215);
  //image(img_3, 850,645);
  fill(0,255,0);
  //text(cp5.get(Textfield.class,"input").getText(), 360,130);
  text(textValue, 360,180);
  //text(textValue, 360,360);
  //println(mouseY);
  for (i = 0; i < 10; i++){
    //println(i);
  }
}

public void clear() {
  cp5.get(Textfield.class,"textValue").clear();
  
}

void controlEvent(ControlEvent theEvent) {
  if(theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
            +theEvent.getName()+"': "
            +theEvent.getStringValue()
            );
    }
  }
  */
public void input(String theText) {
  //public void enteryourphrase(String theText) {
  // automatically receives results from controller input
  println("a mf textfield event for controller 'input' : "+theText);
   Table table = loadTable("zooMockUpCSV.csv","header");
  //String s = table.getString(1, 1);   // s now has the value
  //println(s);
  timestamp =  nf(month(),2) + "-" + nf(day(),2)  + "-" + year()+ "-"  
  + nf(hour(),2) + nf(minute(),2); /*+ nf(second(),2);*/
  println(timestamp);
  TableRow newRow = table.addRow();
// Set the values of that row
//newRow.setInt("Year", 2013);
//newRow.setFloat("PercentCurrentSmokers", 25.6);
newRow.setString("PHRASE", theText);
newRow.setString("TIMESTAMP", timestamp);
saveTable(table, "data/zooMockUpCSV.csv");

  }




