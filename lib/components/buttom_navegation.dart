import 'package:flutter/material.dart';
import 'package:urbania_pay/screens/list_activity.dart';
import 'package:urbania_pay/screens/payments_screens.dart';
import 'package:urbania_pay/screens/urbania_home_screens.dart';

class ButtomNavegation extends StatefulWidget {
  const ButtomNavegation({super.key});

  @override
  State<ButtomNavegation> createState() => _ButtomNavegationState();
}

class _ButtomNavegationState extends State<ButtomNavegation>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // 1. Inicializa el TabController con la cantidad de pestañas (en este caso 3).
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 2. El cuerpo de la pantalla contendrá el TabBarView,
      //    que mostrará el contenido de cada pestaña.
      body: TabBarView(
        controller: _tabController,
        children: const [
          // Los widgets deben estar en el mismo orden que los tabs.
          UrbaniaHomeScreens(),
          PaymentsScreens(),
          ListActivity()
        ],
      ),
      // 3. El TabBar se coloca en la parte inferior.
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.blue,
          tabs: const [
            Tab(text: 'Inicio', icon: Icon(Icons.home)),
            Tab(text: 'Pagos', icon: Icon(Icons.payment)),
            Tab(text: 'Actividades', icon: Icon(Icons.list_alt)),
          ],
        ),
      ),
    );
  }
}