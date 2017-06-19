
void karada(){
  fill(156, 213, 243);
  pushMatrix();
  translate( 0, 165, 0);
  pillar(130, 100 , 100);
  popMatrix();
  
  drawArms();
  drawRibbon();
  drawLegs();
}

void drawLegs(){
  float rotate = sin(PI/2/30*getFrameCount())*PI/15.0;
  
  fill(255, 243, 104);
  pushMatrix();
  translate( 0, 240, 0);
  pillar(20, 100 , 100);
  popMatrix();
  
  //
  
  rotateY(rotate * 1.28);
  fill(255, 243, 104);
  pushMatrix();
  translate( 59, 270, 0);
  pillar(50,  32 , 32);
  popMatrix();
  
  fill(255, 243, 104);
  pushMatrix();
  translate( 59, 290, 0);
  sphere(32);
  popMatrix();
  
  //
  
  rotateY(rotate);
  fill(255, 243, 104);
  pushMatrix();
  translate( -59, 270, 0);
  pillar(50,  32 , 32);
  popMatrix();
  
  fill(255, 243, 104);
  pushMatrix();
  translate( -59, 290, 0);
  sphere(32);
  popMatrix();
}

void drawRibbon(){
  float rotate = 12;
  rotate += sin(PI/2/30*getFrameCount())*PI/8;
  fill(255, 0, 0);
  pushMatrix();
  translate(16, 160, -100);
  rotateZ(-rotate);
  ellipse(0,0,40,30);
  popMatrix();
  
  fill(255, 0, 0);
  pushMatrix();
  translate(-16, 160, -100);
  rotateZ(rotate);
  ellipse(0,0,40,30);
  popMatrix();
}

void drawArms(){
  fill(255, 243, 104);
  pushMatrix();
  translate( 100, 100, 0);
  
  float rotate = 180.2;
  rotate += sin(PI/2/30*getFrameCount())*PI/6;
  rotateZ(rotate);
  pillar(100, 20 , 20);
  
  fill(156, 213, 243);
  pillar(100, 21 , 21);
  
  fill(255, 243, 104);
  pillar(110, 20 , 20);
  translate( 0, 55, 0);
  sphere(20);
  popMatrix();
  
  //
  
  fill(255, 243, 104);
  pushMatrix();
  translate( -100, 100, 0);
  rotateZ(-rotate);
  pillar(100, 20 , 20);
  
  fill(156, 213, 243);
  pillar(100, 21 , 21);
  
  fill(255, 243, 104);
  pillar(110, 20 , 20);
  translate( 0, 55, 0);
  sphere(20);
  popMatrix();
}