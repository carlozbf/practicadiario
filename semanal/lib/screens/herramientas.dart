// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:semanal/screens/pages/herramientas/calculadora.dart';

import 'pages/herramientas/otros.dart';
import 'pages/herramientas/translator.dart';
import 'pages/notas.dart';
import 'pages/paginauno.dart';
import 'pages/personal.dart';

class Herramientas extends StatefulWidget {
  const Herramientas({super.key});

  @override
  State<Herramientas> createState() => _HerramientasState();
}

class _HerramientasState extends State<Herramientas> {
  int otro = 0;
  int _selectedIndex = 0;

List paginas = [
  Calculadora(),
  Translator(),
  Otros(),
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Herramientas'),

      ),
      body: paginas[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculadora',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.translate),
            label: 'Traductor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tablet_android),
            label: 'Otros',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 47, 131, 215),
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    if (index == 4) {
      //Navigator.pushNamed(context, routeName);
      print('nada por ahora');
    } else{
    _selectedIndex = index;
    setState(() { }
    );
    }
  }


}
