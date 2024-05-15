// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'pages/consultas/consultaspage.dart';
import 'pages/notas.dart';
import 'pages/paginauno.dart';
import 'pages/personal.dart';

class Inicial extends StatefulWidget {
  const Inicial({super.key});

  @override
  State<Inicial> createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  int otro = 0;
  int _selectedIndex = 0;

List paginas = [
  Paginauno(),
  Notas(),
  Consultas(),
  Notas(),
  Personal(),
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prinicipal'),
        centerTitle: true,
      ),
      body: paginas[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Notas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tablet_android),
            label: 'Consultas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Herramientas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Personal',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 47, 131, 215),
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    if (index == 3) {
      Navigator.pushNamed(context, '/herramientas');
    } else{
    _selectedIndex = index;
    setState(() { }
    );
    }
  }


}
