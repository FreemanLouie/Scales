void setup() {
  background(0);
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}

void draw() {
  //your code here
  for(int j = 0; j < 501; j+=100){
    for(int i = 0; i < 501; i+=50){
      scale(i,40+j);
    }
  }
}
void scale(int x, int y) {
  noStroke();
  //Top pill
  double rand = (int)(Math.random()*3); 
  if (rand == 0)
    fill(#e10052);
    else if (rand == 1) 
    fill(#3ab8f5); 
    else
    fill(#f1b835);
  ellipse(x+20,y-20,40,40);
  rect(x,y-20,40,20);
  
  //Top glare
  if (rand == 2)
    fill(#66b3b3);
  else 
    fill(#f1b835);
  rect(x+10,y-30,5,5);
  rect(x+5,y-25,5,23);
  
  //Bottom pill
  rand = (int)(Math.random()*3); 
  if (rand == 0)
    fill(#e10052);
    else if (rand == 1) 
    fill(#3ab8f5); 
    else
    fill(#f1b835);
  ellipse(x+20,y+25,40,40);
  rect(x,y+5,40,20);  
  
  //Bottom glare
  if (rand == 2)
    fill(#66b3b3);
  else 
    fill(#faa339);
  rect(x+5,y+5,5,25);
}
