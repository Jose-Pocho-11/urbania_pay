import 'package:flutter/material.dart';
import 'package:urbania_pay/components/buttom.dart';
import 'package:urbania_pay/components/summaryCard.dart';
import 'package:urbania_pay/components/balanceCard.dart';
import 'package:urbania_pay/core/text_styles.dart';
import 'package:urbania_pay/components/recentTransactions.dart';

class UrbaniaHomeScreens extends StatefulWidget {
  
  const UrbaniaHomeScreens({super.key});

  @override
  State<UrbaniaHomeScreens> createState() => _UrbaniaHomeScreensState();
}

class _UrbaniaHomeScreensState extends State<UrbaniaHomeScreens> {
  // 1. Centralizamos el estado aquí.
  // Estos valores podrían venir de una API o base de datos en el futuro.
  final double _income = 2500.75;
  final double _expenses = 1350.50;

  @override
  Widget build(BuildContext context) {
    final double balance = _income - _expenses;

    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco para toda la pantalla
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              title: Text("Resumen Financiero", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              centerTitle: true,
            ),
            SummaryCard(income: _income, expenses: _expenses),
            BalanceCard(balance: balance),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Acciones", style: TextStyles.titleText,),
                  ButtonRow(),
                ],
              ),
            ),
           
            ListView( 
              shrinkWrap: true, // Hace que el ListView tome solo el espacio necesario
              physics: NeverScrollableScrollPhysics(), // Desactiva el desplazamiento interno
              children:[
              Recenttransactions()]),
          ],
        ),
      ),
    );
  }
}