import 'package:flutter/material.dart';
import 'package:todo_app/screens/widgets_sreen.dart';

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key});

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  var appTitle = "Mon program";

  @override
  Widget build(BuildContext context) {
    // recuperer la taille de l'ecran
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appTitle,
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.info,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
          height: screenHeight,
          width: screenWidth,
          color: const Color.fromARGB(255, 235, 235, 235),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Bienvenue, ajouter une tache",
                style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
              ),
              MaterialButton(
                color: Colors.white,
                elevation: 3.0,
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (_) => const WidgetScreen()
                    )
                  );
                  
                },
                child: const Text(
                  'Ouvrir l\'ecran des Widgets',
                  style: TextStyle(color: Colors.orange),
                ),
              ),

              const Divider(
                height: 20,
              ),
              // afficher des element sur une ligne
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // aficher au centre
                children: const [Text('bonjour'), Icon(Icons.person)],
              ),
            ],
          )),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      //bottomNavigationBar: BottomNavigationBar(),
    );
  }
}
