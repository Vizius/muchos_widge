import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  //Alerta IOS
  void displaydialogIos(BuildContext context){

    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text("AVISO"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
            Text("YA PASO EL 18"),
            SizedBox(height: 10),
            FadeInImage(
              image: NetworkImage("https://scontent.fzal1-1.fna.fbcdn.net/v/t39.30808-6/242365214_605746464169728_115480320539785484_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGkc22Rtev39DPUTYgJms4ex-b42VaGc0bH5vjZVoZzRvCQGqupzapW4cSvHYOOEJY0f2z3kCMrQBC7Gf5H0DKh&_nc_ohc=aHRHuNsvOKEAX-q1Tc5&_nc_oc=AQmnvKIM7170F3Wp7_1te_XeDAqnkGNRZZTC0QDWzn8BUONjINysV_6-NfiqC3jZnr0&tn=aOqhSMdjawnuRx62&_nc_ht=scontent.fzal1-1.fna&oh=00_AT94gCEI6EqlpAe9Z27lduZpkX2ACEcSrbOIuwThIQ_8pA&oe=635F2DD5"), 
              placeholder:  AssetImage("assets/loadpictures.gif"),
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 50),
            ),
          ]),
          actions: [
            TextButton(onPressed: (){

              Navigator.pop(context);

            }, child: const Text("cancelar", style: TextStyle(color: Colors.red),)),
            TextButton(onPressed: (){

              Navigator.pop(context);

            }, child: const Text("Ok"))
          ],
        );
        
        

      }
    );
  }

  //alert dialogo Android
  void displaydialogAndroid(BuildContext context){

    showDialog(
      //presionando la sombre se cierra con la siguiente linea
      barrierDismissible: false,
      //----
      context: context, 
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
          ),
          elevation: 5,
          title:  const Text("AVISO"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
            Text("YA PASO EL 18"),
            SizedBox(height: 10),
            FadeInImage(
              image: NetworkImage("https://scontent.fzal1-1.fna.fbcdn.net/v/t39.30808-6/242365214_605746464169728_115480320539785484_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGkc22Rtev39DPUTYgJms4ex-b42VaGc0bH5vjZVoZzRvCQGqupzapW4cSvHYOOEJY0f2z3kCMrQBC7Gf5H0DKh&_nc_ohc=aHRHuNsvOKEAX-q1Tc5&_nc_oc=AQmnvKIM7170F3Wp7_1te_XeDAqnkGNRZZTC0QDWzn8BUONjINysV_6-NfiqC3jZnr0&tn=aOqhSMdjawnuRx62&_nc_ht=scontent.fzal1-1.fna&oh=00_AT94gCEI6EqlpAe9Z27lduZpkX2ACEcSrbOIuwThIQ_8pA&oe=635F2DD5"), 
              placeholder:  AssetImage("assets/loadpictures.gif"),
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 50),
            ),
          ]),
          actions: [
            TextButton(onPressed: (){

              Navigator.pop(context);

            }, child: const Text("cancelar", style: TextStyle(color: Colors.red),)),
            TextButton(onPressed: (){

              Navigator.pop(context);

            }, child: const Text("Ok"))
          ],
        );

      }
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Alertas"),
    
      ),
      body:  Center(


        child: ElevatedButton(

          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal:20, vertical: 15),
            child: Text("Mostrar alerta", style: TextStyle(fontSize: 20),),
          ),
          onPressed: (){
            !Platform.isAndroid ? 
            displaydialogAndroid(context):
            displaydialogIos(context);

          }
        ),
      ),


      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        }
        ),


    );
  }
}