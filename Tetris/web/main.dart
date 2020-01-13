
import 'package:Tetris/tetris.dart';
import 'dart:html';
import 'dart:async';
import 'dart:math';










void main() {
  
  CanvasElement board;
  

   var width=10;
   var height=20;
   var cellSize=30;
   CanvasRenderingContext2D ctx;

    board=  Element.html('<canvas/>');
    board.width=width*cellSize;
    board.height=height*cellSize;
    ctx=board.context2D;

    ctx.fillStyle='gray';
    ctx.rect(0, 0, board.width,board.height);
    ctx.fill();
  
}

