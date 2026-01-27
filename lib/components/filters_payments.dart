import 'package:flutter/material.dart';


class FiltersPayments extends StatefulWidget {
  const FiltersPayments({super.key});

  @override
  State<FiltersPayments> createState() => _FiltersPaymentsState();
}

class _FiltersPaymentsState extends State<FiltersPayments> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FilterChip(
          label: const Text("Mes"),
          avatar: const Icon(Icons.date_range, size: 18, color: Colors.blue),
          selected: selectedIndex == 0,
          selectedColor: Colors.blue,
          checkmarkColor: Colors.white,
          backgroundColor: Colors.grey.shade200,
          labelStyle: TextStyle(
            color: selectedIndex == 0 ? Colors.white : Colors.blue,
          ),
          onSelected: (bool selected) {
            setState(() {
              selectedIndex = selectedIndex == 0 ? null : 0;
            });
          },
        ),
        const SizedBox(width: 12),
        FilterChip(
          label: const Text("Estado de pago"),
          avatar: const Icon(Icons.monetization_on, size: 18,color: Colors.blue),
          selected: selectedIndex == 1,
          selectedColor: Colors.blue,
          checkmarkColor: Colors.white,
          backgroundColor: Colors.grey.shade200,

          labelStyle: TextStyle(
            color: selectedIndex == 1 ? Colors.white : Colors.blue,
          ),
          onSelected: (bool selected) {
            setState(() {
              selectedIndex = selectedIndex == 1 ? null : 1;
            });
          },
        ),
       
      ],
    );
  }
}