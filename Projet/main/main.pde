/*
Pour cet algo, nous avons modifié la logique de l'algo donné en class pour le TP commun
 Au lieu que dans un graphe il y 'est des aretes et que dans la aretes des points
 
 Nous avons changé la loque pour avoir dans chaque sommet un tableau d'arete qui la compose.
 Donc la logique nous dit que chaque sommet à des aretes qui lui sont associés.
 
 */

void setup()
{

  Graphe g = saisie_graphe();



  afficherMatrice(adjacence(g));

  /*for (int i=0; i < g.lesAretes.size(); i++)
   {
   println("sommet "+g.lesAretes.get(i).initiale_1.numero +"de degre :" +g.lesAretes.get(i).initiale_1.degre);
   println("sommet "+g.lesAretes.get(i).finale_1.numero +"de degre :" +g.lesAretes.get(i).finale_1.degre);
   }*/

  g.afficher_detail();

  /* for(int i=0; i < g.n; i++)
   {
   println(3);
   }*/
}
