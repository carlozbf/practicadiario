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
    // ignore: avoid_print
    print('Iniciando 23');

  WidgetsFlutterBinding.ensureInitialized();

  final database = AppDatabase();

  await database.into(database.todoItems).insert(TodoItemsCompanion.insert(
        title: 'todo: finish drift setup',
        content: 'We can now write queries and define our own tables.',
      ));
  List<TodoItem> allItems = await database.select(database.todoItems).get();

  print('items in database: $allItems');
  }
}