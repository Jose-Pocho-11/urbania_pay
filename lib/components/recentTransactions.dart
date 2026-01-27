import 'package:flutter/material.dart';

class Recenttransactions extends StatefulWidget {
  const Recenttransactions({super.key});

  @override
  State<Recenttransactions> createState() => _RecenttransactionsState();
}

class _RecenttransactionsState extends State<Recenttransactions> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Text("Transacciones Recientes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        ),
        ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 123, 125, 126).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.notifications, color: Colors.blue),
          ),
          title: Text("Compra en Supermercado"),
          subtitle: Text("12 de Octubre, 2023"),

        ),
        ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 123, 125, 126).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.notifications, color: Colors.green),
          ),
          title: Text("Cena en Restaurante"),
          subtitle: Text("10 de Octubre, 2023"),

        ),
        ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 123, 125, 126).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.notifications, color: Colors.orange),
          ),
          title: Text("Salario Mensual"),
          subtitle: Text("1 de Octubre, 2023"),
        ),
        

        
      ],
      
    );
  }
}