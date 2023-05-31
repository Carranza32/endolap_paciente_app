import 'package:endolap_paciente_app/src/controllers/TabController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<TabsController>(
      builder: (controller) => NavigationBar(
        selectedIndex: controller.currentIndex,
        onDestinationSelected: (i) => controller.setCurrentIndex(i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.date_range_outlined),
            label: 'Procedimiento',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_none_rounded),
            label: 'Notificaciones',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}