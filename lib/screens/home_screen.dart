import 'package:flutter/material.dart';


import 'package:muchos_widge/routes/app_routes.dart';
import 'package:muchos_widge/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  

  const HomeScreen({Key? key}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {
    final menuOp = AppRoutes.menuOption;
    const colore = AppTheme.primaryColor;

    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          title: Text(menuOp[index].name),
          leading:  Icon(menuOp[index].icon, color:colore,),
          trailing: const Icon(Icons.arrow_forward_ios, color: colore,),
          onTap: () {

            
            Navigator.pushNamed(context, menuOp[index].route);

            //final route = MaterialPageRoute(builder: (context) => const ListView2Screen());
            //Navigator.pushReplacement(context, route);
          },
        ), 
        separatorBuilder:(_, __) => const Divider() , 
        itemCount: AppRoutes.menuOption.length
        )
    );
  }
}