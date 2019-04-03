import java.util.ArrayList; //<>//

/* //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
 Classe Graph
 3 proprietées:t
 le nombre de sommet
 
 */

class Graphe
{
  int n;
  int nbAretes;
  int[] couleurs;
  Sommet[] lesSommets;
  ArrayList<Arete> lesAretes;


  Graphe(int n, int nbAretes)
  {
    this.n = n;
    this.nbAretes = nbAretes;

    this.lesSommets = init(this.n);
    this.lesAretes = new ArrayList();


    //Je vais remplir mon tableau d'arete avec les reference des points déjà creés
    for (int i=0; i < nbAretes; i++)
    {
      this.lesAretes.add(saisirArete(lesSommets));
    }

    //Je met à jour les degrés des sommets
    update_degre();

    update_color();
  }

  /*
  Matrice d'adjacence du graphe non orienté
   */
  int[][] get_adjacence()
  {
    int taille = this.n;
    int[][] matrice = new int[taille][taille];

    for (int i=0; i < this.nbAretes; i++)
    {
      matrice[this.lesAretes.get(i).initiale_1.numero - 1][this.lesAretes.get(i).finale_1.numero - 1] = 1;

      matrice[this.lesAretes.get(i).initiale_2.numero - 1][this.lesAretes.get(i).finale_2.numero - 1] = 1;
    }

    return matrice;
  }


  //Me permetra de mettre à jour les degrés des sommets
  void update_degre()
  {
    int[][] adj = get_adjacence();

    //Processus pour l'incrementation des degre
    for (int i=0; i < this.n; i++)
    {
      for (int j=0; j < this.n; j++ )
      {
        //Cette condition me permet juste d'incrementer les degrées
        if (adj[this.lesSommets[i].numero - 1][j] == 1)
        {
          this.lesSommets[i].incremente_degre();

          //Ajout des voisins pour les couleurs
          if (!(this.lesSommets[i].voisins.contains(this.lesSommets[j])) && !(this.lesSommets[j].voisins.contains(this.lesSommets[i])))
          {
            this.lesSommets[i].ajouter_voisin(this.lesSommets[j]);
            this.lesSommets[j].ajouter_voisin(this.lesSommets[i]);
          }
        }
      }
    }
  }

  //gestion des couleurs pour les sommets
  private void update_color()
  {
    /*on va supposer tout d'abord que la couleur du premier
     sommet sera la plus petite et donc 1
     
     */
    this.lesSommets[0].couleur = 1;

    //Je vais gerer si les mêmes couleurs
    for (Sommet s : this.lesSommets)
    {
      for (Sommet v : s.voisins)
      {
        if ((s.couleur == v.couleur))
        {
          v.couleur = get_couleur(s.couleur);
        }
      }
    }
  }

  //Me donne une couleur qui n'est pas attribué au voisin
  private int get_couleur(int coul)
  {
    /*je trie les degres et je creer un tab de couleur que je vais remplir automatiquement*/
    Arrays.sort(this.lesSommets);
    this.couleurs = new int[this.lesSommets[0].degre];

    for (int i=0; i < this.couleurs.length; i++)
    {
      this.couleurs[i] = i+1;
    }

    for (int i=0; i < this.couleurs.length; i++)
    {
      int c = int(random(0, this.couleurs.length+1));

      if (c != coul)
      {
        coul = c;

        return coul;
      }
    }
    int cs = couleurs[int(random(this.couleurs.length))]; // juste une couleur au cas ou

    return coul==1 ? cs : cs;
  }

  //Affichage des details du graphe
  void afficher_detail()
  {
    //Je trie par ordre décroissant grace à Comparable
    Arrays.sort(lesSommets);

    for (Sommet s : lesSommets)
    {
      println("Le sommet "+s.numero+" degre: "+s.degre+ " de couleur: "+s.couleur);
    }
  }
}


//Les fonctions liéé a la classe


//Cette fonction permet de saisir un graphe et vérifier si les valeurs rentrées sont justes.
Graphe saisie_graphe()
{
  int n;
  int nbAretes;

  do {
    n = askInteger("Entrer le nombre de sommets du graphe:");
  } while (n<0);


  do {
    nbAretes = askInteger("Entrer le nombre d'aretes");
  } while (nbAretes <= 0);

  return new Graphe(n, nbAretes);
}
