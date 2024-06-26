import 'package:flutter/material.dart';
import 'package:prova_animations/exercicios_page.dart';
import 'package:prova_animations/metas_page.dart';
import 'package:prova_animations/notifications_page.dart';
import 'package:prova_animations/perfil_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _index = 0;
  List<Widget> telas = [
    PerfilPage(),
    ExerciciosPage(),
    MetasPage(),
    NotificationsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple,
        onTap: (int index){
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.white,), label: "Perfil"),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center, color: Colors.white,), label: "Exercicios"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt, color: Colors.white,), label: "Metas"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications, color: Colors.white,), label: "Notificações"),
        ],
      ),
      body: telas[_index],
    );
  }
}
