  int sum = 0; //sum of all dice on screen
   void setup()
  {
      noLoop();
      size(1000, 1000);
  }
  void draw()
  {
    background(0);
    //background
    for(int i = 0; i < 255; i++){
      for(int j = 0; j < 255; j++){
      noStroke();
      fill(j,i,0);
      ellipse(i * 4,j * 4,5,5);
      ellipse(i * 4,j * 4,5,5);
      }
    }
      //your code here
      //displaying the dice
      for(int i = 0; i < 10; i++){
         for(int j = 0; j < 9; j++){
      Die dice = new Die(i * 100, j * 100 + 100);
      dice.roll();
      dice.show();
      sum += dice.diceRoll;
         }
      }
      //sum of all rolls
      textAlign(CENTER, CENTER);
      textSize(69);
      text("Total: " + sum, 500, 50);
      sum = 0;
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX;
      int myY;
      int diceRoll;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
      }
      void roll()
      {
          //your code here
          diceRoll = (int)(Math.random() * 6 + 1);
          
      }
      void show()
      {
          //your code here
          strokeWeight(2);
          stroke(0);
          fill(255);
          rect(myX, myY, 100, 100, 15);
          fill(0);
          textAlign(CENTER, CENTER);
          strokeWeight(0);
          switch(diceRoll) {
          case 1:
          ellipse(myX + 50, myY + 50, 25, 25);
          break;
          case 2: 
          ellipse(myX + 20, myY + 80, 25, 25);
          ellipse(myX + 80, myY + 20, 25, 25);          
          break;
          case 3:
          ellipse(myX + 50, myY + 50, 25, 25);   
          ellipse(myX + 20, myY + 80, 25, 25);
          ellipse(myX + 80, myY + 20, 25, 25);
          break;
          case 4: 
          ellipse(myX + 20, myY + 20, 25, 25); 
          ellipse(myX + 20, myY + 80, 25, 25);
          ellipse(myX + 80, myY + 80, 25, 25);
          ellipse(myX + 80, myY + 20, 25, 25);
          break;
          case 5:
          ellipse(myX + 50, myY + 50, 25, 25);    
          ellipse(myX + 20, myY + 20, 25, 25);
          ellipse(myX + 20, myY + 80, 25, 25);
          ellipse(myX + 80, myY + 20, 25, 25);
          ellipse(myX + 80, myY + 80, 25, 25);
          break;
          case 6: 
          ellipse(myX + 20, myY + 80, 25, 25);   
          ellipse(myX + 20, myY + 50, 25, 25);
          ellipse(myX + 20, myY + 20, 25, 25);
          ellipse(myX + 80, myY + 80, 25, 25);
          ellipse(myX + 80, myY + 50, 25, 25);
          ellipse(myX + 80, myY + 20, 25, 25);
          break;
}
      }
  }
