import 'package:flutter/material.dart';

class Notas extends StatelessWidget {
  const Notas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('notas'),
        IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pushNamed(context, '/second');
      },
      ),
      ],
    );
  }
}