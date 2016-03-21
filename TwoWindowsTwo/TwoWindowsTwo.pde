import javax.swing.*;
SecondApplet s;
import controlP5.*;//P5
import java.util.Date;
PImage img_1; //P5
PImage img_2; //P5
PImage img_3;//P5
ControlP5 cp5;//P5
String textValue = "";//P5
String timestamp;//P5
//int i;

 void setup() {
   PFrame f = new PFrame(1500,800);
  size(1500,800);
  fill(150, 0, 130);
  rect(10,20,30,40);
  img_1 = loadImage("roar2.png");//P5
  img_2 = loadImage("theQuestion.png");//P5
  img_3 = loadImage("instructions.png");//P5
 frame.setTitle("first window");
  f.setTitle("second window");
  background(255);
  PFont font = createFont("arial",20);//P5
  Date d = new Date();//P5
  println("1 " + d.getTime());//P5
  
  cp5 = new ControlP5(this);//P5
  
  cp5.addTextfield("input")//P5
     .setPosition(800,600)//P5
     .setSize(600,40)//P5
     .setFont(font)//P5
     .setFocus(true)//P5
     .setColor(color(255));//P5
     textFont(font);//P5
}

void draw() {
  //println(mouseX);
  image(img_1, 5, 0);//P5
  image(img_2, 650,215);//P5
  image(img_3, 850,645);//P5
  fill(0,255,0);
  //text(cp5.get(Textfield.class,"input").getText(), 360,130);
  text(textValue, 360,180);//P5
}
public void clear() {//P5
  cp5.get(Textfield.class,"textValue").clear();//P5
  
}//P5

void controlEvent(ControlEvent theEvent) { //P5
  if(theEvent.isAssignableFrom(Textfield.class)) { //P5 
    println("controlEvent: accessing a string from controller '"//P5
            +theEvent.getName()+"': "//P5
            +theEvent.getStringValue()//P5
            );//P5
  }//P5
}

public class PFrame extends JFrame {
  public PFrame(int width, int height) {
    setBounds(100, 100, width, height);
    fill(255,0,0);
    ellipse(40,50,100,100);
    s = new SecondApplet();
    add(s);
    s.init();
    show();
    }
}




