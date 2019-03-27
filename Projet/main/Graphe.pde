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
      this.lesAretes[i] = lesAretes[i];
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

  //cette fonctino nous petmet d'avoir la matrice adjacence
  int[][] get_matrice_adjacence()
  {
    int[][] mat = new int[n][n];
    for (Arete a : lesAretes)
    {
      mat[a.initial.numero-1][a.finale.numero-1] = 1;
      mat[a.finale.numero-1][a.initial.numero-1] = 1;
    }
    return mat;
  }

  //Cette fonction me permet d'évaluer si le graphe est complet
  boolean est_complet()
  {
    int[][] adj = this.get_matrice_adjacence(); //Cele fait reference à la matrice adjacence

    int index=0;
    boolean complet = true;
    while (index < adj.length && complet)
    {
      if (adj[index][index] == 0)
      {
        index ++;
      } else {
        complet = false;
        break;
      }
    }

    /*while (adj[index][index] == 0 && index < adj.length)
     {
     complet = true;
     index ++;
     }*/

    return complet;
  }

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
