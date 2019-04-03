/*
 Cette class va nous permttre de creer un sommet avec:
 un identifiat c'est a dire le numéro du sommet
 son degre qui sera biensure égale à 0
 un numero attribué à la couleur à 0 
 Une list contenant tout les voisins ce dernier pour mieux faire le choix des couleurs
 
 
 Les fonctions:
 -ajouterVoisin: permet d'ajouter un voisin du sommet dans la liste des voisins
 -getVoisins: nous renvoie une list contenant tout les voisins du sommet actuel
 */

class Sommet
{
  int numero;
  int degre;
  int couleur;

  Sommet(int numero)
  {
    this.numero = numero;
    this.degre = 0;
    this.couleur = 0;
  }

  void incremente_degre()
  {
    this.degre += 1;
  }
}

Sommet saisirSommet()
{
  int num ;

  do {
    num = askInteger("Entrer le numero du sommet");
  } while (num <= 0);

  return new Sommet(0);
}

/*Initialisation du tableau de sommet qui sera directement creer des que l'user aura mit une taille*/
Sommet[] init(int n)
{
  Sommet[] sommets = new Sommet[n];

  /*for (int i=0; i < n; i++)
   {
   sommets[i] = new Sommet(i+1);
   println("current ref: "+sommets[i]);
   }*/

  return sommets;
}
