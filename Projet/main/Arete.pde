/*
  Classe Arete
 3 proprietées:
 -le point initial
 -le point final
 -le cout
 */

class Arete
{
  Sommet initial;  
  Sommet finale;

  float cout;

  Arete(Sommet initial, Sommet finale, float cout)
  {
    this.initial = initial;
    this.finale = finale;
    this.cout = cout;
  }
  
  
}

//--------------------------------------------Fonction liéé a la classe Arete

//Cette fonction nous permet de saisir une arete
Arete saisirArete()
{
  Sommet initial = saisirSommet();  
  Sommet finale = saisirSommet(); 

  float cout = 0;

  /*do {
   cout = askInteger("Entrer le cout:");
   } while (cout < 0);*/

  return new Arete(initial, finale, cout);
}
