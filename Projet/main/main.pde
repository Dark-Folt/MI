 //<>// //<>//
void setup()
{

  Graphe g = saisie_graphe();

  int[][] adj = adjacence(g);





  for (int i=0; i < g.lesAretes.length; i++)
  {
    //g.lesAretes[i].initial.getVoisins();

    
    println("sommet n°:"+g.lesAretes[i].sommets[0].numero+" ----"+"voisin taille :"+g.lesAretes[i].sommets[0].getVoisins().size());
    
    //println("voisin taille :"+g.lesAretes[i].sommets[1].getVoisins().size());

    int deg1 = g.lesAretes[i].initial.degre;

    int deg2 = g.lesAretes[i].finale.degre;

    //println("init :"+deg1, "finale: "+deg2);
  }

  afficherMatrice(adj);
}
