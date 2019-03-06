import java.util.Arrays; //<>// //<>// //<>//


/*
  Dans cette fonction nous allons crrer une matrice adjacence carrée
 Dans la boucle for, on va parcourir cette matrice
 et vérifier s'il y'a une arete.
 S'il y'a une arete alors on met un dans la case courante,
 sinon 0
 
 Les lignes de notre matrice correspondent au sommet final d'une arete
 Les colonnes correspondent au somment initial d'une arete
 
 */
int[][] adjacence(Graphe g)
{

  int taille = g.n;
  int[][] matrice = new int[taille][taille];


  //for (int i=1; i <= taille-1; i++)
  //{
  //  for (int j=1; j <= taille-1; j++)
  //  {
  //    matrice[i][j] = isArete(g, i, j) ? 1:0;
  //  }
  //}


  for (int i=0; i < g.nbAretes; i++)
  {
    matrice[g.lesAretes[i].initial][g.lesAretes[i].finale] = 1; //<>//
    matrice[g.lesAretes[i].finale][g.lesAretes[i].initial] = 1;
  }


  return matrice;
}


/*
      Elle affiche la matrice ligne par ligne
 Cette fonction permet d'afficher notre matrice
 Mais ii faut importer le librairie java.util.Arrays
 */
void afficher(int[][] matrice)
{
  for (int i=0; i< matrice.length; i++)
  {
    println(Arrays.toString(matrice[i]));
  }
}
