import 'package:flutter/material.dart';

class Paginauno extends StatefulWidget {
  const Paginauno({super.key});

  @override
  State<Paginauno> createState() => _PaginaunoState();
}

class _PaginaunoState extends State<Paginauno> {
  int contador = 0;

  void _incrementCounter() {
    setState(() {
      contador++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          children: [const Text('Iniciando'),
          Text('$contador'),
          IconButton(onPressed: _incrementCounter, 
          icon: const Icon(Icons.add_circle_outline),
          
          ),
          ],
        ),
      );
  }
}