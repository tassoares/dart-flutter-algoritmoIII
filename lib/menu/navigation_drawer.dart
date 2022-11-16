import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:store/menu/drawer_item.dart';
import 'package:store/login_screen.dart';
import 'package:store/pages/people.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(height: 40,),
              const Divider(thickness: 1, height: 10, color: Colors.grey,),
              const SizedBox(height: 40,),
              //Itens do Menu
              DrawerItem(
                name: 'Destaques', 
                icon: Icons.highlight, 
                onPressed: ()=> onItemPressed(context, index: 0),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Departamentos', 
                icon: Icons.list_alt, 
                onPressed: ()=> onItemPressed(context, index: 0),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Meus pedidos', 
                icon: Icons.indeterminate_check_box_sharp, 
                onPressed: ()=> onItemPressed(context, index: 0),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Notificações', 
                icon: Icons.notifications, 
                onPressed: ()=> onItemPressed(context, index: 0),
              ),
              const SizedBox(height: 30,),
              const Divider(thickness: 1, height: 10, color: Colors.grey,),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Configurações', 
                icon: Icons.settings, 
                onPressed: ()=> onItemPressed(context, index: 0),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                name: 'Faça Login', 
                icon: Icons.login, 
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}){
    Navigator.pop(context);

    switch (index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const People()));
        break;
      default:
        Navigator.pop(context);
        break;
    }
  }

  Widget headerWidget(){
    const url = 'https://i.fbcd.co/products/original/667ca7502e4e218f01e4fbb26e01e2fc7fe17370f64bf444f60818b9d1b2c2b2.jpg';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Store Web', style: TextStyle(fontSize: 24, color: Colors.white),),
          ],
        ),
      ],
    );
  }
}