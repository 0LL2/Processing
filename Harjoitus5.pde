/*
*  Harjoitus 5.
*
*/

float x = 0;
PFont fontti;
//int luku = 0;
String str_numero = "";
int numero;
int arvaukset = 0;
void setup()
{
  size(1000, 1000);
  x = random(100);
  fontti = createFont("Arial", 16, true);
}
void draw()
{
  background(81);
  int arvo = round(x);
  
  textFont(fontti, 50);
  fill(255, 255, 255);
  //text(arvo, 100, 100);
  text(numero, 450, 220);
  text("Arvaa luku väliltä 0-100", 220, 150);
  text("Arvauksien määrä:", 230, 420);
  text(arvaukset, 660, 420);
  if(numero > arvo)
  {
    text("Liian iso", 370, 300);
  }
  if(numero < arvo)
  {
    text("Liian pieni", 370, 300);
  }
  if(numero == arvo)
  {
    text("OIKEIN!!!!", 370, 300);
  }
    if (mousePressed && mouseX>340 && mouseY>750 && mouseX<540 && mouseY<800) {
      str_numero = "";
      numero = 0;
      arvaukset = 0;
      x = random(100);
    }
  
  fill(220, 50, 150);
  rect(400, 750, 190, 50);
  fill(1);
  text("Resetoi", 410, 795);

}
void keyTyped()
{
  if (key >= '0' && key <= '9')
  {
    str_numero += key;
  }
  if(key == ENTER || key == RETURN)
  {
    numero = int(str_numero);
    arvaukset++;
    str_numero = "";
  }
  

}
