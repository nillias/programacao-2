int xPlataforma = 585; 
int yPlataforma = 40;
float xBola = 100;
float yBola = 300;
int xBola2 = 100;
int yBola2 = 400;
float dX = 3;
float dY = 4;
float d2X = 3;
float d2Y = 2;
int pontos;
int ponto = 0;
int t = 0;
int tempo;

boolean perdeu = false;

PFont pacman, greensea;




Bola b;
Bola2 b2;
Plataforma p;



void setup() {
  size(600, 600);
  noStroke();
  b = new Bola();
  b2 = new Bola2();
  p = new Plataforma();
  
  //font = loadFont("");
  pacman = createFont("PAC-FONT.TTF", 32);
  greensea = createFont("GREENSEA.otf", 50);
  
  
  
}

void draw() {
  background(242,154,46);
  
  fill(92, 57, 115, 90);
  rect(0, 40, 600, 2);
  
  textFont(pacman, 100);
  textAlign(CENTER);
  text("pong ", width/2+30, height/2+40);
  
  fill(250);
  textFont(greensea, 20);
  //textSize(height/50);
  text("Tempo: "+t/60, width/3*2, height/50*2);
  text("Pontos: "+pontos, width/3, height/50*2);

  p.plataforma();
  b.bola();
  b2.bola2();
  t++;
  
  if (perdeu) {
  noLoop();
    
  fill(242,154,46);
  rect(0, 0, 600, 600);
  
   
  ponto = pontos;
  fill(242);
  textFont(greensea, 40);
  textAlign(CENTER);
  text("Pontos: "+ ponto, width/2, height/2+100);
  
  tempo = t/60;
  fill(242);
  textFont(greensea, 40);
  textAlign(CENTER);
  text("Tempo: "+ tempo, width/2, height/2+150);
  
  
  
  
  textFont(greensea, 100);
  textAlign(CENTER);
  text("PERDEU", width/2, height/2);
  
  fill(92, 57, 115);
  textFont(greensea, 20);
  textAlign(CENTER);
  text("PRESSIONE S PARA ", width/2, height/2+220);
  text("UM NOVO JOGO ", width/2, height/2+240);
  
  textFont(pacman, 70);
  textAlign(CENTER);
  text("pong ", width/2+15, height/2-200);
  
 
  
  }
  
}

void keyPressed() {
  if (key == 'S' || key == 's') {
  loop();
  perdeu = false;
  t = 0;
  pontos = 0;
  }


}
