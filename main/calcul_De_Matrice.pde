import java.util.Arrays; //<>// //<>// //<>// //<>// //<>// //<>//

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
    matrice[g.lesAretes[i].initial-1][g.lesAretes[i].finale-1] = 1;
    matrice[g.lesAretes[i].finale-1][g.lesAretes[i].initial-1] = 1;
  }

  return matrice;
}


/*Cette fonction va nous permettre de calculer le produit d'une matrice
 Tout d'abord on va érfier */
int[][] produit(int[][] m1, int[][] m2)
{
  if (m1[0].length != m2.length)
  {
    println("impossible de faire ce produit matricielle");
    return null;
  }

  int[][] scalaire = new int[m1.length][m2[0].length];


  int taille = m1.length;

  for (int i=1; i <taille; i++)
  {
    for (int j=1; j < m2[0].length; j++)
    {
      for (int k = 1; k < m1[0].length; k++)
      {
        scalaire[i-1][j-1] += m1[i-1][k-1]*m2[k-1][j-1];
      }
    }
  }

  return scalaire;
}



/*
Dans cette fonction je vais calciler la puissance d'une matrice
 */
int[][] puissance(int[][] m, int n)
{

  int[][] result = new int[m.length][m.length];


  if (n != 0)
  {

    if (n >= 2)
    {
      result = produit(m, m);

      for (int i=0; i< n-2; i++)
      {
        result = produit(result, m);
      }
    } else {
      return m;
    }
  } else {

    //Cela veut dire que n = 0
    for (int i=1; i < m.length; i++)
    {
      result[i-1][i-1] = 1;
    }
  }


  return result;
}


/*
Cette fonction calcule le nombre de chemin de longueur n entre deux sommets
 donnée par l'user
 
 Def: Un chemin dans un graphe est une suite d'arcs consécutifs
 :La longueur d'un chemin est le nombre d'arcs constituant ce chemin
 */

int nbChemins(int[][] matrice, int n, int i, int j)
{
  int[][] m = puissance(matrice,n);

  return m[i-1][j-1];
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
