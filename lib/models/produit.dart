class Produit {
  int id;
  String nom;
  double prix;

  Produit({
    required this.id, 
    required this.nom, 
    required this.prix
  });

   static  List<Produit> products = [
    Produit(
       id: 0,
      nom: 'Pomme',
      prix: 250
      ),
      Produit(
       id: 1,
      nom: 'Orange',
      prix: 125
      ),
       Produit(
       id: 0,
      nom: 'Banane',
      prix: 100
      ),
   
  ];

}
