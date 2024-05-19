// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:semanal/database/database.dart';


class DBLocal extends StatefulWidget {
  const DBLocal({super.key});

  @override
  State<DBLocal> createState() => _DBLocalState();
}

class _DBLocalState extends State<DBLocal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DB Local'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('DB Local'),
            IconButton(
              onPressed: onPressed, 
            icon: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }

  void onPressed() async{
    print('Iniciando 123');

  WidgetsFlutterBinding.ensureInitialized();

  final database = AppDatabase();

  print('Tercero');

  // database.into(database.todoItems).insert(TodoItemsCompanion.insert(
  //       title: 'ULITMO INSERT',
  //       content: 'Este hermoso teclado suena bastante bien.',
  //     ));

  
  List<TodoItem> allItems = await database.select(database.todoItems).get();

  print('items in database: $allItems');
  print('FINALIZO');
  }
}