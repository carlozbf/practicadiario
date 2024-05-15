import 'package:flutter/material.dart';

class Consultas extends StatelessWidget {
  const Consultas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Consultas'),
        IconButton(
      icon: const Icon(Icons.query_builder),
      onPressed: () {
        Navigator.pushNamed(context, '/dblocal');
      },
      ),
              IconButton(
      icon: const Icon(Icons.data_usage_outlined),
      onPressed: () {
        Navigator.pushNamed(context, '/second');
      },
      ),
      
      ],
    );
  }
}