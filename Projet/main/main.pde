<<<<<<< HEAD
//<>// //<>//
=======
//<>// //<>// //<>//
>>>>>>> v1
void setup()
{

  Graphe g = saisie_graphe();

<<<<<<< HEAD
  for (int i=0; i < g.lesAretes.length; i++)
  {
    //g.lesAretes[i].initial.getVoisins();
    
    println(g.lesAretes[i].initial.getVoisins().size());
    println(g.lesAretes[i].finale.getVoisins().size()); //<>//
    //println("voisin taille :"+g.lesAretes[i].sommets[1].getVoisins().size());

    //println("init :"+deg1, "finale: "+deg2);
=======
  for (int i=0; i < g.lesSommets.length; i++)
  {

    //ArrayList<Sommet> voisins = g.lesAretes[i].initial.getVoisins();

    println("Je suis "); //<>//

    // println(voisins.size());
    //println(g.lesAretes[i].finale.getVoisins().size());
>>>>>>> v1
  }
}
