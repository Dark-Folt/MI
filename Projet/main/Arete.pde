/*
  Classe Arete
 1 proprietées:
 -le point final
 */

class Arete
{ 
  Sommet finale;

  Arete(Sommet finale)
  {
    this.finale = finale;
  }
}

//--------------------------------------------Fonction liéé a la classe Arete

//Cette fonction nous permet de saisir une arete
/*
Pour creer une arete on va juste avoir besoin du sommet finale car 
il sera automatiquement associé à un point initiale
*/
ArrayList<Arete> saisirArete(int num)
{

  ArrayList<Arete> lesAretes = new ArrayList();

  Sommet finale;

  do {
    finale = saisirSommet("Pour le sommet "+num+" , entrer le sommet finale si possible (Null ou 0)");
    if (finale != null)
    {
      lesAretes.add(new Arete(finale));
    }
  } while (finale != null);

  return lesAretes;
}
