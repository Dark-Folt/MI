/*
  Classe Arete
 1 proprietées:
 -le point final
 */

class Arete
{ 
  Sommet initiale_1;
  Sommet finale_1;

  Sommet initiale_2;
  Sommet finale_2;


  Arete(Sommet initiale_1, Sommet finale_1)
  {
    this.initiale_1 = initiale_1;
    this.finale_1 = finale_1;

    //Graphe noon orienté du coup une arete represente (1-->2 ou 2-->>1)
    this.initiale_2 = finale_1;
    this.finale_2 = initiale_1;
  }
}

//--------------------------------------------Fonction liéé a la classe Arete

//Cette fonction nous permet de saisir une arete
/*
Je vais juste manipuler les reference vers les sommets
 */

Arete saisirArete(Sommet[] lesSommets)
{

  int initiale = askInteger("Entrer le point initiale");
  int finale = askInteger("Entrer le point finale");

  for (Sommet s : lesSommets)
  {
    println("idel ref: "+s);
  }

  return new Arete(lesSommets[initiale - 1], lesSommets[finale - 1]);
}
