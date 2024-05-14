import 'package:flutter/material.dart';

class Segunda extends StatelessWidget {
  const Segunda({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('segunda pagina'),
      IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pushNamed(context, '/');
      },
      ),
      ],
    );
  }
}