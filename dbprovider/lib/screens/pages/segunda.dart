import 'package:dbprovider/providers/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Segunda extends StatelessWidget {
  const Segunda({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Segunda'),
        Text('${context.watch<GlobalP>().contador}'),
        TextFormField(onChanged: (value) {
          context.read<GlobalP>().incrementarPor(int.parse(value));
        })
      ],
    );
  }
}
