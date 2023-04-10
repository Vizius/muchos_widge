import 'package:flutter/material.dart';
import 'package:muchos_widge/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double valueslider = 100;
  bool sliderenable = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Zoom y Otros"),
      ),
      body: Column(
        children: [
        Slider.adaptive(
          min: 50,
          max: 400,
          activeColor: AppTheme.primaryColor,
          value: valueslider, 
          onChanged: sliderenable ?//pregunta de si esta en true sliderenable
          (value){
      
            
            setState(() {
              valueslider = value;
            });
      
          }:null,
          ),

          // Checkbox(
          //   value: sliderenable, 
          //   onChanged: (value){
          //     sliderenable = value ?? true;
          //     setState(() {
                
          //     });
          //   }
          // ),
          SwitchListTile(
            activeColor: AppTheme.primaryColor,
            title: const Text("Habilitar zoom"),
            value: sliderenable, 
            onChanged: ( value ) => setState(() { sliderenable = value; })
          ),

          const AboutListTile(), //licencias
      


          Expanded(
            child: SingleChildScrollView(
              child: Image(
               image: const NetworkImage("https://wallpaperaccess.com/full/3678503.png"),
               fit: BoxFit.contain,
               width: valueslider,
              ),
            ),
          ),
          
      ],),

      
    );
  }
}