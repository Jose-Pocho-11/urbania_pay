# 🏙️ Prototipo de App Móvil para Gestión de Pagos Urbanísticos (Flutter)

**Urbania Pay** es el diseño y maquetación de una billetera digital (Fintech) enfocada en la administración de pagos residenciales y servicios urbanos. Este proyecto presenta una arquitectura de interfaz moderna y navegable desarrollada con **Flutter**.

> ⚠️ **Estado del Proyecto:** Fase de Maquetación (Frontend). Actualmente, la aplicación cuenta con las vistas y la navegación implementadas, listas para su futura integración con servicios backend.

## 📋 Descripción

El objetivo de este proyecto es establecer la experiencia de usuario (UX/UI) para una plataforma de gestión de condominios. La aplicación permite visualizar saldos, registrar pagos de servicios y consultar historiales de actividad mediante una interfaz limpia y componentes personalizados.

## ✨ Vistas Implementadas

El proyecto cuenta con la estructura visual de los siguientes módulos:

* **🏠 Dashboard Principal (`UrbaniaHomeScreen`):** Pantalla de inicio que muestra el resumen de saldo mediante tarjetas personalizadas y accesos rápidos.
* **💸 Gestión de Pagos (`PaymentsScreens` y `RegisterPayScreens`):** Flujo de interfaz para la selección de servicios y formularios de registro de nuevos pagos.
* **historial de Actividad (`ListActivity`):** Listado visual de transacciones pasadas con opciones de filtrado.
* **➕ Registro de Actividad (`RegisterActivity`):** Pantalla para añadir manualmente actividades o notas al historial.

## 🛠️ Tecnologías y Arquitectura

* **Framework:** Flutter (Dart).
* **Diseño:** Implementación de componentes visuales reutilizables (Widgets).
* **Estructura del Código:**
    * `lib/screens`: Pantallas principales de la aplicación.
    * `lib/components`: Widgets modulares como `BalanceCard`, `SummaryCard` y `ButtomNavegation`.
    * `lib/core`: Definiciones globales de estilo (`AppColors`, `TextStyles`).

## 📂 Estructura de Directorios

```text
lib/
├── components/          # Widgets reutilizables (Botones, Tarjetas, Filtros)
│   ├── balanceCard.dart
│   ├── summaryCard.dart
│   └── recentTransactions.dart
├── core/                # Estilos y configuraciones (Colores, Texto)
├── screens/             # Vistas de la aplicación
│   ├── urbania_home_screens.dart
│   ├── payments_screens.dart
│   └── list_activity.dart
└── main.dart            # Punto de entrada
