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
    this.lesSommets = new Sommet[n];

    for (int i=0; i < n; i++)
    {
      this.lesSommets[i] = new Sommet(i+1);
    }

  //Je parcour tout mes sommets initiales et je leur donne un sommet finale
    for (int i=0; i < n; i++)
    {
      ArrayList<Arete> a = saisirArete(i+1);
      this.lesSommets[i].ajouterAretes(a);
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
