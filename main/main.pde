
void setup()
{
  Graphe g = saisie_graphe();
  int[][] adj = adjacence(g);
  
  println("------********");
  
  afficher(adj);
}
