int sum;
void setup()
{
  noLoop();
  size(500,500);
}
void draw()
{
sum = 0;
background(130,130,130);
  for(int y = 10; y < 400; y += 50){
    for(int x = 10; x < 490; x += 50){
    Die Bob = new Die(x,y);
    Bob.show();
    } 
  }
textSize(20);
text("sum of dice: " + sum, 175,450);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int numDie, myX, myY, n;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
    sum = sum + n;
  }
  void roll()
  {
    n = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX,myY,30,30);

    if(n == 1){
      noStroke();
      fill(0);
      ellipse(myX + 15,myY + 15,5,5);
    }
    else if(n == 2){
      noStroke();
      fill(0);
      ellipse(myX + 10,myY + 15,5,5);
      ellipse(myX + 20,myY + 15,5,5);
    }
    else if(n == 3){
      noStroke();
      fill(0);
      ellipse(myX + 10,myY + 20,5,5);
      ellipse(myX + 15,myY + 10,5,5);
      ellipse(myX + 20,myY + 20,5,5);
    }
    else if(n == 4){
      noStroke();
      fill(0);
      ellipse(myX + 10,myY + 20,5,5);
      ellipse(myX + 10,myY + 10,5,5);
      ellipse(myX + 20,myY + 20,5,5);
      ellipse(myX + 20,myY + 10,5,5);
    }
    else if(n == 5){
      noStroke();
        fill(0);
        ellipse(myX+10,myY+20,5,5); 
        ellipse(myX+10,myY+10,5,5);
        ellipse(myX+20,myY+20,5,5); 
        ellipse(myX+20,myY+10,5,5);
        ellipse(myX+15,myY+15,5,5);  
    }
    else if(n == 6){
      noStroke();
        fill(0);
        ellipse(myX+10,myY+22,5,5); 
        ellipse(myX+10,myY+8,5,5);
        ellipse(myX+20,myY+22,5,5); 
        ellipse(myX+20,myY+8,5,5);
        ellipse(myX+10,myY+15,5,5);         
        ellipse(myX+20,myY+15,5,5); 
    }
  }
}