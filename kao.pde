
void kao(){
  
  fill(255, 243, 104);
  pushMatrix();
  translate(0, 0, 0);
  sphere(100);
  popMatrix();
  
  fill(255, 243, 104);
  pushMatrix();
  translate( 0, 50, 0);
  pillar(100, 100 , 100);
  popMatrix();
  
  drawEda();
  drawMouth();
  drawEyes();
  drawSobakasu();
}

void drawEda(){
  
  fill(56, 144, 83);
  pushMatrix();
  translate( -80, -100, 0);
  rotateZ(-70);
  pillar(80 + sin(PI/2/30*getFrameCount())*20 , 20 , 20);
  popMatrix();
  
  fill(56, 144, 83);
  pushMatrix();
  translate( -80 , -100, 0);
  rotateZ(70.0 - 0.15);
  pillar(90 + sin(PI/2/30*getFrameCount())*20, 20 , 20);
  popMatrix();
}

void drawSobakasu(){
  
  fill(255, 0, 0);
  pushMatrix();
  translate(-35, 35, -95);
  rotateY(123);
  ellipse(8,8,8,12);
  popMatrix();
  
  fill(255, 0, 0);
  pushMatrix();
  translate(-50, 35, -90);
  rotateY(123);
  ellipse(8,8,8,12);
  popMatrix();
  
  //
  
  fill(255, 0, 0);
  pushMatrix();
  translate(35, 35, -95);
  rotateY(-0.4);
  ellipse(8,8,8,12);
  popMatrix();
  
  fill(255, 0, 0);
  pushMatrix();
  translate(50, 35, -85);
  rotateY(-0.2);
  ellipse(8,8,8,12);
  popMatrix();
}

void drawEyes(){
  
  fill(0, 0, 0);
  pushMatrix();
  translate(-50, 0, -88);
  rotateY(123);
  ellipse(0,0,40,50);
  popMatrix();
  
  fill(255, 255, 255);
  pushMatrix();
  translate(-46, -4, -91);
  rotateY(123);
  ellipse(5,5,30,40);
  popMatrix();
  
  fill(0, 0, 0);
  pushMatrix();
  translate(-43, -11 - sin(PI/2/30*getFrameCount())*5, -93);
  rotateY(123);
  ellipse(8,8,27,27);
  popMatrix();
  
  //
  
  fill(0, 0, 0);
  pushMatrix();
  translate(50, 0, -88);
  rotateY(123 + 90);
  ellipse(0,0,40,50);
  popMatrix();
  
  fill(255, 255, 255);
  pushMatrix();
  translate(46, -4, -91);
  rotateY(123 + 90);
  ellipse(5,5,30,40);
  popMatrix();
  
  fill(0, 0, 0);
  pushMatrix();
  translate(43, -11 - sin(PI/2/30*getFrameCount())*5, -94);
  rotateY(123 + 90);
  ellipse(8,8,27,27);
  popMatrix();
  
}

void drawMouth(){
  fill(0, 0, 0);
  pushMatrix();
  translate(0, 45, -100);
  triangle(0, 
  40  - sin(PI/2/30*getFrameCount())*5,
  20  , sin(PI/2/30*getFrameCount())*5,
  -20 , sin(PI/2/30*getFrameCount())*5);
  popMatrix();
  
  fill(255, 0, 0);
  pushMatrix();
  translate(0, 45, -101);
  triangle(0, 
  35  - sin(PI/2/30*getFrameCount())*5,
  15  , 3 + sin(PI/2/30*getFrameCount())*5,
  -15 , 3 + sin(PI/2/30*getFrameCount())*5);
  popMatrix();
}