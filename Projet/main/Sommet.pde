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

  ArrayList<Arete> aretes;


  Sommet(int numero)
  {
    this.numero = numero;
    this.degre = 0;
    this.aretes = new ArrayList();
  }

  void incrementer_degre()
  {
    this.degre ++;
  }


  //À chque fois que j'ai un point finale , je creer une arete et je l'ajoute à la liste
  void ajouterAretes(ArrayList<Arete> ar)
  {
    for (Arete a : ar)
    {
      this.aretes.add(a);
    }
  }
  
  
  int getDegre()
  {
    
    //la taille du nombres d'aretes issus d'un point correspoind à son degre
    return aretes.size();
  }
  

}


/*
  Cette fonction va nous permettre de saisir un sommet et on va au prealable vérifier si l'user à mit une bonne valeur
 */
Sommet saisirSommet(String msg)
{
  int numero = askInteger(msg) ;

  return numero <= 0 ? null : new Sommet(numero);
}
