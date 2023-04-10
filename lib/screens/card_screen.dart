import 'package:flutter/material.dart';

import 'package:muchos_widge/routes/app_routes.dart';
import 'package:muchos_widge/widget/widgets.dart';

class CardScreen extends StatelessWidget {
  
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOp = AppRoutes.menuOption;
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
    
      ),
      body: ListView(
        
        padding: const EdgeInsets.symmetric( horizontal :20 ,vertical: 10),
        children:  [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CustomCardtipo1(),
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, menuOp[3].route);
            },
            child: const CustomCardtipo2(imageUrl: "https://cdnb.artstation.com/p/assets/images/images/024/538/827/original/pixel-jeff-clipa-s.gif?1582740711",textUrl:"Cyberpunk" ,),
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child:const CustomCardtipo2(imageUrl: "https://cdnb.artstation.com/p/assets/images/images/039/344/923/original/pixel-jeff-jujutsu-kaisen2.gif?1625634590",textUrl: "Jujutsu"),

          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CustomCardtipo2(imageUrl: "https://cdna.artstation.com/p/assets/images/images/035/589/978/original/pixel-jeff-dream2.gif?1615369313",),

          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CustomCardtipo2(imageUrl: "https://cdnb.artstation.com/p/assets/images/images/018/056/189/large/pixel-jeff-pokemon.jpg?1558280397",textUrl:"Pokemón")
,
          ),
          
          

          
        ],
      )
    );
  }
}

