import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/global_provider.dart';
import 'screens/inicial.dart';

void main(List<String> args) async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GlobalP()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicial(),
      },
    );
  }
}
