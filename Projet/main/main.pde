




void setup()
{
  
  
  Graphe g = saisie_graphe();
  
  //int[][] adj = adjacence(g);
  
  
  int[][] adj = g.get_matrice_adjacence();
  
  println(g.est_complet());
  afficherMatrice(adj);
  
}
