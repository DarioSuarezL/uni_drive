import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;
  final String routeName;


  const MenuItem({
    required this.title, 
    required this.subtitle,
    required this.link,
    required this.icon,
    required this.routeName
  });
}


const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Pasajero',
    subtitle: 'Viajar como pasajero',
    link: '/passenger',
    icon: Icons.person_add,
    routeName: 'passenger_screen'
  ),
  MenuItem(
    title: 'Conductor',
    subtitle: 'Definir ruta y publicar',
    link: '/driver',
    icon: Icons.drive_eta,
    routeName: 'driver_screen',
  ),
];