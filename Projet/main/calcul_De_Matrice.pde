import java.util.Arrays; //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//

/*
  Dans cette fonction nous allons crrer une matrice adjacence carrée
 
 On va parcourir le tableau d'aretes ensuite remplir chaque point d'arete initial et finale
 dans la matrice
 
*/
int[][] adjacence(Graphe g)
{
  int taille = g.n;
  int[][] matrice = new int[taille][taille];

  for (int i=0; i < g.nbAretes; i++)
  {
    matrice[g.lesAretes[i].initial.numero-1][g.lesAretes[i].finale.numero-1] = 1; //<>//
    matrice[g.lesAretes[i].finale.numero-1][g.lesAretes[i].initial.numero-1] = 1;
  }  

  return matrice;
}


/*
 Elle affiche la matrice ligne par ligne
 Cette fonction permet d'afficher notre matrice
 Mais ii faut importer le librairie java.util.Arrays
 */
 
 
void afficherMatrice(int[][] matrice)
{
  for (int i=0; i< matrice.length; i++)
  {
    println(Arrays.toString(matrice[i]));
  }
}
