import 'package:flutter/material.dart';
import 'package:urbania_pay/components/filters_payments.dart';
import 'package:urbania_pay/components/item_payments.dart';

class PaymentsScreens extends StatefulWidget {
  const PaymentsScreens({super.key});

  @override
  State<PaymentsScreens> createState() => _PaymentsScreensState();
}

class _PaymentsScreensState extends State<PaymentsScreens> {
  @override
  Widget build(BuildContext context) {
    // 1. Envuelve el contenido en un Scaffold
    return Scaffold(
      // 2. Coloca el AppBar en la propiedad 'appBar' del Scaffold
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          "Pagos",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      // 3. El resto de los widgets van en la propiedad 'body'
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 16),
                  child: Text("Filtros",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: FiltersPayments(),
            ),
            // Se recomienda usar Expanded o un ListView aquí si el contenido es dinámico
            const ItemPayments() 
          ],
        ),
      ),
    );
  }
}