class Bola {
  int lBola = height/20; //Tamanho da bola
  int rBola = lBola/2;   //Raio da Bola
  int lPlataforma = height/5; //Largura da Plataforma

void bola() {
 
  fill(92, 57, 115);
  circle(xBola, yBola, lBola);

  //Direção da bola
  xBola += dX;
  yBola += dY;

  //Decressimo 
  if (xBola + rBola >= width & pontos > 0) {  
    xBola = lBola;
    yBola = height/2;
    
    d2X = d2X+1;
    d2Y = d2Y+1;
    pontos = pontos - 1;
    
      
  }

  //Colisão da bolinha no eixo X (lado esquerdo)
  if (xBola <= 0+rBola) {  
    dX = -dX;
    
  }

  //Colisão da bolinha no eixo Y, (em cima e em baixo)
  if (yBola >= height-lBola/2 || yBola <= 42+lBola/2) {  
    dY = -dY;
  }

  //Colisão da bolinha com a Plataforma
  if (xBola + rBola >= xPlataforma - 10 && yBola   + rBola >= yPlataforma +2 && yBola - rBola <= yPlataforma + lPlataforma +2) {  
    dX = -dX;
    
  }
}

}
