
/*

 Cette class va nous permttre de creer un sommet avec:
 un identifiat c'est a dire le numéro du sommet
 son degre qui sera biensure égale à 0
 un numero attribué à la couleur à 0 
 Une list contenant tout les voisins ce dernier pour mieux faire le choix des couleurs
 */

class Sommet
{
  int id;
  int degre;
  int couleur;
  ArrayList<Sommet>voisins;


  Sommet(int id)
  {
    this.id = id;
    this.degre = 0;
    this.voisins = new ArrayList();
  }
}
