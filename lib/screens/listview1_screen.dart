import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class ListView1Screen extends StatelessWidget {

  final option = const["lista 1","lista 2","lista 3","lista 4"];
  static const colore2 = AppTheme.primaryColor;
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("listas"),
      ),
      body: ListView(
        
        children:  [

          ...option.map(
            (game) => ListTile(
              title: Text(game), 
              trailing: Icon(Icons.keyboard_arrow_right_outlined, color: colore2,),
              
              )
            ).toList(),
            
          
        ],
      )
    );
  }
}