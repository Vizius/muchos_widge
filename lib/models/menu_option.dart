
import 'package:flutter/Material.dart' show IconData;
import 'package:flutter/cupertino.dart';

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption({
    required this.route, 
    required this.icon, 
    required this.name, 
    required this.screen
    });
}