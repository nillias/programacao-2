class Plataforma {
  int lPlataforma = 70; //largura da plataforma
  int aPlataforma = 15; //altura da plataforma
  
  void plataforma() {
  
  fill(242, 68, 68);
  rect(xPlataforma - 10, yPlataforma + 5, aPlataforma, lPlataforma);

  if (keyPressed) {
    if (keyCode == DOWN && yPlataforma <= height-lPlataforma) {  //Faz a Plataformar descer 
      yPlataforma = yPlataforma +15;
    }
    if (keyCode == UP && yPlataforma >= 50) {  //Faz a Plataforma subir
      yPlataforma = yPlataforma -15;
    }
  }
}


}
