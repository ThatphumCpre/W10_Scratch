
Parrot parrot;
void setup() {
  size(1000, 1000);

  parrot = new Parrot(); 
  
}
void draw() { 
  background(255);
  fill(0);
  parrot.drawParrot();
} 

public class Parrot {
  private int positionX, positionY, size;
  private float speed; 
  
  Parrot() {
    size=100;
    positionX=width/2;
    positionY=height/2;
    speed=0.05; 
  }
  
  void drawParrot() {
    ellipse(positionX, positionY, size, size); 
    this.move();
  }
  
  public float getXposition() {
    return positionX;
  }
  
  public float getYposition() { 
    return positionY;
  }
  
  private void move() {
    if(mouseX != positionX){
    float targetX = mouseX;
    float dx = targetX - positionX;
    positionX += dx * speed;
    }
    if(mouseY != positionY){
    float targetY = mouseY;
    float dy = targetY - positionY;
    positionY += dy * speed;
    }
  }
}