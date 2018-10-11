int startX, startY;
int endX, endY;
void setup() {
  size(800, 500);
  startX = 15;
  startY = 150;
  endX = 0;
  endY = 150;
  strokeWeight(5);
}
void draw() {
 
  while (endX < width) {

    endX = startX + (int)Math.random() + 9;
    endY = startY + (int)((Math.random() * 30) - 15);
    stroke(random(255), random(255), random(255));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed() 
{
  startX = 0;
  startY = 150 + (int)((Math.random() * 300) - 50);
  endX = 0;
  endY = 150;
}
