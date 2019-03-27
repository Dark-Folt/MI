
/*

 Cette class va nous permttre de creer un sommet avec:
 un identifiat c'est a dire le numéro du sommet
 son degre qui sera biensure égale à 0
 un numero attribué à la couleur à 0 
 Une list contenant tout les voisins ce dernier pour mieux faire le choix des couleurs
 */

class Sommet
{
  int numero;
  int degre;
  int couleur;
  ArrayList<Sommet>voisins;


  Sommet(int numero)
  {
    this.numero = numero;
    this.degre = 0;
    this.voisins = new ArrayList();
  }
}

/*
  Cette fonctin va nous permettre de saisir un sommet
*/
Sommet saisirSommet()
{
  int numero = askInteger("Entrer le numéro du sommet");
  return new Sommet(numero);
}
