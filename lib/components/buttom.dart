import 'package:flutter/material.dart';
import 'package:urbania_pay/screens/payments_screens.dart';
import 'package:urbania_pay/screens/register_activity.dart';
import 'package:urbania_pay/screens/register_pay_screens.dart';

// Un widget simple y reutilizable para tu botón.
class CustomButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.label,
    required this.backgroundColor,
    required this.foregroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
          ),
          child: Text(label),
        ),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          label: "Registrar Pago",
          backgroundColor: const Color.fromARGB(255, 29, 112, 255),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () {
            // Lógica para el botón "Registrar Pago"
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPayScreens()),);
          },
        ),
        const SizedBox(width: 8),
        CustomButton(
          label: "Nueva Actividad",
          backgroundColor: const Color(0xffe9ecef),
          foregroundColor: const Color.fromARGB(255, 0, 0, 0),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterActivity()),);
          },
        ),
      ],
    );
  }
}