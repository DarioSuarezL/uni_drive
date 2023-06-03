import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;


  const MenuItem({
    required this.title, 
    required this.subtitle,
    required this.link,
    required this.icon
  });
}


const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Viajar',
    subtitle: 'Viajar como acompañante',
    link: '/drive',
    icon: Icons.person_add,
  ),
  MenuItem(
    title: 'Transportar',
    subtitle: 'Definir ruta y publicar',
    link: '/transport',
    icon: Icons.drive_eta
  ),
];