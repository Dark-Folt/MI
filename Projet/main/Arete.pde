/*
  Classe Arete
 1 proprietées:
 -le point final
 */

class Arete
{ 
  Sommet initiale;
  Sommet finale;


  Arete(Sommet initiale, Sommet finale)
  {
    this.initiale = initiale;
    this.finale = finale;
  }
}

//--------------------------------------------Fonction liéé a la classe Arete

//Cette fonction nous permet de saisir une arete
/*
Pour creer une arete on va juste avoir besoin du sommet finale car 
 il sera automatiquement associé à un point initiale
 */

Arete saisirArete(Sommet[] lesSommets)
{
  int initiale = askInteger("Entrer le point initiale");
  int finale = askInteger("Entrer le point finale");

  return new Arete(lesSommets[initiale + 1], lesSommets[finale + 1]);
}
