import 'package:flutter/material.dart';
import 'package:store/pages/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.black87,
              Color.fromARGB(188, 28, 27, 27),
              Color.fromARGB(255, 0, 0, 0),
            ]
          ),
        ),
        child: ListView(
          shrinkWrap: true, //extensão da visualização de rolagem
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            const SizedBox(height: 200,),
            Padding(padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget> [
                Text("Store Web", style: TextStyle(color: Colors.white, fontSize: 40),),
                SizedBox(height: 10,),
                Text("Oi, bem vindo de volta!", style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
            ),
            const SizedBox(height: 50,),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60),),
                ),
                //Caixa de escrita do login
                child: Padding(
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
                                  hintText: "Email",
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
                                  hintText: "Senha",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text("Esqueceu seus dados de login?", style: TextStyle(color: Colors.grey),),
                      const SizedBox(height: 20,),
                      //Estruturação do Botão de entrada 
                      InkWell(
                        child: Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black
                          ),
                          child: const Center(                    
                            child: Text("Entrar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        onTap: () { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}