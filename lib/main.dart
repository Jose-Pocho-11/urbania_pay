// main.dart
import 'package:flutter/material.dart';
import 'package:urbania_pay/components/buttom_navegation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Urbania Pay',
      // Simplemente usa tu widget ButtomNavegation como la pantalla principal.
      // Este widget ya contiene todo lo necesario (Scaffold, TabBar, TabBarView).
      home: ButtomNavegation(), 
    );
  }
}
