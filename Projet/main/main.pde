
void setup()
{
  
  
  Graphe g = saisie_graphe();
  
  int[][] adj = adjacence(g);

  
  for(int i=0; i < g.lesAretes.length; i++)
  {
    //g.lesAretes[i].initial.getVoisins();
    
    ArrayList<Sommet> list = g.lesAretes[i].initial.getVoisins(); //<>//
    
  }
  
  //int[][] adj = g.get_matrice_adjacence();
  
  //println(g.est_complet());
  afficherMatrice(adj);
  
}
