part of '../../tetris.dart';

class Block{
  List<Tile> tiles =List<Tile>(4);
  Tile rotationTile;
  String color;


  void move(String direction){
    switch(direction){
      case 'left':
      tiles.forEach((t)=>t.x-=1);
      break;

      case 'right':
      tiles.forEach((t)=>t.x+=1);
      break;

      case 'up':
      tiles.forEach((t)=>t.y-=1);
      break;

      case 'down':
      tiles.forEach((t)=>t.y+=1);
      break;

    }
  }

    void rotateRight(){
      tiles.forEach(
        (tile){
          int x=tile.x;
          int y=tile.y;

          tile.x=rotationTile.x-(y-rotationTile.y);
          tile.y=rotationTile.y+(x-rotationTile.x);

        }
      );
    }

    void rotateLeft(){
      tiles.forEach(
        (tile){
          int x=tile.x;
          int y=tile.y;

          tile.x=rotationTile.x+(y-rotationTile.y);
          tile.y=rotationTile.y-(x-rotationTile.x);

        }
      );
    }

  }
