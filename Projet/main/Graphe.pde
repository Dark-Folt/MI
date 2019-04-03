/* //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
 Classe Graph
 3 proprietées:
 le nombre de sommet
 
 */

class Graphe
{
  int n; 
  Sommet[] lesSommets;
  ArrayList<Arete> lesAretes;


  Graphe(int n)
  {
    this.n = n;
    this.lesSommets = init(n);
    this.lesAretes = new ArrayList();
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

  do {
    n = askInteger("Entrer le nombre de sommets du graphe:");
  } while (n<0);

  return new Graphe(n);
}
