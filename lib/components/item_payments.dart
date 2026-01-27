import 'package:flutter/material.dart';

class ItemPayments extends StatefulWidget {
  const ItemPayments({super.key});

  @override
  State<ItemPayments> createState() => _ItemPaymentsState();
}

class _ItemPaymentsState extends State<ItemPayments> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("Pago de mantenimiento"),
          subtitle: Text("15 de Marzo, 2024"),
        ),ListTile(
          title: Text("Pago de mantenimiento"),
          subtitle: Text("15 de Marzo, 2024"),
        ),ListTile(
          title: Text("Pago de mantenimiento"),
          subtitle: Text("15 de Marzo, 2024"),
        ),ListTile(
          title: Text("Pago de mantenimiento"),
          subtitle: Text("15 de Marzo, 2024"),
        ),
        
       
      ],
    );
  }
}