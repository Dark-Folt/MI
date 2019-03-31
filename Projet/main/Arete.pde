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
  
  
  Sommet[] sommets;

  float cout;

  Arete(Sommet initial, Sommet finale, float cout)
  {
    this.initial = initial;
    this.finale = finale;
    this.sommets = new Sommet[2];
    this.sommets[0] = initial;
    this.sommets[1] = finale;
    this.cout = cout;

    /*Je vais ajouter l'initale comme voisin du finale
     et finale comme voisin de initiale
     */
    initial.ajouterVoisin(finale);
    finale.ajouterVoisin(initial);
  }
}

//--------------------------------------------Fonction liéé a la classe Arete

//Cette fonction nous permet de saisir une arete
Arete saisirArete()
{

  Sommet initial = saisirSommet("Entrer le sommet initiale");
  Sommet finale = saisirSommet("Entre le sommet finale");

  float cout = 0;
  /*do {
   cout = askInteger("Entrer le cout:");
   } while (cout < 0);*/
  return new Arete(initial, finale, cout);
}
