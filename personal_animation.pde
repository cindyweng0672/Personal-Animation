int bunnyX, bunnyY;
public int m, n;
int bg;
int vx, vy;
int rfx, lfx, rfy, lfy;
int counter1, counter2;
int counter3;
PImage img;
PImage logo;
PImage processing;
PFont coolvetica;

void setup(){
  background(214, 246, 255);
  size(700, 600);
  strokeWeight(0);
  
  img=loadImage("keyboard.png");
  logo=loadImage("youtube logo.png");
  processing=loadImage("processing.png");
  
  //initialize bunnyX, bunnyY
  bunnyX=200;
  bunnyY=340;
  
  //initialize bg
  bg=155;
  
  //initialize vx&vy
  vx=2;
  vy=5;
  
  //initialize rf, lf
  rfx=250;
  lfx=250;
  
  rfy=530;
  lfy=530;
  
  //initialize counter3
  counter3=0;
}

void draw(){
  //table 
  rotate(radians(-5));
  stroke(214, 246, 255);
  fill(80, 49, 33);
  rect(-100, 400, 800, 500, 50, 50, 50, 50);
  rotate(radians(5));

  KeyBoard(70, 450) ;
  
  computerScreen(70, 50);
  
  //keyboard image
  translate(200, 480);
  rotate(radians(-1));
  image(img, 0, 0);
  rotate(radians(1));
  translate(-200, -460); 
  
  //youtube logo
  logo.resize(50, 30);
  image(logo, 130, 120);
  
  hands(250, 530);
  
  video(125, 150);
  
  stroke(255, 255, 255);
  strokeWeight(3);
  
  fill(214, 211, 201);
  rect(435, 150, 100, 50);
  rect(435, 200, 100, 50);
  rect(435, 250, 100, 50);
  rect(435, 300, 100, 50);
  
  //processing
  processing.resize(200, 150);
  
  //blink processing
  counter3=counter3+1;
  
  if (counter3<75){
  image(processing, -500, -500);
}
  
  if (counter3>75){
  image(processing, 280, 220);
  }
  
  if (counter3==150)
  counter3=0;
  
  //hair 
  stroke(26, 5, 5);
  fill(26, 5, 5);
  rect(400, 300, 300, 500, 300, 300, 100, 100);
  
  //bounce the bunny
  bunnyX=bunnyX+vx;
  bunnyY=bunnyY+vy;
  
  if (bunnyX<150)
  vx=2;
  
  if (bunnyX>400)
  vx=-2;
  
  if (bunnyY<250)
  vy=5;
  
  if(bunnyY>350)
  vy=-5;
 
  //move the left hand 
  counter1=counter1+1;
  
  if (counter1<10)
  lfy=lfy+2;
  
  if (counter1>10)
  lfy=lfy-2;
  
  if (counter1==20){
  counter1=0;
  lfy=530;
  } 
  
  //move the right hand
  counter2=counter2+1;
  
  if (counter2<10)
  rfy=rfy-2;
  
  if (counter2>10)
  rfy=rfy+2;
  
  if (counter2==20){
  counter2=0;
  rfy=530;
  }
  
  //title of the video 
  textAlign(LEFT, CENTER);
  textSize(20);
  text("Bunny Animation", 125, 370);

}

void computerScreen(int x, int y){
  
  //grey rect
  strokeWeight(0);
  stroke(143, 146, 157);
  fill(143, 146, 157);
  rect(x-6, y, 500, 405, 50, 50, 50, 50);
  
  //black rect
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(x, y, 500, 400, 50, 50, 50, 50);
  
  //white rect(web)
  fill(255, 255, 255);
  rect(x+25, y+30, 450, 350);
  
  //buttons 
  fill(216, 71, 71);
  ellipse(x+40, y+50, 10, 10);
  
  fill(234, 202, 69);
  ellipse(x+55, y+50, 10, 10);
  
  fill(0, 255, 255);
  ellipse(x+70, y+50, 10, 10);
  
  //address bar
  fill(216, 210, 210);
  rect(x+30, y+55, 440, 30, 100, 100, 100, 100);
  
  //camera
  fill(53, 54, 57);
  ellipse(x+255, y+15, 10, 10);
}

void video(int m, int n){
 fill(76, 180, 227);
 rect(m, n, 300, 200);
 
 //picture 
   //background mountains 
   stroke(57, 167, 41);
   strokeWeight(0);
   fill(57, 167, 41);
   ellipse(bg, n+150, 60, 60);
   ellipse(bg+60, n+150, 60, 60);
   ellipse(bg+120, n+150, 60, 60);
   ellipse(bg+180, n+150, 60, 60);
   ellipse(bg+240, n+150, 60, 60);
  // ellipse(m+330, n+150, 60, 60);
   
   //ground 
   strokeWeight(0);
   stroke(209, 175, 107);
   fill(209, 175, 107);
   rect(m, n+150, 300, 50);
   
   //bunny 
   strokeWeight(1);
   stroke(255, 255, 255);
   fill(255, 255, 255);
   ellipse(bunnyX, bunnyY, 50, 50);
   ellipse(bunnyX-15, bunnyY-30, 10, 70);
   ellipse(bunnyX+15, bunnyY-30, 10, 70);
   ellipse(bunnyX-20, bunnyY+25, 30, 10);
   ellipse(bunnyX+20, bunnyY+25, 30, 10);
     
     //eyes
     fill(0, 0, 0);
     
     ellipse(bunnyX-15, bunnyY-5, 10, 10);
     ellipse(bunnyX+15, bunnyY-5, 10, 10);
   
}

void KeyBoard(int a, int b){
  
  translate(a+5, b);
  rotate(radians(-7));
  strokeWeight(0);
  stroke(143, 146, 157);
  fill(143, 146, 157);
  rect(0, 0, 500, 300, 20, 20, 0, 0);
  
  /*stroke(80, 49, 33);
  fill(80, 49, 33);
  triangle(a, 600, a+100, 600, a-10, 460);*/
  
  //mouse pad
  stroke(0, 0, 0);
  strokeWeight(2);
  line(a+180, b+100, a+220, 600);
  
  strokeWeight(3);
  line(a+180, b+100, a+400, b+100);
  rotate(radians(7));
  translate(-a-5, -b);
 
  
}

void hands(int c, int d){
  
  strokeWeight(0);
  stroke(232, 209, 164);
  fill(232, 209, 164);
  rect(lfx, lfy, 45, 200);
  rect(rfx+100, rfy, 45, 200);
  
  stroke(232, 209, 164);
  strokeWeight(0);
  fill(232, 209, 164);
  
  //left hand
  ellipse(lfx+22, lfy-5, 50, 30);
  ellipse(lfx+10, lfy-10, 10, 30);
  ellipse(lfx+20, lfy-10, 10, 30);
  ellipse(lfx+30, lfy-10, 10, 30);
  ellipse(lfx+40, lfy-10, 10, 30);
  
  ellipse(lfx-3, lfy-10, 10, 20);
  
  //right hand
  ellipse(rfx+122, rfy-5, 50, 30);
  ellipse(rfx+110, rfy-10, 10, 30);
  ellipse(rfx+120, rfy-10, 10, 30);
  ellipse(rfx+130, rfy-10, 10, 30);
  ellipse(rfx+140, rfy-10, 10, 30);
  
  ellipse(rfx+145, rfy-10, 10, 20);
  
}
