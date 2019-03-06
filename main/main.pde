
void setup()
{
  //Graphe g = saisie_graphe();
  //int[][] adj = adjacence(g);
  
  println("------********");
  
  //afficher(adj);
  
  int[][] a = {{1,2,3},{1,0,1},{2,1,3}};
  int[][] b = {{1,1},{1,1},{1,1}};
  
  int[][] r = produit(a,b);
  
  afficher(r);
}
