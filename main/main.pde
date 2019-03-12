
void setup()
{
  /*Graphe g = saisie_graphe();
  int[][] adj = adjacence(g);*/

  println("------********");

  //afficherMatrice(adj);

  int[][] a = {{0, 0, 0}, {1, 1, 1}, {1, 1, 1}};
  int[][] c = {{0, 0, 0}, {1, 1, 1}, {1, 1, 1}};

  //int[][] b = {{2,8,4},{-6,3,1},{-2,1,5}};

  //int[][] r = produit(a,b);


  //int[][] a = {{3,1,5},{3,9,-2},{6,1,-1}};

  //int[][] m = puissance(a,2);

  /*int i = nbChemins(adj,2,1,4);
   
   afficherMatrice(m);
   
   println(i);*/

  int[][] y = somme_mat_bool(a, a);

  afficherMatrice(y);

  exit();
}
