import java.util.*;

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

class Sommet implements Comparable
{
  int numero;
  int degre;
  int couleur;
  ArrayList<Sommet> voisins;

  Sommet(int numero)
  {
    this.numero = numero;
    this.degre = 0;
    this.couleur = 0;
    this.voisins = new ArrayList();
  }


  void ajouter_voisin(Sommet v)
  {
    this.voisins.add(v);
  }

  void incremente_degre()
  {
    this.degre += 1;
  }

  //Fonctino de comparateur pour trier les degre de facon decroissant
  int compareTo(Object sm)
  {
    Sommet s = (Sommet)sm;
    return s.degre > this.degre ? 1 : s.degre < this.degre ? -1 : 0;
  }
}

Sommet saisirSommet()
{
  int num ;

  do {
    num = askInteger("Entrer le numero du sommet");
  } while (num <= 0);

  return new Sommet(num);
}

/*Initialisation du tableau de sommet qui sera directement creer des que l'user aura mit une taille*/
Sommet[] init(int n)
{
  Sommet[] sommets = new Sommet[n];

  for (int i=0; i < n; i++)
  {
    sommets[i] = new Sommet(i+1);
  }

  return sommets;
}
