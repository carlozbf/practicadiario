import 'package:dbprovider/database/database.dart';
import 'package:flutter/material.dart';

class GlobalP with ChangeNotifier {
  int _contador = 0;
  final db = AppDatabase();

  void incrementar() {
    _contador++;
    notifyListeners();
  }

  int get contador => _contador;

  void decrementar() {
    _contador--;
    notifyListeners();
  }

  void reiniciar() {
    _contador = 0;
    notifyListeners();
  }

  void incrementarPor(int valor) {
    _contador += valor;
    notifyListeners();
  }
}
