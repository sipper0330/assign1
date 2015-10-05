
PImage resA;
PImage resB;
PImage star;
PImage life;
PImage bg1;
PImage bg2;
int y,k,x,z,e,f,q,s,r,j,c,g,o;

void setup(){
size(640,480);
resA=loadImage("img/enemy.png");
resB=loadImage("img/fighter.png");
star=loadImage("img/treasure.png");
life=loadImage("img/hp.png");
bg1=loadImage("img/bg1.png");
bg2=loadImage("img/bg2.png");
colorMode(RGB);
color(234,34,34);

s=floor(random(10,600));
r=floor(random(10,308));
c=floor(random(30,215));
g=floor(random(10,430));
k=-641;
j=-641;
y=0;
x=0;
f=0;
z=0;
o=0;
q=0;
}

void draw(){
  image(bg1,o+j,0);
  image(bg2,y,0);
  image(resA,x,g);
  image(resB,580,200);
  image(star,s,r);
  fill(234,34,34);
  rectMode(CORNERS);
  rect(9,12,c,32); 
  image(life,7,9);
  k++;
  j++;
  j%=641;
  o=(k/641*(-641));
  o%=(-1282);
  z++;
  f++;
  f%=641;
  q=(z/641*(-641));
  q%=(-1282);
  y=q+f;
  x+=3;
  x%=640; 
 }
