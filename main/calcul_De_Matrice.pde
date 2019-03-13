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
    matrice[g.lesAretes[i].initial-1][g.lesAretes[i].finale-1] = 1;
    matrice[g.lesAretes[i].finale-1][g.lesAretes[i].initial-1] = 1;
  }

  return matrice;
}


/*Cette fonction va nous permettre de calculer le produit d'une matrice
 Tout d'abord on va érfier */
int[][] produit_matrice(int[][] m1, int[][] m2)
{
  if (m1[0].length != m2.length)
  {
    println("impossible de faire ce produit matricielle");
    return null;
  }

  int[][] scalaire = new int[m1.length][m2[0].length];


  for (int i=0; i <m1.length; i++)
  {
    for (int j=0; j < m2[0].length; j++)
    {
      for (int k = 0; k < m1[0].length; k++)
      {
        scalaire[i][j] += m1[i][k]*m2[k][j];
      }
    }
  }

  return scalaire;
}



/*
Dans cette fonction je vais calciler la puissance d'une matrice
 */
int[][] puissance_matrice(int[][] m, int n)
{

  int[][] result = new int[m.length][m.length];


  if (n != 0)
  {

    if (n >= 2)
    {
      result = produit_matrice(m, m);

      for (int i=0; i< n-2; i++)
      {
        result = produit_matrice(result, m);
      }
    } else {
      return m;
    }
  } else {

    //Cela veut dire que n = 0
    for (int i=0; i < m.length; i++)
    {
      result[i][i] = 1;
    }
  }

  return result;
}


/*
Cette fonction calcule le nombre de chemin de longueur n entre deux sommets
 donnée par l'user
 
 Def: Un chemin dans un graphe est une suite d'arcs consécutifs
 :La longueur d'un chemin est le nombre d'arcs constituant ce chemin
 
 et ensuite on retourne la valeur qu'il y'a dans la case[i][j] donné
 */

int nbChemins(int[][] matrice, int n, int i, int j)
{
  int[][] m = puissance_matrice(matrice, n);

  return m[i-1][j-1];
}



/*
  cette foncion calcul le produit de deux matrices booleennes
 Ensuite apres avoir la valeur qu'il ya : soit 0 ou 1 
 Je mets un 1 si c'est != 0 sinon 0
 */

int[][] produit_mat_bool(int[][] m1, int[][] m2)
{
  if (m1[0].length != m2.length)
  {
    println("impossible de faire ce produit matricielle");
    return null;
  }

  int[][] scalaire = new int[m1.length][m2[0].length];


  for (int i=0; i <m1.length; i++)
  {
    for (int j=0; j < m2[0].length; j++)
    {
      for (int k = 0; k < m1[0].length; k++)
      {
        scalaire[i][j] += m1[i][k]*m2[k][j];
        scalaire[i][j] = scalaire[i][j] != 0 ? 1:0; //Je verifie si il y'a une valeur je met 1 sinon 0
      }
    }
  }

  return scalaire;
}


/*
  Cete fonction calcul la somme de deux matrices booleans
 Elle met 0 si c'est 0 et 1 si c'est different de 0
 */
int[][] somme_mat_bool(int[][] m1, int[][] m2)
{
  if (m1[0].length != m2.length)
  {
    println("impossible de faire cette somme matricielle");
    return null;
  }

  int[][] scalaire = new int[m1.length][m2[0].length];


  for (int i=0; i <m1.length; i++)
  {
    for (int j=0; j < m2[0].length; j++)
    {
      scalaire[i][j] += m1[i][j]+m2[i][j];
      scalaire[i][j] = scalaire[i][j] != 0 ? 1:0; //Je verifie si la valeur est different de 0, je met 1 sinon 0
    }
  }

  return scalaire;
}


/*
  Cette fonction me permet de vérifier si les deux matrices sont égaux 
 */
boolean egal_mat_bool(int[][] m1, int[][] m2)
{

  if (m1[0].length != m2.length)
  {
    println("impossible de faire cette somme matricielle");
    return false;
  }

  for (int i=0; i < m1.length; i++)
  {
    for (int j=0; j < m2[0].length; j++)
    {
      if (m1[i][j] != m2[i][j])
      {
        return false;
      }
    }
  }

  return true;
}

/*
  Cette fonction nous permet de calculer la matrice transitive d'un graphe
  à l'aide de l'ago de warshal
*/

int[][] matrice_transitive(Graphe g)
{
  int[][] mat_trans = new int[g.n][g.n];
  
  for(int i=1 ; i < g.n; i++)
  {
    
  }
  return null;
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
