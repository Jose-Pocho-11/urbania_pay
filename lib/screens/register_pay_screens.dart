import 'package:flutter/material.dart';

class RegisterPayScreens extends StatefulWidget {
  const RegisterPayScreens({super.key});

  @override
  State<RegisterPayScreens> createState() => _RegisterPayScreensState();
}

class _RegisterPayScreensState extends State<RegisterPayScreens> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          "Registrar Pago",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre de usuario',labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Escribe tu nombre',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(height: 10),

            GestureDetector(
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: _selectedDate,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  setState(() {
                    _selectedDate = pickedDate;
                  });
                }
              },

              child: AbsorbPointer(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Fecha del pago', labelStyle: TextStyle(color: Colors.black),
                      hintText: 'Fecha del pago',
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                      prefixIcon: Icon(Icons.calendar_month),
                    ),
                    controller: TextEditingController(
                      text: "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}",
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Mes del Condominio Aplicable' ,labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
                prefixIcon: Icon(Icons.edit_calendar),
              ),
              items: [
                'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
                'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
              ].map((mes) => DropdownMenuItem(
                value: mes,
                child: Text(mes),
              )).toList(),
              onChanged: (value) {
                // Guarda el valor seleccionado en tu estado si lo necesitas
              },
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Monto del pago' ,labelStyle: TextStyle(color: Colors.black),
                  hintText: 'Monto del pago',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                  ),
                  prefixIcon: Icon(Icons.money),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Expanded(child: Container(
              color: Colors.white,
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  // Lógica para registrar el pago
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 29, 112, 255),
                  // Color de fondo del botón
                  minimumSize: Size(double.infinity, 50),// Botón ancho completo
                ),
                child: Text('Registrar Pago', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            )),

          ],
        ),
      ),
    );
  }
}