/* //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
 Classe Graph
 3 proprietées:
 le nombre de sommet
 
 */

class Graphe
{
  int n; 
  Sommet[] lesSommets;


  Graphe(int n)
  {
    this.n = n;

    this.lesSommets = new Sommet[n];

    for (int i=0; i < n; i++)
    {
      this.lesSommets[i] = new Sommet(i+1);
      //Je vais donner une couleur à chaque sommet
      this.lesSommets[i].couleur = get_color();
    }

    //Je parcour tout mes sommets initiales et je leur donne un sommet finale
    for (int i=0; i < n; i++)
    {
      ArrayList<Arete> a = saisirArete(i+1);
      this.lesSommets[i].ajouterAretes(a);

      //Je parcour toutes les aretes qui composent un sommet,ensuite je vérifier la correspondance des couleures
      for (Arete ar : lesSommets[i].aretes)
      {
        //Tant que la couleur est la meme alors je boucle jusqu'à avoir une autre.
        while (ar.finale.couleur == lesSommets[i].couleur)
        {
          ar.finale.couleur = get_color();

          println("ar : "+ar.finale.couleur+" || s :"+lesSommets[i].couleur);
        }
      }
    }
  }

  int get_color()
  {
    int colorMax = this.n;

    return int(random(colorMax));
  }

  void afficher_detail()
  {

    //println("sommet "+lesSommets[0].numero+" Couleur: "+lesSommets[0].couleur);

    for (Arete a : lesSommets[0].aretes)
    {
      println("Somomet "+a.finale.numero+" Couleur: "+a.finale.couleur);
    }
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
