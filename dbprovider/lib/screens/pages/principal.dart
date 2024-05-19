import 'package:dbprovider/providers/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Principal'),
          Text('${context.watch<GlobalP>().contador}'),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: context.read<GlobalP>().incrementar,
              child: const Text('aumentar')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: context.read<GlobalP>().decrementar,
              child: const Text('disminuir')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: context.read<GlobalP>().reiniciar,
              child: const Text('resetear')),
        ],
      ),
    );
  }
}
