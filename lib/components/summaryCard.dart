import 'package:flutter/material.dart';
import 'package:urbania_pay/core/text_styles.dart';

// 1. Es un StatelessWidget, lo cual es correcto para este caso.
class SummaryCard extends StatelessWidget {
  final double income;
  final double expenses;

  const SummaryCard({
    super.key,
    required this.income,
    required this.expenses,
  });

  // 2. El método `build` va directamente aquí. No necesita una clase `State`.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [Row(children: [
            // 3. Las variables `income` y `expenses` se usan directamente.
            _infoCard("Ingresos", income),
            _infoCard("Gastos", expenses),
          ])],
        ),
      ),
    );
  }

  // 4. El método helper para crear las tarjetas de información.
  Expanded _infoCard(String type, double amount) {
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xffe9ecef),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(type, style: TextStyles.titleText),
                    Text("\$ ${amount.toStringAsFixed(2)}",
                        style: TextStyles.bodyText)
                  ]),
            ),
          )),
    );
  }
}