/*
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

  Graphe(int n, int nbAretes, Arete[] lesAretes)
  {
    this.n = n;
    this.nbAretes = nbAretes;
    this.lesAretes = lesAretes;

    lesAretes = new Arete[nbAretes];
    for (int i=0; i < nbAretes; i++)
    {
      lesAretes[i] = lesAretes[i];
    }
  }

  Graphe(Graphe g)
  {
    this.n = g.n;
    this.nbAretes = g.nbAretes;
    this.lesAretes = new Arete[nbAretes];
    for (int i=1; i < nbAretes; i++)
    {
      lesAretes[i-1] = g.lesAretes[i-1];
    }
  }
}


//Les fonctions liéé a la classe


//Cette fonction permet de saisir un graphe et vérifier si les valeurs rentrées sont justes.
Graphe saisie_graphe()
{
  int n;
  int nbArete;
  Arete[] lesAretes;

  do {
    n = askInteger("Entrer le nombre de sommets du graphe:");
  } while (n<0);

  do {
    nbArete = askInteger("Entrer le nombre d'aretes du graphe:");
  } while (nbArete < 0);

  //Initialisation du tableau d'aretes
  lesAretes = new Arete[nbArete];

  for (int i=0; i < nbArete; i++)
  {
    lesAretes[i] = saisirArete();
  }

  return new Graphe(n, nbArete, lesAretes);
}
