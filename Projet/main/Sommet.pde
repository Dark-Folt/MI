
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
  ArrayList<Sommet>voisins;


  Sommet(int numero)
  {
    this.numero = numero;
    this.degre = 0;
    this.voisins = new ArrayList();
    //update_degre(this); //J'incremente le degre
  }



  void ajouterVoisin(Sommet v)
  {
    this.voisins.add(v);
  }

  ArrayList<Sommet> getVoisins()
  {
    return this.voisins;
  }
}


void update_degre(Sommet s)
{
  ArrayList<Sommet> list = s.getVoisins();


  for (int i=0; i < list.size(); i++)
  {
    s.degre ++;
  }
}


/*
  Cette fonction va nous permettre de saisir un sommet et on va au prealable vérifier si l'user à mit une bonne valeur
 */
Sommet saisirSommet(String msg)
{
  int numero;

  do {
    numero  = askInteger(msg);
  } while (numero < 0);

  return new Sommet(numero);
}
