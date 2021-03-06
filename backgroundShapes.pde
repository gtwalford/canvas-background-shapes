BGshape[] shapes = new BGshape[3];
int shapeCount = 3;


// Start Setup
void setup(){

  size (2000,2000, OPENGL);

  smooth();

  for (int i=0; i<shapes.length; i++) {
    shapes[i] = new BGshape();
  }

} // End Setup


// Start Draw Loop
void draw(){
  background(250);

  ambientLight(150, 150, 150);
  // pointLight(255, 255, 255, width/2, height/2, 0);

  for (int i = 0; i<shapeCount;i++) {
    shapes[i].moving();
  }

}//END Draw


//Start BGshape Class
class BGshape {

  float x, y, z;
  float a, b, c, d, e, f, g, h, i, j, k, l;
  float velX,velY,velZ,velX1,velY1,velZ1,velX2,velY2,velZ2,velX3,velY3,velZ3,velX4,velY4,velZ4;

  // Start BGshape Setup
  BGshape(){
    x = random(0,255);
    y = random(0,255);
    z = random(0,255);

    a = random(0,height);
    b = random(0,height);
    c = random(0,-100);
    d = random(0,height);
    e = random(0,height);
    f = random(0,-100);
    g = random(0,height);
    h = random(0,height);
    i = random(0,-100);
    j = random(0,height);
    k = random(0,height);
    l = random(0,-100);

    velX =  random(-.15,.15);
    velY =  random(-.15,.15);
    velZ =  random(-.15,.15);
    velX1 = random(-.15,.15);
    velY1 = random(-.15,.15);
    velZ1 = random(-.15,.15);
    velX2 = random(-.15,.15);
    velY2 = random(-.15,.15);
    velZ2 = random(-.15,.15);
    velX3 = random(-.15,.15);
    velY3 = random(-.15,.15);
    velZ3 = random(-.15,.15);
    velX4 = random(-.15,.15);
    velY4 = random(-.15,.15);
    velZ4 = random(-.15,.15);

  } //END BGshape

  // Start BGshape Moving
  void moving(){
    noStroke();
    fill (x,y,z, 150);

    beginShape();
    normal(0,0,50);
    vertex(a,b,c);
    vertex(d,e,f);
    vertex(g,h,i);
    vertex(j,k,l);
    vertex(a,b,c);
    endShape();

    fill (x,y,z, 100);

    beginShape();
    vertex(a,b,c+500);
    vertex(d,e,f+500);
    vertex(g,h,i+500);
    vertex(j,k,k+500);
    vertex(a,b,l+500);
    endShape();

    a+=velX;
    b+=velY;
    c+=velZ;
    d+=velX1;
    e+=velY1;
    f+=velZ1;
    g+=velX2;
    h+=velY2;
    i+=velZ2;
    j+=velX3;
    k+=velY3;
    l+=velZ3;

    if( a > width || a < 0){
    velX *=-1; 
    }
    if( b > height || b < 0){
    velY *=-1;
    }
    if( c > -10 ||c < -100 ){
    velZ *=-1;
    }
    if( d > width || d < 0){
    velX1 *=-1; 
    }
    if( e > height || e < 0){
    velY1 *=-1;
    }
    if( f > -10 || f < -100){
    velZ1 *=-1;
    }
    if( g > width || g < 0){
    velX2 *=-1; 
    }
    if( h > height || h < 0){
    velY2 *=-1;
    }
    if( i > 0 || i < -100){
    velZ2 *=-1;
    }
    if( j > width || j < 0){
    velX3 *=-1; 
    }
    if( k > height || k < 0){
    velY3 *=-1;
    }  
    if( l > 0 || l < -100){
    velZ3 *=-1;
    }

  }//END Moving

} //END CLASS
