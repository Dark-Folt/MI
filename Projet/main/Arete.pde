/*
  Classe Arete
 1 proprietées:
 -le point final
 */

class Arete
{ 
  Sommet initiale;
  Sommet finale;


  Arete(Sommet initiale, Sommet finale)
  {
    this.initiale = initiale;
    this.finale = finale;
  }
}

//--------------------------------------------Fonction liéé a la classe Arete

//Cette fonction nous permet de saisir une arete
/*
Pour creer une arete on va juste avoir besoin du sommet finale car 
 il sera automatiquement associé à un point initiale
 */
 
 Arete saisirArete()
 {
   
   
   return null;
 }
 
 
ArrayList<Arete> saisirArete(int num)
{

  ArrayList<Arete> lesAretes = new ArrayList();

  Sommet finale;

  do {
    finale = saisirSommet();
    if (finale != null)
    {
      lesAretes.add(new Arete(finale));
    }
  } while (finale != null);

  return lesAretes;
}
