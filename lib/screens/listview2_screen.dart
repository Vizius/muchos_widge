import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class ListView2Screen extends StatelessWidget {

  final option = const["lista 1","lista 2","lista 3","lista 4"];
  static const colore3 = AppTheme.primaryColor;
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("listas 2"),
    
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title:Text(option[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: colore3,),
          onTap: (){

          final game = option[index];
          print(game);

          },
          ), 
        separatorBuilder:  (_, __) => const Divider(), 
        itemCount: option.length
        
      )
    );
  }
}