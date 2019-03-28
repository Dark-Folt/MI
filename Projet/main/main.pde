 //<>//
void setup()
{

  Graphe g = saisie_graphe();

  int[][] adj = adjacence(g);


  for (int i=0; i < g.lesAretes.length; i++)
  {
    //g.lesAretes[i].initial.getVoisins();

    int deg1 = g.lesAretes[i].initial.degre;

    int deg2 = g.lesAretes[i].finale.degre;

    println(deg1, deg2); //<>//
  }

  afficherMatrice(adj);
}
