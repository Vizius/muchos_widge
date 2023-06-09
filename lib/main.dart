import 'package:flutter/material.dart';

import 'package:muchos_widge/routes/app_routes.dart';
import 'package:muchos_widge/themes/app_theme.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),

      theme: AppTheme.lighTheme
    );
  }
}