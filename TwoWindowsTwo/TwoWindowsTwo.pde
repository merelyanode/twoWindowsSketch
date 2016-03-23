import java.awt.Frame;
import java.awt.BorderLayout;
import controlP5.*;//P5
import java.util.Date;
private ControlP5 cp5;//P5
ControlFrame cf;
PImage img_1; //P5
PImage img_2; //P5
PImage img_3;//P5

String textValue = "";//P5
String timestamp;//P5
//int i;



void setup() {
  size(1500, 800, OPENGL);
  cp5 = new ControlP5(this);
  
  // by calling function addControlFrame() a
  // new frame is created and an instance of class
  // ControlFrame is instanziated.
  cf = addControlFrame("extra", 1080,720);

  // add Controllers to the 'extra' Frame inside 
  // the ControlFrame class setup() method below.
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
  img_1 = loadImage("roar2.png");//P5
  img_2 = loadImage("theQuestion.png");//P5
  img_3 = loadImage("instructions.png");//P5
  
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
ControlFrame addControlFrame(String theName, int theWidth, int theHeight) {
  Frame f = new Frame(theName);
  ControlFrame p = new ControlFrame(this, theWidth, theHeight);
  f.add(p);
  p.init();
  f.setTitle(theName);
  f.setSize(p.w, p.h);
  f.setLocation(100, 100);
  f.setResizable(false);
  f.setVisible(true);
  return p;
}

public void input(String theText) { //P5

  //public void enteryourphrase(String theText) {
  // automatically receives results from controller input
  println("a mf textfield event for controller 'input' : "+theText);//P5
   Table table = loadTable("zooMockUpCSV.csv","header");//P5
  //String s = table.getString(1, 1);   // s now has the value//P5
  //println(s);//P5
  timestamp =  nf(month(),2) + "-" + nf(day(),2)  + "-" + year()+ "-"  
  + nf(hour(),2) + nf(minute(),2); 
  ///+ nf(second(),2);
  println(timestamp); //P5
  TableRow newRow = table.addRow(); //P5
// Set the values of that row
//newRow.setInt("Year", 2013);
//newRow.setFloat("PercentCurrentSmokers", 25.6);
newRow.setString("PHRASE", theText);//P5
newRow.setString("TIMESTAMP", timestamp);//P5
saveTable(table, "data/zooMockUpCSV.csv");//P5

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




// the ControlFrame class extends PApplet, so we 
// are creating a new processing applet inside a
// new frame with a controlP5 object loaded
public class ControlFrame extends PApplet {

  int w, h;
  int abc = 100;
  float x11 = random(121,301); //ellipse(x11, y11,
  //float y11 = random(151,360);
  float x12 = random(121,301);
  //float y12 = random(151,360);
  float x13 = random(121,301);
  //float y13 = random(151,360);
  float x14 = random(121,301);
  //float y14 = random(151,380);
  float x15 = random(121,301);
  //float y15 = random(151,380);
  float x16 = random(121,301);
  //float y16 = random(151,380);
  float x17 = random(121,301);
  //float y17 = random(151,380);
  
  //float x11 = random(121,147); //ellipse(x11, y11,
  float y11 = random(151,181); 
  //float x12 = random(147,173);// y ||360 - 151 = 209 || 209/7 = 29+
  float y12 = random(181,211);// x|| 301 - 121 = 180 || 180/7 = 25+
  //float x13 = random(173,199);
  float y13 = random(211,241);
  //float x14 = random(199,225);
  float y14 = random(241,271);
  //float x15 = random(225,251);
  float y15 = random(271,301);
  //float x16 = random(251,277);
  float y16 = random(301,331);
  //float x17 = random(277,301);
  float y17 = random(331,380);
  float xa1 = random(300,400);
  float ya1 = random(225,400);
  float xa2 = random(300,400);
  float ya2 = random(225,400);
  float xa3 = random(300,400);
  float ya3 = random(225,400);
  float xa4 = random(300,400);
  float ya4 = random(225,400);
  float xa5 = random(300,400);
  float ya5 = random(225,400);
  float xa6 = random(300,400);
  float ya6 = random(225,400);
  float xa7 = random(300,400);
  float ya7 = random(225,400);
  float xa8 = random(300,400);
  float ya8 = random(225,400);
  float xb1 = random(380,580);
  float yb1 = random(180,360);
  float xb2 = random(380,580);
  float yb2 = random(180,360);
  float xb3 = random(380,580);
  float yb3 = random(180,360);
  float xb4 = random(380,580);
  float yb4 = random(180,360);
  float xb5 = random(380,580);
  float yb5 = random(180,360);
  float xb6 = random(380,580);
  float yb6 = random(180,360);
  float xb7 = random(380,580);
  float yb7 = random(180,360);
  float xb8 = random(380,580);
  float yb8 = random(180,360);
  float xb9 = random(380,580);
  float yb9 = random(180,360);
  float xb10 = random(380,580);
  float yb10 = random(180,360);
  float xb11 = random(380,580);
  float yb11 = random(180,360);
  float xb12 = random(380,580);
  float yb12 = random(180,360);
  float xc1 = random(581,821);
  float yc1 = random(230,328);
  float xc2 = random(581,821);
  float yc2 = random(230,328);
  float xc3 = random(581,821);
  float yc3 = random(230,328);
  float xc4 = random(581,821);
  float yc4 = random(230,328);
  float xc5 = random(581,821);
  float yc5 = random(230,328);
  float xc6 = random(581,821);
  float yc6 = random(230,328);
  float xc7 = random(581,821);
  float yc7 = random(230,328);
  float xc8 = random(581,821);
  float yc8 = random(230,328);
  float xc9 = random(581,821);
  float yc9 = random(230,328);
  float xc10 = random(581,821);
  float yc10 = random(230,328);
  float xc11 = random(581,821);
  float yc11 = random(230,328);
  float xc12 = random(581,821);
  float yc12= random(230,328);
  float xc13 = random(581,821);
  float yc13 = random(230,328);
  float xc14 = random(581,821);
  float yc14 = random(230,328);
  float xc15 = random(581,821);
  float yc15 = random(230,328);
  float xc16 = random(581,821);
  float yc16 = random(230,328);
  float xc17 = random(581,821);
  float yc17 = random(230,328);
  float xc18 = random(581,821);
  float yc18 = random(230,328);
  float xc19 = random(581,821);
  float yc19 = random(230,328);
  float xc20 = random(581,821);
  float yc20 = random(230,328);
  float xc21 = random(581,821);
  float yc21 = random(230,328);
  float xc22 = random(581,821);
  float yc22 = random(230,328);
  float xc23 = random(581,821);
  float yc23 = random(230,328);
  float xc24 = random(581,821);
  float yc24 = random(230,328);
  float xc25 = random(581,821);
  float yc25 = random(230,328);
  float xc26 = random(581,821);
  float yc26 = random(230,328);
  float xc27 = random(581,821);
  float yc27 = random(230,328);
  float xc28 = random(581,821);
  float yc28 = random(230,328);
  float xc29 = random(581,821);
  float yc29 = random(230,328);
  float xc30 = random(581,821);
  float yc30 = random(230,328);
  float xc31 = random(581,821);
  float yc31 = random(230,328);
  float xc32 = random(581,821);
  float yc32 = random(230,328);
  float xc33 = random(581,821);
  float yc33 = random(230,328);
  float xc34 = random(581,821);
  float yc34 = random(230,328);
  float xc35 = random(581,821);
  float yc35 = random(230,328);
  float xc36 = random(581,821);
  float yc36 = random(230,328);
  float xc37 = random(581,821);
  float yc37 = random(230,328);
  float xc38 = random(581,821);
  float yc38 = random(230,328);
  float xc39 = random(581,821);
  float yc39 = random(230,328);
  float xc40 = random(581,821);
  float yc40 = random(230,328);
  float xc41 = random(581,821);
  float yc41 = random(230,328);
  float xc42 = random(581,821);
  float yc42 = random(230,328);
  float xc43 = random(581,821);
  float yc43 = random(230,328);
  float xc44 = random(581,821);
  float yc44 = random(230,328);
  float xc45 = random(581,821);
  float yc45 = random(230,328);
  float xc46 = random(581,821);
  float yc46 = random(230,328);
  float xc47 = random(581,821);
  float yc47 = random(230,328);
  float xc48 = random(581,821);
  float yc48 = random(230,328);
  float xc49 = random(581,821);
  float yc49 = random(230,328);
  float xc50 = random(581,821);
  float yc50 = random(230,328);
  float xc51 = random(581,821);
  float yc51 = random(230,328);
  float xc52 = random(581,821);
  float yc52 = random(230,328);
  float xc53 = random(581,821);
  float yc53 = random(230,328);
  float xc54 = random(581,821);
  float yc54 = random(230,328);
  float xc55 = random(581,821);
  float yc55 = random(230,328);
  float xc56 = random(581,821);
  float yc56 = random(230,328);
  float xc57 = random(581,821);
  float yc57 = random(230,328);
  float xc58 = random(581,821);
  float yc58 = random(230,328);
  float xc59 = random(581,821);
  float yc59 = random(230,328);
  float xc60 = random(581,821);
  float yc60 = random(230,328);
 
  
  
  int f = 255;
  int fade11 = 0;
  int fadeRect = 0;
  int e = 0;
  int hozo; int numb;
  String xness; String yness; String linus; 
  
  public void setup() {
    size(w, h,OPENGL);
   //frameRate(25);
   // cp5 = new ControlP5(this);
    //cp5.addSlider("abc").setRange(0, 255).setPosition(10,10);
   // cp5.addSlider("def").plugTo(parent,"def").setRange(0, 255).setPosition(10,30);
  }

  void draw(){
  background(0);
  int show1 = 0;  int show2 = 0;  int show3 = 0;  int show4 = 0;  
  int show5 = 0; int show6 = 0; int show7 = 0;
  //make biggest circles green
  
  fill(155,200,100,155);
  //kingOfEllipses
  ellipse(x11, y11, 110, 110);
  ellipse(x12, y12, 95, 95);
  ellipse(x13, y13, 90, 90);
  ellipse(x14, y14, 85, 85); 
  ellipse(x15, y15, 75, 75);
  ellipse(x16, y16, 65, 65); 
  ellipse(x17, y17, 50, 50);

  
  
  //draw lines to all phrases
 
   //if (mouseX > x11 - 4 &&  mouseX < x11 + 4) {
     if (mouseX < x11 + 25 && mouseX > x11 - 25 
     && mouseY < y11 + 25 && mouseY > y11 - 25) {
    show1 = 255;
  } else{
    show1 = 0;
  }
   if (mouseX < x12 + 25 && mouseX > x12 - 25 
   && mouseY < y12 + 25 && mouseY > y12 - 25) {
    show2= 255;
  } else{
    show2 = 0;
  }
   if (mouseX < x13 + 25 && mouseX > x13 - 25
   && mouseY < y13 + 25 && mouseY > y13 - 25)  {
    show3 = 255;
  } else{
    show3 = 0;
  }
   if (mouseX < x14 + 25 && mouseX > x14 - 25
   && mouseY < y14 + 25 && mouseY > y14 - 25)  {
    show4 = 255;
  } 
  else{
    show4 = 0;
  }
   if (mouseX < x15 + 25 && mouseX > x15 - 25
   && mouseY < y15 + 25 && mouseY > y15 - 25)  {
    show5 = 255;
  } 
  else{
    show5 = 0;
  }
   if (mouseX < x16 + 25 && mouseX > x16 - 25
   && mouseY < y16 + 25 && mouseY > y16 - 25) {
    show6 = 255;
  } 
  else {
    show6 = 0;
  }
   if (mouseX < x17 + 25 && mouseX > x17 - 25
   && mouseY < y17 + 25 && mouseY > y17 - 25) {
    show7 = 255;
  } 
  else{
    show7 = 0;
  }
   
  stroke(255,show1);
  strokeWeight(1.5);
  line(x11,y11,xc1,yc1);
  line(x11,y11,xc11,yc11);
  line(x11,y11,xb11,yb11);
   stroke(255,show2);
   //text("wor", x12 - 45, y12 +10);
  line(x12,y12,xc2,yc2);
  line(x12,y12,xc12,yc12);
   stroke(255,show3);
  line(x13,y13,xc3,yc3);
  line(x13,y13,xc13,yc13);
   stroke(255,show4);
  line(x14,y14,xc4,yc4);
  line(x14,y14,xc14,yc14);
   stroke(255,show5);
  line(x15,y15,xc5,yc5);
  line(x15,y15,xc15,yc15);
   stroke(255,show6);
  line(x16,y16,xc6,yc6);
  line(x16,y16,xc16,yc16);
   stroke(255,show7);
  line(x17,y17,xc7,yc7);
  line(x17,y17,xc17,yc17);
 
 
  //line(x12,y12,xc4,yc4); 
  //make smaller circles orange
  noStroke();
  textSize(32);
  fill(255,show1);
  //the big word
  text("monkeys", x11 - 45, y11 +10);
  fill(255,show2);
  text("word", x12 - 45, y12 +10);
  fill(255,show3);
  text("word", x13 - 45, y13 +10);
  fill(255,show4);
  text("word", x14 - 45, y14 +10);
  fill(255,show5);
  text("word", x15 - 45, y15 +10);
  fill(255,show6);
  text("word", x16 - 45, y16 +10);
  fill(255,show7);
  text("word", x17 - 45, y17 +10);
  fill(255,200,0,155);
  ellipse(xa1, ya1, 60, 60); 
  ellipse(xa2, ya2, 60, 60); 
  ellipse(xa3, ya3, 60, 60); 
  ellipse(xa4, ya4, 60, 60); 
  ellipse(xa5, ya5, 60, 60); 
  ellipse(xa6, ya6, 60, 60); 
  ellipse(xa7, ya7, 60, 60); 
  ellipse(xa8, ya8, 60, 60); 
  ellipse(xb1, yb1, 60, 60); 
  ellipse(xb2, yb2, 60, 60); 
  ellipse(xb3, yb3, 60, 60); 
   //fill(155,200,100,155);
  ellipse(xb4, yb4, 60, 60); 
  ellipse(xb5, yb5, 60, 60); 
  ellipse(xb6, yb6, 60, 60); 
  ellipse(xb7, yb7, 60, 60); 
  ellipse(xb8, yb8, 60, 60); 
  ellipse(xb9, yb9, 60, 60); 
  ellipse(xb10, yb10, 60, 60); 
  ellipse(xb11, yb11, 60, 60); 
  ellipse(xb12, yb12, 60, 60); 
  fill(96,64,163,155);
  ellipse(xc1, yc1, 25, 25);
  ellipse(xc2, yc2, 25, 25); 
  ellipse(xc3, yc3, 25, 25); 
  ellipse(xc4, yc4, 25, 25); 
  ellipse(xc5, yc5, 25, 25); 
  ellipse(xc6, yc6, 25, 25); 
  ellipse(xc7, yc7, 25, 25); 
  ellipse(xc8, yc8, 25, 25); 
  ellipse(xc9, yc9, 25, 25); 
  ellipse(xc10, yc10, 25, 25); 
  ellipse(xc11, yc11, 25, 25); 
  ellipse(xc12, yc12, 25, 25); 
  ellipse(xc13, yc13, 25, 25); 
  ellipse(xc14, yc14, 25, 25); 
  ellipse(xc15, yc15, 25, 25); 
  ellipse(xc16, yc16, 25, 25); 
  ellipse(xc17, yc17, 25, 25); 
  ellipse(xc18, yc18, 25, 25); 
  ellipse(xc19, yc19, 25, 25); 
  ellipse(xc20, yc20, 25, 25); 
  ellipse(xc21, yc21, 25, 25); 
  ellipse(xc22, yc22, 25, 25); 
  ellipse(xc23, yc23, 25, 25); 
  ellipse(xc24, yc24, 25, 25); 
  ellipse(xc25, yc25, 25, 25); 
  ellipse(xc26, yc26, 25, 25); 
  ellipse(xc27, yc27, 25, 25); 
  ellipse(xc28, yc28, 25, 25); 
  ellipse(xc29, yc29, 25, 25); 
  ellipse(xc30, yc30, 25, 25); 
  ellipse(xc31, yc31, 25, 25); 
  ellipse(xc32, yc32, 25, 25); 
  ellipse(xc33, yc33, 25, 25); 
  ellipse(xc34, yc34, 25, 25); 
  ellipse(xc35, yc35, 25, 25); 
  ellipse(xc36, yc36, 25, 25); 
  ellipse(xc37, yc37, 25, 25); 
  ellipse(xc38, yc38, 25, 25); 
  ellipse(xc39, yc39, 25, 25); 
  ellipse(xc40, yc40, 25, 25); 
  ellipse(xc41, yc41, 25, 25); 
  ellipse(xc42, yc42, 25, 25); 
  ellipse(xc43, yc43, 25, 25); 
  ellipse(xc44, yc44, 25, 25); 
  ellipse(xc45, yc45, 25, 25); 
  ellipse(xc46, yc46, 25, 25); 
  ellipse(xc47, yc47, 25, 25); 
  ellipse(xc48, yc48, 25, 25); 
  ellipse(xc49, yc49, 25, 25); 
  ellipse(xc50, yc50, 25, 25); 
  ellipse(xc51, yc51, 25, 25); 
  ellipse(xc52, yc52, 25, 25); 
  ellipse(xc53, yc53, 25, 25); 
  ellipse(xc54, yc54, 25, 25); 
  ellipse(xc55, yc55, 25, 25); 
  ellipse(xc56, yc56, 25, 25); 
  ellipse(xc57, yc57, 25, 25); 
  ellipse(xc58, yc58, 25, 25); 
  ellipse(xc59, yc59, 25, 25); 
  ellipse(xc60, yc60, 25, 25); 


  
  //stroke(0);
 // strokeWeight(1.5);
  //use for target holes
  
  //This was already commented outbefore ControlPframe merge
/*
  ellipse(xa, ya, 6, 6);
  ellipse(xb, yb, 6, 6);
  ellipse(xc, yc, 6, 6);
 */ 
 
 //This was already commented outbefore ControlPframe merge
 /*
  line(x1,y1,xa,ya);
  line(x1,y1,xb,yb);
  line(x1,y1,xc,yc);
 
  fill(f,15);
  ellipse(x1, y1, 70, 70);
  */
  
 
  fill(0,fadeRect);
  rect(0,0,1080,720);
  fill(155,200,100,fade11);//fill(255,200,0,b);
  ellipse(x11, y11, 200, 200);
  fill(96,64,163,fade11);
  ellipse(xc1, yc1, 100, 100);
  ellipse(xc11,yc11, 100, 100);
  fill(255,200,0,fade11);//fill(255,200,0,b);
  ellipse(xb11, yb11, 150, 150);
  stroke(255, fade11);
  strokeWeight(1.5);
  //get it started
  line(x11,y11,xc1,yc1);
  line(x11,y11,xc11,yc11);
  //Get this line to show

  fill(255,fade11);
  text("monkeys", x11 - 45, y11 +10);
  textSize(20);
  text("I love the monkeys!", xb11 - 45, yb11 +10);
  text("I love the monkeys!", xc1 - 45, yc1 +10);
  text("I'm scared of monkeys", xc11 - 45, yc11 +10);
 
 //This was already commented outbefore ControlPframe merge
  /*
  fill(255,e);
  noStroke(); 
  textSize(32);
  fill(255);
text("word", x1 - 20, y1 +10);
  */
  } //this is a post-merge comment
  
  void mouseClicked() {
    //if (f == 25) {
    //f = 255;
  //} else {
    //f = 25;
  //}
  if (fadeRect == 200) {
    fadeRect = 0;
  } else {
    fadeRect = 200;
  }
  
  if (mouseX < x11 + 25 && mouseX > x11 - 25 
     && mouseY < y11 + 25 && mouseY > y11 - 25 && fade11 == 200) {
    fade11 = 0;
     } else {
    fade11 = 200;
   
    if (mouseX < x11 + 25 && mouseX > x11 - 25 
     && mouseY < y11 + 25 && mouseY > y11 - 25) {
    println(mouseX);println(mouseY);fade11 = 200;
     } 
     else {
    fade11 = 0;
     } 
    /* //This was already commented outbefore ControlPframe merge
  if (fade11 == 200) {
    fade11 = 0;
  } else {
    fade11 = 200;
    */
  }
  //if (e == 255) { //This (and all below) was already commented outbefore ControlPframe merge
    //e = 0;
  //} else {
   // e = 255;
  //}
  //}
}
  
  private ControlFrame() {
  }

  public ControlFrame(Object theParent, int theWidth, int theHeight) {
    parent = theParent;
    w = theWidth;
    h = theHeight;
  }


  public ControlP5 control() {
    return cp5;
  }
  
  
  ControlP5 cp5;

  Object parent;

  
}




   





