
/*

 Cette class va nous permttre de creer un sommet avec:
 un identifiat c'est a dire le numéro du sommet
 son degre qui sera biensure égale à 0
 un numero attribué à la couleur à 0 
 Une list contenant tout les voisins ce dernier pour mieux faire le choix des couleurs
 
 
 Les fonctions:
   -getVoisins: nous renvoie une list contenant tout les voisins du sommet actuel
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
  
  
  ArrayList<Sommet> getVoisins()
  {
    return null;
  }
}

/*
  Cette fonction va nous permettre de saisir un sommet et on va au prealable vérifier si l'user à mit une bonne valeur
 */
Sommet saisirSommet()
{
  int numero;

  do {
    numero  = askInteger("Entrer le numéro du sommet");
  } while (numero < 0);

  return new Sommet(numero);
}
