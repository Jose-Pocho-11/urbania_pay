import 'package:flutter/material.dart';
import 'package:urbania_pay/core/text_styles.dart';

class BalanceCard extends StatelessWidget {
  final double balance;
  
  
  const BalanceCard({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
      child: Container(
        height: 100,
        
        width: double.infinity,
        decoration: BoxDecoration(
          
          color: const Color(0xffe9ecef),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Balance",
                style: TextStyles.titleText, // Asumiendo que esta clase existe
              ),
              Text(
                "\$ ${balance.toStringAsFixed(2)}",
                style: TextStyles.bodyText, // Asumiendo que esta clase existe
              )
            ],
          ),
        ),
      ),
    );
  }
}