
void setup()
{
  //Graphe g = saisie_graphe();
  //int[][] adj = adjacence(g);
  
  println("------********");
  
  //afficher(adj);
  
  int[][] a = {{1,1,1},{1,1,1},{1,1,1}};
  int[][] b = {{1,1,1},{1,1,1},{1,1,1}};
  
  //int[][] r = produit(a,b);
  
  int[][] m = puissance(b,0);
  
  afficherMatrice(m);
}
