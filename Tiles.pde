
class Tile
{
  int xPos=0;
  int yPos=0;
  int tileHeight = 25;
  int tileWidth = tileHeight;
  boolean isOn=false;
  boolean playerCollision=false;
  Rectangle bbT;

  Tile()
  {
    bbT = new Rectangle(xPos, yPos, tileWidth, tileHeight);
  }

  void display()
  {
    if (isOn)
    {
      fill(255, 255, 0);
      rect(xPos, yPos, tileWidth, tileHeight);
    }
  }

  void showTile(int posX, int posY)
  {
    xPos=posX;
    yPos=posY;
    isOn=true;
  }

  void switchOff()
  {
    isOn=false;
  }

  //collision detection 
  boolean checkCollisionWithPlayer() {
    for (int i=0; i<players.length; i++) {
      float playerX=players[i].getX();
      float playerY=players[i].getY();
      int playerH=62;
      int playerW=62;
      Rectangle bb = players[i].boundingBox;

      if ( bb.intersects(bbT)) { //collide with right side of tile
        print(":OOOO");
      }

      /*if ((players[i].getX()+62)>xPos && (players[i].getX())<(xPos+tileWidth)) { //left side of tile
       println(players[i].getX());
       if
       ((players[i].getY()+62) > yPos && (players[i].getY())<(yPos+tileHeight)) {
       return true;
       }
       }*/
    }
    return true;
  }

  void test() {
    if (checkCollisionWithPlayer()) {
      println("YES");
    } else {
      println("NO");
    }
  }
}