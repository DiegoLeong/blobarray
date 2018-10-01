Walker[] bob;
void setup()
{
  size(500,500);
  bob = new Walker[1000];
  for(int i=0; i < bob.length; i++){
  bob[i]=new Walker();
  }
}

void draw()
{
  background(0);
  for(int i=0; i < bob.length; i++){
  bob[i].show();
  bob[i].Walk();
  }
}

class Walker
{
  int myX, myY;
 Walker()
 {
  myX = myY = 250;

 }
 void Walk()
 {
  myX = myX + (int)(Math.random()*7)-3;
  myY = myY + (int)(Math.random()*7)-3;
 }
 void show()
 {
  ellipse(myX,myY,50,50); 
 }
}
