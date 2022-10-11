import 'package:flutter/material.dart';
import 'package:store/navigation_drawer.dart';

void main() {
  runApp(const MaterialApp(
    home: Home (),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Botão de navegação do Menu
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Store Web'),
        centerTitle: true,
        backgroundColor: Colors.black,
        //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
      body: Center(
        child: SizedBox(
          height: 50, 
          width: MediaQuery.of(context).size.width - 100,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: () {},
            icon: const Icon(Icons.open_in_new, color: Colors.white),
            label: const Text(
              'Open Menu',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

