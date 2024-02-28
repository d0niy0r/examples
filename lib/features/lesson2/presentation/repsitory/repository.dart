import 'package:flutter/material.dart';

class Repository {
  final IconData icon;
  final String title;
  final Color color; // Define the color property

  Repository({
    required this.color,
    required this.title,
    required this.icon,
  });

  static final List<Repository> list = [
    Repository(
      color: Colors.yellow,
      title: "Profile",
      icon: Icons.person_2_outlined,
    ),
    Repository(
      color: Colors.red,
      title: "My group",
      icon: Icons.group,
    ),
    Repository(
      color: Colors.green,
      title: "Settings",
      icon: Icons.settings,
    ),
    Repository(
      color: Colors.blueAccent,
      title: "Cash history",
      icon: Icons.real_estate_agent_outlined,
    ),
  ];
}
