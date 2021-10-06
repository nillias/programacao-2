class Bola2 {
  int lBola2 = height/20; //Tamanho da bola
  int rBola2 = lBola2/2;   //Raio da Bola
  int lPlataforma = height/5; //Largura da Plataforma

void bola2() {
 
  fill(255);
  circle(xBola2, yBola2, lBola2);

  //Direção da bola
  xBola2 += d2X;
  yBola2 += d2Y;

  //fim de jogo 
  if (xBola2 + rBola2 >= width) {  
    xBola2 = lBola2;
    yBola2 = height/2;
    d2X = 3;
    d2Y = 2;
    pontos =+ pontos;
    
    perdeu = true;
  }

  //Colisão da bolinha no eixo X (lado esquerdo)
  if (xBola2 <= 0+rBola2) {  
    d2X = -d2X;
    d2X = d2X+1;
    d2Y = d2Y+1;
  }

  //Colisão da bolinha no eixo Y, (em cima e em baixo)
  if (yBola2 >= height-lBola2/2 || yBola2 <= 42+lBola2) {  
    d2Y = -d2Y;
  }

  //Colisão da bolinha com a Plataforma
  if (xBola2 + rBola2 >= xPlataforma - 11 && yBola2 - 5 + rBola2 >= yPlataforma && yBola2 - rBola2 <= yPlataforma + lPlataforma) {  
    d2X = -d2X;
    pontos+=1;
  }
}

}
