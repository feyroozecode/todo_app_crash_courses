import 'package:flutter/material.dart';
import 'package:todo_app/models/produit.dart';

class WidgetScreen extends StatefulWidget {
  const WidgetScreen({super.key});

  @override
  State<WidgetScreen> createState() => _WidgetScreenState();
}

class _WidgetScreenState extends State<WidgetScreen> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    List<Produit> products = [
      Produit(id: 0, nom: 'Ordi HP 15', prix: 150000),
      Produit(id: 1, nom: 'Iphone x', prix: 170000),
      Produit(id: 2, nom: 'Techno Spark 9', prix: 85000),
    ];

    List<Widget> screens = [
      SizedBox(
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (_, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text(products[index].id.toString()),
                  ),
                  title: Text(products[index].nom),
                  subtitle: Text('Prix ${products[index].prix}'),
                  trailing: IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(
                            SnackBar(
                              content: Text(
                              '${products[index].nom} ajouter au panier'), 
                              duration: const Duration(seconds: 5),
                             
                            )
                          );
                    },
                    icon: const Icon(Icons.add, size: 25),
                  )))),
      const SizedBox(
        child: Text('Favoris'),
      ),
      const SizedBox(
        child: Text('Notifications'),
      ),
      const SizedBox(
        child: Text('Parametre'),
      )
    ];

    var screensColors = [
      Colors.orange,
      Colors.blue,
      Colors.yellow,
      Colors.green
    ];

    var titles = ['Produits', 'Favoris', 'Notifications', 'Parametre'];

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: screensColors[selectedItem],
        title: Text(titles[selectedItem]),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
          color: screensColors[selectedItem],
          child: Center(
            child: screens[selectedItem],
          )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: updateSelectedItem,
        currentIndex: selectedItem,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.black87,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              label: 'Favoris'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              label: 'Notifications'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'Parametre'),
        ],
      ),
    );
  }

  updateSelectedItem(int index) {
    setState(() {
      selectedItem = index;
    });
  }
}
