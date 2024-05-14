// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Inicial extends StatefulWidget {
  const Inicial({super.key});

  @override
  State<Inicial> createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  int contador = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciando'),

      ),
      body: Center(
        child: Column(
          children: [Text('Iniciando'),
          Text('$contador'),
          ],
        ),
      ),
      //bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}