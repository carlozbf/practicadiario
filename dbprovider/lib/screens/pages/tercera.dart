import 'package:dbprovider/database/database.dart';
import 'package:dbprovider/providers/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tercera extends StatelessWidget {
  const Tercera({super.key});

  Future<void> probar() async {
    // ignore: avoid_print
    print('hola123');
  }

  void probardb(AppDatabase db) async {
    var allItems = await db.select(db.todoItems).get();
    // ignore: avoid_print
    print('items in database: $allItems');
  }

  @override
  Widget build(BuildContext context) {
    final uno = context.watch<GlobalP>().contador;
    final db = context.read<GlobalP>().db;

    return Column(
      children: [
        const Text('Database'),
        ElevatedButton(onPressed: probar, child: const Text('probando')),
        Text('$uno'),
        ElevatedButton(
            onPressed: () {
              probardb(db);
            },
            child: const Text('probando DB')),
      ],
    );
  }
}
