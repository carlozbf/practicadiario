import 'package:flutter/material.dart';
import 'package:semanal/screens/inicial.dart';

import 'screens/consultas.dart';

void main(List<String> args) {
  runApp(const MyAppSemana());
}


class MyAppSemana extends StatelessWidget {
  const MyAppSemana({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicial',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
    '/': (context) => const Inicial(),
    '/second': (context) => const Consultas(),
  },
      //home: Inicial(),
    );
  }
}