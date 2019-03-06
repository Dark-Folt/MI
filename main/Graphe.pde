class Graphe
{
  int n; //nombre de sommeets du graphe
  int nbAretes; //Nombre d'aretes du graphe
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
    for (int i=0; i < nbAretes; i++)
    {
      lesAretes[i] = g.lesAretes[i];
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
    /*Arete a = new   Arete();
     a.initial = askInteger("Entrer le point le initial");
     a.finale = askInteger("Entre le point finale");
     a.cout = 2.5;*/
    lesAretes[i] = saisirArete();
  }

  return new Graphe(n, nbArete, lesAretes);
}
