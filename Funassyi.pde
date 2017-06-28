float xmag, ymag = 0;
float newXmag, newYmag = 0; 
 
void setup(){ 
  size(640, 640, P3D); 
  noStroke(); 
  initCountFrame();
} 

void draw(){ 
  updateFrameCount();
  background(154,200,234);
  lights();
  pushMatrix(); 
  translate(width/2, height/2, -100); 
  
  if(mousePressed){
    newXmag = mouseX/float(width) * TWO_PI;
    newYmag = mouseY/float(height) * TWO_PI;
  }
  float diff = xmag-newXmag;
  if (abs(diff) >  0.01){ 
    xmag -= diff/4.0; 
  }
  
  diff = ymag-newYmag;
  if (abs(diff) >  0.01){ 
    ymag -= diff/4.0; 
  }
  
  rotateX(-ymag); 
  rotateY(-xmag); 
  
  pushMatrix();
  kao();
  popMatrix();
  
  pushMatrix();
  karada();
  popMatrix();
  popMatrix();
}