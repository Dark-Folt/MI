/* //<>// //<>// //<>// //<>// //<>// //<>// //<>//
 Classe Graph
 3 proprietées:
 -le nombre de sommets
 -le nombre d'aretes du graphe
 -un tableau d'aretes
 */

class Graphe
{
  int n; 
  int nbAretes; 
  Arete[] lesAretes;
  Sommet[] lesSommets;


  Graphe(int n)
  {
    this.lesSommets = new Sommet[n];

    for (int i=0; i < n; i++)
    {
      this.lesSommets[i] = new Sommet(i+1);
    }

    for (int i=0; i < n; i++)
    { //<>//
      ArrayList<Arete> a = saisirArete(i+1);
      this.lesSommets[i].ajouterAretes(a);
    }
  }


  /*Graphe(Graphe g)
  {
    this.n = g.n;
    this.nbAretes = g.nbAretes;
    this.lesAretes = new Arete[nbAretes];
    for (int i=0; i < nbAretes; i++)
    {
      lesAretes[i] = g.lesAretes[i]; //<>//
    }
  }*/

  //Cette fonction va nous permettre d'avoir le nombre chromatique
  int get_nbChromatique()
  {

    return 0;
  }
}





//Les fonctions liéé a la classe


//Cette fonction permet de saisir un graphe et vérifier si les valeurs rentrées sont justes.
Graphe saisie_graphe()
{
  int n;
  int nbArete;

  do {
    n = askInteger("Entrer le nombre de sommets du graphe:");
  } while (n<0);

  /*do {
   nbArete = askInteger("Entrer le nombre d'aretes du graphe:");
   } while (nbArete < 0);*/


  //return new Graphe(n, nbArete);
  
  return new Graphe(n);
}
