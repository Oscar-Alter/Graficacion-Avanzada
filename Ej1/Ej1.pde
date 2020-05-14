Circulo[] circulos = new Circulo[30];
int totalCirculos = 30;
int sumador = 10;

void setup(){
  size(300, 300);
  for(int i = 0; i < totalCirculos; i++){
    circulos[i] = new Circulo(random(width), height - sumador * i, 15);
  }
}

void draw(){
  background(#000000);
  for(int i = 0; i < totalCirculos; i++){
    circulos[i].generar();
    circulos[i].mouseDragged(mouseX, mouseY);
  }
}
