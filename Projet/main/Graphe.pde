/* //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
 Classe Graph
 3 proprietées:
 le nombre de sommet
 
 */

class Graphe
{
  int n;
  int nbAretes;
  Sommet[] lesSommets;
  ArrayList<Arete> lesAretes;


  Graphe(int n, int nbAretes)
  {
    this.n = n;
    this.nbAretes = nbAretes;

    this.lesSommets = init(n);
    this.lesAretes = new ArrayList();


    //Je vais remplir mon tableau d'arete avec les reference des points déjà creés
    for (int i=0; i < nbAretes; i++ )
    {
      lesAretes.add(saisirArete(lesSommets));
    }
  }


  int get_color()
  {
    int colorMax = this.n;

    return int(random(colorMax));
  }

  void afficher_detail()
  {
  }
}


//Les fonctions liéé a la classe


//Cette fonction permet de saisir un graphe et vérifier si les valeurs rentrées sont justes.
Graphe saisie_graphe()
{
  int n;
  int nbAretes;

  do {
    n = askInteger("Entrer le nombre de sommets du graphe:");
  } while (n<0);


  do {
    nbAretes = askInteger("Entrer le nombre d'aretes");
  } while (nbAretes <= 0);

  return new Graphe(n, nbAretes);
}
