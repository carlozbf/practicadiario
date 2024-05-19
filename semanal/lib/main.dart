import 'package:flutter/material.dart';
import 'package:semanal/screens/inicial.dart';

// import 'database/database.dart';
import 'screens/consultas.dart';
import 'screens/herramientas.dart';
import 'screens/pages/consultas/dblocal.dart';

//variable Global
//late AppDatabase database;

void main(List<String> args) {

  //variable Global
  //database = MyDatabase();
  //AppDatabase database;
  //WidgetsFlutterBinding.ensureInitialized();

  //database = AppDatabase();
  runApp(const MyAppSemana());
}


class MyAppSemana extends StatelessWidget {
  const MyAppSemana({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inicial',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
    '/': (context) => const Inicial(),
    '/second': (context) => const Consultas(),
    '/herramientas': (context) => const Herramientas(),
    '/dblocal': (context) => const DBLocal(),
  },
      //home: Inicial(),
    );
  }
}