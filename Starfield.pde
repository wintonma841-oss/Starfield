//your code here
void setup()
{
	size(800, 800);
  noStroke();
  for (int i =0; i<1000; i++) {
    Paxson[i]= new Star();
  }//end of for loop 1
  for (int i =0; i<10; i++) {
    Cormac[i]=new Unfairness();
  }//end of for loop oddball
}
void draw()
{
	background(0);
  fill(255,180,180);
  ellipse(350,400,220,200);
  ellipse(430,380,250,230);
  ellipse(520,420,280,260);
  
  for (int i =0; i<1000; i++) {
    Paxson[i].show();
    Paxson[i].drift();
  }//end of for loop normal
  for (int i =0; i<10; i++) {
    Cormac[i].show();
    Cormac[i].drift();
  }//end of for loop oddball
}
class Star
{
  int myRed, myGreen, myBlue;
  int myOpacity;
  int myHeight, myWidth;
  double myX, myY;
  double myAngle, mySpeed;
  Star() {//constructor!
    myX=400;
    myY=400;
    myAngle=Math.random()*2*PI;
    mySpeed=(((Math.random()*12)/6));
    myRed=(int)((Math.random()*225)+30);
    myGreen=(int)((Math.random()*225)+30);
    myBlue=(int)((Math.random()*225)+30);
    myOpacity=(int)(Math.random()*60)+60;
    myHeight=5;
    myWidth= 5;
  }//end of constructor
void show() {
    fill(myRed, myGreen, myBlue);
    ellipse((int) myX, (int) myY, myHeight, myWidth);
  }//end of show()
void drift() {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }//end of drift()
}//end of Star

class Unfairness extends Star { //inherits from Particle
	Unfairness() {//constructor!
    myX=400;
    myY=400;
    myAngle=Math.random()*2*PI;
    mySpeed=5;
    myRed=(int)255;
    myGreen=0;
    myBlue=0;
    myOpacity=(int)(Math.random()*60)+60;
    myHeight=20;
    myWidth= 20;
  }//end of unfairness constructor
}


