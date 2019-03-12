/*
  Classe Arete
 3 proprietées:
 -le point initial
 -le point final
 -le cout
 */

class Arete
{
  int initial;
  int finale;
  float cout;

  Arete(int initial, int finale, float cout)
  {
    this.initial = initial;
    this.finale = finale;
    this.cout = cout;
  }
}


//Fonction liéé a la classe Arete



//Cette fonction nous permet de saisir une arete
Arete saisirArete()
{
  int initial, finale;
  float cout = 0;
  do {
    initial = askInteger("Entrer le sommet initial:");
  } while (initial <0);

  do {
    finale = askInteger("Entre le sommet final:");
  } while (finale < 0);

  do {
    cout = askInteger("Entrer le cout:");
  } while (cout < 0);


  return new Arete(initial, finale, cout);
}
