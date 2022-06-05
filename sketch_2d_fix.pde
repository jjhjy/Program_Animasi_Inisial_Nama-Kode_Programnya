float scale = 1;
float xPan = 720;
float yPan = 450;
int posisi_awal = 0;
int pergeseran = 5;
boolean zoomIn = false;
boolean zoomOut = false;
boolean panUp = false;
boolean panDown = false;
boolean panLeft = false;
boolean panRight = false;
boolean rotateX = false;
boolean rotateY = false;

void setup(){
  size(1440,900,P2D);
}

void draw(){
  translate(width/2, height/2);
  scale(scale);
  translate(-xPan, -yPan);
  background(0);
  if(rotateX){
    rotate(radians(posisi_awal));
  }
  if(rotateY){
    rotate(radians(-posisi_awal));
  }
  posisi_awal += pergeseran;

  if (posisi_awal < 0){
    pergeseran = -pergeseran;
    posisi_awal += pergeseran;
  }
  
  pushMatrix();
  fill(#DEA057);
  triangle(500,100,350,300,650,300);
  fill(0);
  quad(450,260,420,300,580,300,550,260);
  triangle(500,170,462,230,538,230);
  popMatrix();
  
  noStroke();
// gambar huruf g
fill(#DEA057);
rect(700,100,40,200);

fill(#DEA057);  
rect(700,100,156,40);

fill(#DEA057);
rect(700,260,160,40);

fill(#DEA057);
rect(750,170,100,40);

fill(#DEA057);
rect(820,170,40,115);

//gambar huruf p
  fill(#DEA057);
  rect(910, 100,60,300);
 
  fill(#DEA057);
  ellipse(1010, 190,190,190);
  
  fill(0);
  ellipse(1020, 190,100,117);
  
  if(zoomIn){
    scale *= 1.01;
  }
  if(zoomOut){
    scale /= 1.01;
  }
  if(panUp){
    yPan += 1.01;
  }
  if(panDown){
    yPan -= 1.01;
  }
  if(panLeft){
    xPan += 1.01;
  }
  if(panRight){
    xPan -= 1.01;
  }
}

void keyPressed(){
  if(keyCode == UP){
    zoomIn = true;
    zoomOut = false;
  }
  if(keyCode == DOWN){
    zoomOut = true;
    zoomIn = false;
  }
  if(key == 'w'){
    panUp = true;
    panDown = false;
  }
  if(key == 's'){
    panDown = true;
    panUp = false;
  }
  if(key == 'a'){
    panLeft = true;
    panRight = false;
  }
  if(key == 'd'){
    panRight = true;
    panLeft = false;
  }
  if(key == 'x'){
    rotateX = true;
  }
  if(key == 'y'){
    rotateY = true;
  }
}

void keyReleased(){
  if(keyCode == UP){
    zoomIn = false;
  }
  if(keyCode == DOWN){
    zoomOut = false;
  }
  if(key == 'w'){
    panUp = false;
  }
  if(key == 's'){
    panDown = false;
  }
  if(key == 'a'){
    panLeft = false;
  }
  if(key == 'd'){
    panRight = false;
  }
  if(key == 'x'){
    rotateX = false;
  }
  if(key == 'y'){
    rotateY = false;
  }
}
