/*
  Classe Arete
 3 proprietées:
 -le point initial
 -le point final
 -le cout
 */

class Arete
{
<<<<<<< HEAD

  Sommet initial;
  Sommet finale;
=======
  //Sommet initial;  
  Sommet finale;

>>>>>>> v1

  float cout;

  /*Arete(Sommet initial, Sommet finale, float cout)
   {
   this.initial = initial;
   this.finale = finale;
   this.cout = cout;
   
   Je vais ajouter l'initale comme voisin du finale
   et finale comme voisin de initiale
   
   this.finale.ajouterVoisin(initial);
   this.initial.ajouterVoisin(finale);
   }*/


  Arete(Sommet finale)
  {
    this.finale = finale;
<<<<<<< HEAD
    this.cout = cout;

    this.initial.ajouterVoisin(finale);
    this.finale.ajouterVoisin(initial);
=======
>>>>>>> v1
  }
}

//--------------------------------------------Fonction liéé a la classe Arete

//Cette fonction nous permet de saisir une arete
ArrayList<Arete> saisirArete(int num)
{

  ArrayList<Arete> lesAretes = new ArrayList();
  //Sommet initial = saisirSommet("Entrer le sommet initiale");
  Sommet finale = new Sommet(-1);

  do {
    finale = saisirSommet("Pour le sommet "+num+" , entrer le sommet finale");
    if (finale != null)
    {
      lesAretes.add(new Arete(finale));
    }
  } while (finale != null);

  /*float cout = 0;
   do {
   cout = askInteger("Entrer le cout:");
   } while (cout < 0);*/
  //return new Arete(initial, finale, cout);

  return lesAretes;
}
