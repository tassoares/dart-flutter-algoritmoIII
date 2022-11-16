import 'package:flutter/material.dart';
import 'package:store/main.dart';
import 'package:store/pages/home.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class People extends StatelessWidget {
  const People({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
            body: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget> [
                      const SizedBox(height: 35,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [BoxShadow(
                            color: Color.fromARGB(252, 0, 0, 0),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          )]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey)),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: "Marca",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey)),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: "Produto",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text("Para mais informações", style: TextStyle(color: Colors.grey),),
                      const SizedBox(height: 20,),
                      //Estruturação do Botão de entrada 
                      InkWell(
                        child: Row(
              children: const [
                // Adiciona
                Padding(
                  padding: EdgeInsets.only(bottom: 20, left: 10),
                  child: ElevatedButton(
                    onPressed: null,
                    child: Icon(Icons.add),
                  ),
                ),
                // Remove
                Padding(
                  padding: EdgeInsets.only(bottom: 20, left: 10),
                  child: ElevatedButton(
                      onPressed: null,
                      child: Icon(Icons.remove),
                    ),
                ),
                // Pesquisa
                Padding(
                  padding: EdgeInsets.only(bottom: 20, left: 10),
                  child: ElevatedButton(
                      onPressed: null,
                      child: Icon(Icons.search),
                    ),
                ),
              ],
            ),
                        onTap: () { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                        },
                      ),
                    ],
                  ),
            ),);
    
  }
}