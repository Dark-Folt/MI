class Arete
{
  int initial;
  int finale;
  float cout;

  Arete(int initial, int finale, float cout)
  {
    this.initial = initial;
    this.finale = finale;
    this.cout = cout;
  }
}


//Fonction liéé a la classe Arete



//Cette fonction nous permet de saisir une arete
Arete saisirArete()
{
  int initial, finale;
  float cout = 0;
  do {
    initial = askInteger("Entrer le sommet initial:");
  } while (initial <0);

  do {
    finale = askInteger("Entre le sommet final:");
  } while (finale < 0);

  //do {
  //  cout = askInteger("Entrer le cout:");
  //} while (cout < 0);


  return new Arete(initial, finale, cout);
}



/*
Cette fonction va nous permetre de savoir s'il y'a une arete et retourner un resultat bouleen
 elle prend en parametre un graphe suivi de deux sommets(initiale et finale)
 Je vais parcourir ma liste d'aretes ensuite vérifier si une des aretes qui la compose possède le meme sommet initial,
 le même sommet final et donc si c'est le cas alors c'est une arete.
 Vue que notre graph est non orienté alors on le faire dans les deux sens càd prendre comme sommet initale le sommet final
 
 */
 

boolean isArete(Graphe g, int s1, int s2) 
{
  //for (int i=0; i < g.nbAretes; i++)
  //{
  //  if ((g.lesAretes[i].initial == s1 && g.lesAretes[i].finale == s2))
  //  {
  //    return true;
  //  }
  //  if (g.lesAretes[i].initial == s2 && g.lesAretes[i].finale == s1)
  //  {
  //    return true;
  //  }
  //}


  for (int i=0; i < g.nbAretes; i++)
  {

    if ((g.lesAretes[i].initial == s1 && g.lesAretes[i].finale == s2))
    {
      if (g.lesAretes[i].initial == s2 && g.lesAretes[i].finale == s1)
      {
        return true;
      }
      return true;
    }
  }

  return false;
}
