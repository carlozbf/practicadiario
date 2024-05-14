import 'package:flutter/material.dart';
import 'package:semanal/screens/inicial.dart';

void main(List<String> args) {
  runApp(MyAppSemana());
}


class MyAppSemana extends StatelessWidget {
  const MyAppSemana({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Inicial',
      home: Inicial(),
    );
  }
}