class Circulo{
  
  public float radio;
  public float x;
  public float y;
  
  Circulo(float cir_x, float cir_y, float r){
    radio = r;
    x = cir_x;
    y = cir_y;
  }
  
  // Metodo para medir distancia del centro del circulo a un punto
  private float distanciaEntreDosPuntos(float punto_x, float punto_y){
    return sqrt((punto_x - x) * (punto_x - x) + (punto_y - y) * (punto_y - y));
  }
  
  // Metodo para generar el circulo
  public void generar(){
    fill(#FFFFFF);
    ellipse(x, y, radio * 2, radio * 2);
  }
  
  // Evento de arrastre con el mouse del circulo
  public void mouseDragged(float mouse_x, float mouse_y){
    float distanciaActual = distanciaEntreDosPuntos(mouse_x, mouse_y);
    
    if(distanciaActual < radio && mousePressed == true){
      x = mouse_x;
      y = mouse_y;
    }
  }
  
}
