import 'package:flutter/material.dart';
import 'package:store/menu/navigation_drawer.dart';

//Pagina Inicial
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
          child: Column(
            children: [
              Image.asset("images/bag.jpg", height: 250,),
              const Text('Hora das compras', style: TextStyle(color: Colors.black, fontSize: 20),),
            ],
          ),
        ),
      ),
      //backgroundColor: Colors.black,
    );
  }
}